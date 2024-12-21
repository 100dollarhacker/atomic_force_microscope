// RTx.h
// Author A Michel
// Date 20 08 15
// Lego2nano

// #include "stdafx.h"

#ifndef _RTX_h
#define _RTX_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "/home/eduards/.arduino15/packages/arduino/hardware/avr/1.8.6/cores/arduino/Arduino.h"
#else
	#include "WProgram.h"
#endif

#define TRx_VERSION "0.0.1"

class RTx
{
 private:
	 unsigned long inputCount;
	 unsigned long outputCount;

 public:
	RTx();
	void reset();
	int sendData(int[], int);
    void sendString(String);
	String listen();
	bool echo;
};

static bool reply = true;
bool CheckSingleParameter(String commandLine, String name, long &param, bool &ok, String errorMessage);



#endif

