#include "main.h"

#define MAXDO   PD5
#define MAXCLK  PD3
#define MAXCS   PD4
#define RELAY   PB0


bool relayOn = false;


void setup() {
    serialBegin();
    //pinMode(MAXDO, INPUT);
    //
    //pinMode(RELAY, OUTPUT);
    //pinMode(MAXCLK, OUTPUT);
    //pinMode(MAXCS, OUTPUT);
    DDRD &= ~(1 << MAXDO);
    DDRD |= (1 << MAXCLK);
    DDRD |= (1 << MAXCS);
    DDRB |= (1 << RELAY);

    PORTD = 0xff;
    //PORTD |= (1 << MAXDO);
    //PORTD |= (1 << MAXCS);
    PORTD &= ~(1 << MAXCLK);
}

void writeMessage(char type, unsigned char value) {
    while(! serialCheckTxReady()) {delay(1);}
    serialWrite(type);
    while(! serialCheckTxReady()) {delay(1);}
    serialWrite(value);
    while(! serialCheckTxReady()) {delay(1);}
    serialWrite('\n');
    /*if(value == 0) {
        writeMessage('Z', 1);
    }*/
}

void printPort(char port) {
    char value = 0;
    switch(port) {
        case 'D': {
            value = PIND;
            break;
        }
        case 'B': {
            value = PINB;
            break;
        }
    }
    writeMessage(port, value);
}

void enableRelay() {
    PORTB |= (1 << RELAY);
    relayOn = true;
}

void disableRelay() {
    PORTB &= ~(1 << RELAY);
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
    uint8_t bitCount = 32;
    long value = 0;

    PORTD &= ~(1 << MAXCS);
    for(int i = 31; i >= 0; i--) {
        //writeMessage('Q', i);
        PORTD &= ~(1 << MAXCLK);
        delay(1);
        //printPort('D');
        //writeMessage('E', MAXDO);
        if( (1 << MAXDO) & PIND ) {
            value |= 1 << int(i);
            //writeMessage('R', (unsigned int)1);
        } else {
            //writeMessage('R', (unsigned int)0);
        }
        PORTD |= (1 << MAXCLK);
        delay(1);
    }
    delay(10);

    for(int i = 16; i >= 0; i--) {
        PORTD &= ~(1 << MAXCLK);
        delay(1);
        PORTD |= (1 << MAXCLK);
        delay(1);
    }
    writeMessage('T', (char)(value >> 24));
    writeMessage('U', (char)(value >> 16));
    writeMessage('V', (char)(value >> 8));
    writeMessage('W', (char)(value));
    PORTD |= (1 << MAXCS);
    PORTD &= ~(1 << MAXCLK);

    // 7 bits
    unsigned int internalTemperature = (value >> 8) & 0x7f;
    // 12 bits
    unsigned int externalTemperature = (value >> 20) & 0xfff;

    writeMessage('I', (char)(internalTemperature >> 8));
    writeMessage('J', (char)(internalTemperature));
    writeMessage('X', (char)(externalTemperature >> 8));
    writeMessage('Y', (char)(externalTemperature));
    //serialWrite('\n');
    //Serial.println(PORTD, BIN);
    //serialWrite('\n');
}

void loop() {
    //double temperature = thermocouple.readCelsius();
    //double temperature = temp.readJunction(CELSIUS);
    //double internal = temp.readThermocouple(CELSIUS);
    //delay(1000);
    //Serial.println(PINB, HEX);
    //Serial.println(PIND, HEX);
    //printPort('B');
    //printPort('D');
    //delay(3000);
    //toggleRelay();
    
    if(serialCheckRxComplete()) {
        unsigned char value = serialRead();
        switch (value) {
            case 'E': {
                enableRelay();
                writeMessage('E', 1);
                break;
            }
            case 'F': {
                disableRelay();
                writeMessage('E', 0);
                break;
            }
            default: {
                writeMessage('X', 1);
            }
        }
    }
}
