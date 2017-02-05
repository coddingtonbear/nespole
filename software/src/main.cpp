#include "main.h"

#define LED_R 9
#define LED_G 6
#define LED_B 5

#define SW_DIR 4
#define SW_INT 3
#define SW_BUTTON 2

#define CS_TEMP A6
#define CS_LED A7
#define CS_SELF 10

#define EN_RELAY 7

#define TARGET_EEPROM_ADDRESS 100

SPISettings slow(500000, MSBFIRST, SPI_MODE0);


volatile float currentTemperature = 0;
volatile float targetTemperature = 0;
volatile float allowRelay = false;
volatile float thermocoupleAttached = false;
volatile float relayEnabled = false;

volatile unsigned long showTargetUntil = 0;

int freeRam () {
    extern int __heap_start, *__brkval; 
    int v; 
    return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval); 
}


ISR(BADISR_vect)
{
    for (;;) UDR0='!';
}

void setup() {
    Serial.begin(9600);
    if(MCUSR) {
        Serial.print("System restarted by reset: ");
        Serial.println(MCUSR, BIN);
        delay(30000);
    }
    MCUSR = 0;

    SPI.begin();
    pinMode(LED_R, OUTPUT);
    pinMode(LED_G, OUTPUT);
    pinMode(LED_B, OUTPUT);

    pinMode(SW_DIR, INPUT);
    pinMode(SW_INT, INPUT);
    pinMode(SW_BUTTON, INPUT);

    pinMode(CS_SELF, INPUT_PULLUP);
    pinMode(CS_TEMP, OUTPUT);
    pinMode(CS_LED, OUTPUT);
    pinMode(EN_RELAY, OUTPUT);

    setLedColor(0, 0, 10);

    targetTemperature = EEPROM.read(TARGET_EEPROM_ADDRESS);
    if(targetTemperature > 200) { // The default is 255 if not prev stored.
        targetTemperature = 0;
    }

    attachInterrupt(digitalPinToInterrupt(SW_BUTTON), onButtonPressed, RISING);
    attachInterrupt(digitalPinToInterrupt(SW_INT), onEncoderTurned, RISING);

    setDisplayRegister(0x0c, 0 | (1 << 7) | (1 << 0)); // -Shutdown
    setDisplayRegister(0x09, 15); // Enable decoding for numbers
    setDisplayRegister(0x0a, 0); // Intensity
    setDisplayRegister(0x0e, 0 | (1 << 3)); // Features
    setDisplayRegister(0x0b, 3); // Display all four digits
}


void onButtonPressed() {
    cli();
    if(!allowRelay) {
        allowRelay = true;
    } else {
        allowRelay = false;
    }
    sei();
}


void onEncoderTurned() {
    cli();
    if(digitalRead(SW_DIR) == LOW) {
        targetTemperature++;
    } else {
        targetTemperature--;
    }
    if (targetTemperature < 0) {
        targetTemperature = 0;
    }
    if (targetTemperature > 200) {
        targetTemperature = 200;
    }
    EEPROM.write(TARGET_EEPROM_ADDRESS, targetTemperature);
    showTargetUntil = millis() + 3000;
    sei();
}


float getTemperature() {
    SPI.beginTransaction(slow);
    digitalWrite(CS_TEMP, LOW);
    delayMicroseconds(10);

    uint16_t tempData;
    tempData = SPI.transfer(0xff) << 8;
    tempData |= SPI.transfer(0xff);

    thermocoupleAttached = true;
    if(tempData & 0x4) {
        thermocoupleAttached = false;
    }

    tempData >>=3;

    delayMicroseconds(10);
    digitalWrite(CS_TEMP, HIGH);
    SPI.endTransaction();

    return tempData * 0.25;
}


void setLedColor(uint8_t r, uint8_t g, uint8_t b) {
    analogWrite(LED_R, r);
    analogWrite(LED_G, g);
    analogWrite(LED_B, b);
}


void setDisplayRegister(byte registerId, byte value) {
    SPI.beginTransaction(slow);
    digitalWrite(CS_LED, LOW);
    delayMicroseconds(10);

    SPI.transfer(registerId);
    SPI.transfer(value);

    delayMicroseconds(10);
    digitalWrite(CS_LED, HIGH);
    SPI.endTransaction();
}


void setDisplayValue(float value) {
    int intValue = (int)(value * 10);

    uint8_t digit0 = (intValue % 10000) / 1000;
    uint8_t digit1 = (intValue % 1000) / 100;
    uint8_t digit2 = (intValue % 100) / 10;
    uint8_t digit3 = (intValue % 10);

    if(digit0) {
        setDisplayRegister(1, digit0);
    } else {
        setDisplayRegister(1, 0xf);
    }
    if(digit1 || digit0) {
        setDisplayRegister(2, digit1);
    } else {
        setDisplayRegister(2, 0xf);
    }
    setDisplayRegister(3, digit2 | (1 << 7));
    setDisplayRegister(4, digit3);
}


void enableRelay() {
    setLedColor(10, 0, 0);
    digitalWrite(EN_RELAY, HIGH);
}

void disableRelay() {
    setLedColor(0, 0, 0);
    digitalWrite(EN_RELAY, LOW);
}


void loop() {
    delay(250);
    currentTemperature = getTemperature();
    Serial.println(millis());
    if(millis() > showTargetUntil) {
        setDisplayValue(currentTemperature);
        if(
            (currentTemperature < targetTemperature) &&
            allowRelay &&
            thermocoupleAttached
        ) {
            enableRelay();
        } else if(!thermocoupleAttached) {
            for(int i = 1; i<=4; i++) {
                setDisplayRegister(i, 10);
            }
            disableRelay();
        } else {
            disableRelay();
        }
    } else {
        disableRelay();
        setLedColor(10, 10, 10);
        setDisplayValue(targetTemperature);
    }
}
