#include "RTx.h"

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)


RTx* rtx = new RTx();


// Should remember where it's located now
// plus should be able to convert simple XYZ cordinated to angular movment of probe tip.
class Position
{

public:
  Position()  {x=0;y=0;z=0;}
  void move(uint16_t x,uint16_t y,uint16_t z){Serial.println("Positioner : I like to move it move it!");}

private:
   //DAC
   uint16_t x,y,z;
};

class Scanner
{
public:
  Scanner(){position = new Position();};
  void down(uint16_t steps) {Serial.println("Scanner going Down"); position->move(steps, 0 , 0);};
  void up(uint16_t steps) {Serial.println("Scanner going Up");position->move(0, steps , 0);};
  void swing(uint16_t steps) {Serial.println("Scanner Swing");position->move(steps, 0 , 0);position->move(-steps, 0 , 0);}; // actually we need something more tricky here...


private:
  Position* position;
  // FreqSensir* freqsensor;

};
Scanner* scanner = new Scanner();

void setup() 
{
    //start serial communication
    Serial.begin(BAUDRATE);
    Serial.println("AFM is up and running ...");
    
}

void loop()
{

  String cmd = rtx->listen();

	delay(100);
	int idx;
	bool boolean;
	uint16_t uint16;

  // Just a silly check to see if Arduino has a pulse
	if (cmd == "health")
	{
    Serial.println("Main controller is good!");
		// scanner->start();
	}

  ///////////// Position controller functions ///////////////////////////////////////////
	else if (CheckSingleParameter(cmd, "d", idx, boolean, "down failed"))
	{
		Serial.print("Going down by  ");
		Serial.print(idx);
    Serial.println("  steps");
    scanner->down(idx);
	}
  else if (CheckSingleParameter(cmd, "u", idx, boolean, "up failed"))
	{
		Serial.print("Going up by  ");
		Serial.print(idx);
    Serial.println("  steps");
    scanner->up(idx);
	}
  else if (CheckSingleParameter(cmd, "s", idx, boolean, "swing failed"))
	{
		Serial.print("Start to swing up/down by  ");
		Serial.print(idx);
    Serial.println("  steps");
    scanner->swing(idx);
	}



//////////////  Freq. sensor functions ////////////////////////////////////
    // scan for operation frequency step of 1-2Hz

    // Scan for exact frequency steps 0.1Hz


    // if command scaninit X steps
    // start going down by X steps each time check if frequency has changed
    // if freq. changed stop.
    

}
