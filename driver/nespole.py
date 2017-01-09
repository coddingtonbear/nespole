import time

import argparse
import fs9721
import serial


class NespoleDriver(object):
    PORTB = 'B'
    PORTD = 'D'
    INTERNAL_MSB = 'I'
    INTERNAL_LSB = 'J'
    EXTERNAL_MSB = 'X'
    EXTERNAL_LSB = 'Y'

    MESSAGE_NAME_MAP = {
        PORTB: 'PORTB',
        PORTD: 'PORTD',
        INTERNAL_MSB: 'INTERNAL_MSB',
        INTERNAL_LSB: 'INTERNAL_LSB',
        EXTERNAL_MSB: 'EXTERNAL_MSB',
        EXTERNAL_LSB: 'EXTERNAL_LSB',
    }

    def __init__(self, port, multimeter, target_temperature, margin):
        self.controller_port = serial.Serial(port, 9600)
        self.multimeter = fs9721.Client(multimeter)
        self.target_temperature = target_temperature
        self.margin = margin

        self.heater_on = False

    def get_message(self):
        value = self.controller_port.readline().rstrip()
        if not value:
            return None, None

        tpe = value[0]
        try:
            value = ord(value[1])
        except IndexError:
            value = 0
        return (tpe, value, )

    def print_message(self, tpe, value):
        try:
            as_binary = format(value, '#010b')
            as_hex = hex(value)
            as_int = int(value)
        except:
            as_binary = None
            as_hex = None
            as_int = None
        print "%s: %s (%s) %s" % (
            self.MESSAGE_NAME_MAP.get(tpe, tpe),
            as_binary,
            as_hex,
            as_int,
        )

    def print_output(self):
        while True:
            tpe, value = self.get_message()
            self.print_message(tpe, value);

    def enable_heater(self):
        self.controller_port.write('E');
        self.heater_on = True

    def disable_heater(self):
        self.controller_port.write('F');
        self.heater_on = False

    def _run(self):
        self.disable_heater()
        max_temp = self.target_temperature + self.margin
        min_temp = self.target_temperature - self.margin
        last_printed = time.time() - 10

        while True:
            current_temp = self.multimeter.getMeasurement().value
            if time.time() > last_printed + 10:
                print current_temp

            if current_temp > max_temp and self.heater_on:
                self.disable_heater()
                print "Disabling heater"
            elif current_temp < min_temp and not self.heater_on:
                self.enable_heater()
                print "Enabling heater"

    def run(self):
        try:
            self._run()
        except:
            self.disable_heater()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('controller_port', type=str)
    parser.add_argument('multimeter_port', type=str)
    parser.add_argument('target_temperature', type=int)
    parser.add_argument('--margin', default=5, type=int)
    args = parser.parse_args()

    driver = NespoleDriver(
        args.controller_port,
        args.multimeter_port,
        args.target_temperature,
        args.margin,
    )
    driver.run()


if __name__ == '__main__':
    main()
