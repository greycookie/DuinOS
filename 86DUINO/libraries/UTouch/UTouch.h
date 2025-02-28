/*
  UTouch.h - Arduino/chipKit library support for Color TFT LCD Touch screens 
  Copyright (C)2010-2014 Henning Karlsen. All right reserved
  
  Basic functionality of this library are based on the demo-code provided by
  ITead studio. You can find the latest version of the library at
  http://www.henningkarlsen.com/electronics

  If you make any modifications or improvements to the code, I would appreciate
  that you share the code with me so that I might include it in the next release.
  I can be contacted through http://www.henningkarlsen.com/electronics/contact.php

  This library is free software; you can redistribute it and/or
  modify it under the terms of the CC BY-NC-SA 3.0 license.
  Please see the included documents for further information.
*/

#ifndef UTouch_h
#define UTouch_h

#include "Arduino.h"

#define UTOUCH_VERSION	122

#define regtype volatile uint8_t
#define regsize uint8_t
#define byte unsigned char
#define int16_t signed short 

#define PORTRAIT			0
#define LANDSCAPE			1

#define PREC_LOW			1
#define PREC_MEDIUM			2
#define PREC_HI				3
#define PREC_EXTREME		4

class UTouch
{
	public:
		int16_t	TP_X ,TP_Y;

				UTouch(byte tclk, byte tcs, byte tdin, byte dout, byte irq);

		void	InitTouch(byte orientation = LANDSCAPE);
		void	read();
		bool	dataAvailable();
		int16_t	getX();
		int16_t	getY();
		void	setPrecision(byte precision);

		void	calibrateRead();
    
    private:
		regtype *P_CLK, *P_CS, *P_DIN, *P_DOUT, *P_IRQ;
		regsize B_CLK, B_CS, B_DIN, B_DOUT, B_IRQ;
		byte	T_CLK, T_CS, T_DIN, T_DOUT, T_IRQ;
		long	_default_orientation;
		byte	orient;
		byte	prec;
		byte	display_model;
		long	disp_x_size, disp_y_size, default_orientation;
		long	touch_x_left, touch_x_right, touch_y_top, touch_y_bottom;

		void	touch_WriteData(byte data);
		word	touch_ReadData();
		void    digitalWrite_f(uint8_t pin, uint8_t val);
		void    To_GPIO(uint8_t pin);
};

#endif