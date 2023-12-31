#include "stdafx.h"
#include <Wire.h>
#include "ADDAC.h"
#include "DAC_AD5696.h"

// DACWriter.h
// Author A Michel
// Date 25/08/15
// lego2nano 2015

//#define DEBUG

#ifndef _PIEZODACCONTROLLER_h
#define _PIEZODACCONTROLLER_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "/home/eduards/.arduino15/packages/arduino/hardware/avr/1.8.6/cores/arduino/Arduino.h"
#else
#include "WProgram.h"
#endif

#define DAC_TLC_5620_CONTROLLER "0.0.1"

// enumeration of directions that the stage can move in
enum PIEZO_DIRECTION
{
	X_UP,
	X_DOWN,
	Y_UP,
	Y_DOWN,
	Z_UP,
	Z_DOWN
};

// what dac channels correspond to each direction
// e.g to move X_UP direction, X_PLUS channel should increase, and X_MINUS channel should decrease
// so X_PLUS and X_MINUS should be opposite quadrants of the piezo
enum PIEZO_DIRECTION_CHANNELS : uint8_t
{
	X_PLUS = AD569X_MSK_CH_A,
	X_MINUS = AD569X_MSK_CH_C,
	Y_PLUS = AD569X_MSK_CH_B,
	Y_MINUS = AD569X_MSK_CH_D,
};

// Defines a digital to analog controller for TLC5620CN
class PiezoDACController {

private:
	// the DAC class
	ADDAC *dac;

	// Number of increments per pixel
	int stepSize;
	// size of the scan region in pixels (width and height)
	int lineSize;
	// amplification
	bool useRNG;

	// the current pixel position in the image.
	// each pixel has a unique x,yi position.
	unsigned int currentStep;

	//// set the x & y coordinates
	//int setCoordinates();

	// current position relative to origin (0,0)
	int currentX;
	int currentY;
	int currentZ;


	// the current DAC output values (values from 0 to 65535)
	uint16_t currentXPlus;
	uint16_t currentXMinus;
	uint16_t currentYPlus;
	uint16_t currentYMinus;


	// scan 90-degree angle
	bool invertChannels;

	/*!
		move the stage in the direction given.  Move \a times amount of steps.
		allAtOnce says whether to move step by step, \a times times, or just do all steps in one go (large voltage change)
	*/
	int move(PIEZO_DIRECTION direction, unsigned int times, bool allAtOnce);

	/*!
		Go to some coordinates
	*/
	int PiezoDACController::GotoCoordinates(uint16_t x, uint16_t y);

	/*!
		Set DAC output.  Includes scaling etc.
	*/
	int SetDACOutput(uint8_t channels, uint16_t value);

public:

	// the starting DAC output values (values from 0 to 65535)
	uint16_t startingXPlus;
	uint16_t startingXMinus;
	uint16_t startingYPlus;
	uint16_t startingYMinus;


	// constructor
	PiezoDACController(ADDAC *dac, int, int, int, bool);
	
	// destructor
	~PiezoDACController();
	
	void Init();

	// reset parameters
	unsigned int reset(int, int, int, bool);

	// increase voltage by one step (8 bit steps given by chip)
	unsigned int increaseVoltage();
	// decrease voltage by one step
	unsigned int decreaseVoltage();

	// go to end of current line
	// returns current point in matrix.
	unsigned int eol();

	// return line size.
	int getLineSize();
	void setLineSize(int lineSize) { this->lineSize = lineSize; }

	// move to the first pixel of the new line.
	unsigned int nextLine();

	// reset to x & y coordinates to 0,0
	unsigned int reset();

	// return current voltage for selected channel (A - x, B - y, C - z).
	int getVoltage(int);

	// invert channel A(X) & B(Y)
	void invert();

	int getStepSize() { return stepSize; }
	void setStepSize(int stepSize) { this->stepSize = stepSize; }

	int getCurrentX() { return currentX; }
	int getCurrentY() { return currentY; }
	int getCurrentZ() { return currentZ; }
};

#endif

