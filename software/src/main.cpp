#include "main.h"

#include <SoftwareSerial.h>
//#include <MAX31855.cpp>

#define MAXDO   3
#define MAXCLK  2
#define RELAY   4


SoftwareSerial Serial(1, 0);
bool relayOn = false;


void setup() {
    //Serial.begin(9600);
    //thermocouple.begin();
    Serial.begin(9600);
    pinMode(RELAY, OUTPUT);
    pinMode(MAXDO, INPUT);
    pinMode(MAXCLK, OUTPUT);
}

void enableRelay() {
    digitalWrite(RELAY, HIGH);
    relayOn = true;
}

void disableRelay() {
    digitalWrite(RELAY, LOW);
    relayOn = false;
}

void toggleRelay() {
    if(relayOn) {
        disableRelay();
    } else {
        enableRelay();
    }
}

void getThermocoupleData() {
    int bitCount = 32;
    for(int i = 0; i < bitCount; i++) {
        digitalWrite(MAXCLK, LOW);
        delay(1);
        Serial.print(digitalRead(MAXDO));
        digitalWrite(MAXCLK, HIGH);
        delay(1);
    }
    Serial.println("");
}

void loop() {
    //double temperature = thermocouple.readCelsius();
    //double temperature = temp.readJunction(CELSIUS);
    //double internal = temp.readThermocouple(CELSIUS);
    //delay(1000);
    //Serial.println(temperature);
    //Serial.println(internal);
    Serial.println("READY");
    getThermocoupleData();
    delay(1000);
    toggleRelay();
}
