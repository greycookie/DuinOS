
#ifndef _ARDUINO_TFT_H
#define _ARDUINO_TFT_H

#include "Arduino.h"
#include "utility/Adafruit_GFX.h"
#include "utility/Adafruit_ST7735.h"

/// The Arduino LCD is a ST7735-based device.
/// By default, it is mounted horizontally.
/// TFT class follows the convention of other
/// Arduino library classes by adding a begin() method
/// to be called in the setup() routine.
/// @author Enrico Gueli <enrico.gueli@gmail.com>
class TFT : public Adafruit_ST7735 {
public:
  TFT(uint8_t CS, uint8_t RS, uint8_t RST);

  void begin();  
};


#endif // _ARDUINO_TFT_H
