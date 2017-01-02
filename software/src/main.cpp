#include "main.h"

#include <MAX31855.cpp>

#define MAXDO   12
#define MAXCS   4
#define MAXCLK  13
//Adafruit_MAX31855 thermocouple(MAXCLK, MAXCS, MAXDO);
//Adafruit_MAX31855 thermocouple(MAXCS);
MAX31855 temp(MAXDO, MAXCS, MAXCLK);


void setup() {
    Serial.begin(9600);
    //thermocouple.begin();
}

void loop() {
    //double temperature = thermocouple.readCelsius();
    double temperature = temp.readJunction(CELSIUS);
    double internal = temp.readThermocouple(CELSIUS);
    delay(1000);
    Serial.println(temperature);
    Serial.println(internal);
}
