#include <Arduino.h>
#include <serialcom.h>

void setup();
void loop();
void toggleRelay();
void enableRelay();
void disableRelay();

void writeMessage(char, unsigned char);
void printPort(char);
