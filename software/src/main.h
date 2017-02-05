#include <Arduino.h>
// Note: It doesn't look like SPI.h properly supports
// the Atmega328pb out-of-the-box; you'll need to add
// these lines to the top of the file right above
// the <Arduino.h> import:
//    #define SPCR _SFR_IO8(0x2C)
//    #define SPSR _SFR_IO8(0x2D)
//    #define SPDR _SFR_IO8(0x2E)
//    
//    #define SPI_STC_vect_num  17
//    #define SPI_STC_vect      _VECTOR(17)  /* SPI Serial Transfer Complete */
//  Via (https://github.com/watterott/ATmega328PB-Testing/blob/master/hardware/atmega328pb/avr/libraries/SPI/src/SPI.h)
#include <EEPROM.h>
#include <SPI.h>

void setup();
void loop();

void setDisplayValue(float value);
void setDisplayRegister(byte registerId, byte value);
void setLedColor(uint8_t r, uint8_t g, uint8_t b);
void onButtonPressed();
void onEncoderTurned();
float getTemperature();
