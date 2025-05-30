// ADDAC.h

#include <Wire.h>



#ifndef _ADDAC_h
#define _ADDAC_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "/home/eduards/.arduino15/packages/arduino/hardware/avr/1.8.6/cores/arduino/Arduino.h"
#else
	#include "WProgram.h"
#endif

// this class only exists to instantiate static members of ADDAC class
class ADDAC_Static_Constructor
{
	ADDAC_Static_Constructor();
};

class ADDAC
{
	friend class ADDAC_Static_Constructor;

private:
	static bool _setup;
	static uint8_t ldacPin;
	static ADDAC_Static_Constructor scon;

public:

	/*! 
   * take the LDAC pin low, then high, to trigger DAQ register updates everywhere
   */
	static void LoadDAC();

	/*! load the DAC registers via software */
	static void softLoadDAC();
  
	static void SetLDac(bool state);
	ADDAC();

	/*! Setup the digital output pins and the I2C line
		Returns the result of the I2C_Init function
	*/
	static unsigned char Setup(uint8_t ldacPin);

	/*! Initializes the I2C communication peripheral. */
	static unsigned char I2C_Init(unsigned long clockFreq);

	/*! Writes data to a slave device. */
	static unsigned char I2C_Write(unsigned char slaveAddress,
		const char* dataBuffer,
		unsigned char bytesNumber,
		bool stopBit);

	/*! Reads data from a slave device. */
	static unsigned char I2C_Read(unsigned char slaveAddress,
		unsigned char* dataBuffer,
		unsigned char bytesNumber,
		bool stopBit);

	virtual int SetOutput(uint8_t channel,
		uint16_t value) = 0;
};

#endif

