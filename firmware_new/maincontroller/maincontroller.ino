#include "RTx.h"
#include "DAC_AD5696.h"

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)


RTx* rtx = new RTx();


class DAC
{
public:
  DAC() {ad5696 = new DAC_AD5696();}
  void X_left( int16_t posttion ){ad5696->SetVoltage(X_LEFT_CHANNEL, posttion);}
  void X_right( int16_t posttion ){ad5696->SetVoltage(X_RIGHT_CHANNEL, posttion);}
    
  void Y_left( int16_t posttion ){ad5696->SetVoltage(Y_LEFT_CHANNEL, posttion);}
  void Y_right( int16_t posttion){ad5696->SetVoltage(Y_RIGHT_CHANNEL, posttion);}
    
private:
  DAC_AD5696* ad5696;

  //ES TOdO : get the right numbers
  const uint16_t X_LEFT_CHANNEL = 1;
  const uint16_t Y_LEFT_CHANNEL = 2;
  const uint16_t X_RIGHT_CHANNEL = 4;
  const uint16_t Y_RIGHT_CHANNEL = 8;
  

};


// Should remember where it's located now
// plus should be able to convert simple XYZ cordinated to angular movment of probe tip.
class Position
{

public:
  Position()  {x_m=0;y_m=0;z_m=0; dac = new DAC();} // probably needs some parameters like width and height of structure that holds the quartz fork probe.
  void move(int16_t x, int16_t y, int16_t z)
  {
    x_m += x;
    y_m += y;
    z_m += z;
    Serial.print("Position x: ");
    Serial.print(x_m);
    Serial.print(" y: ");
    Serial.print(y_m);
    Serial.print(" z: ");
    Serial.println(z_m);

    dac->X_left( x_m + z_m );
    dac->X_right( -x_m + z_m );
    
    dac->Y_left( y_m + z_m );
    dac->Y_right( -y_m + z_m );
    

  }

private:
   //DAC
   int16_t x_m,y_m,z_m;
   DAC* dac;
   
};

class Scanner
{
public:
  Scanner(){position = new Position();};
  void reset(){delete position; position = new Position();}
  void down(uint16_t steps) {Serial.println("Scanner going Down"); position->move(0, 0 , -steps);};
  void up(uint16_t steps) {Serial.println("Scanner going Up");position->move( 0 , 0, steps);};
  void swing(uint16_t steps) {
    Serial.println("Scanner Swing");

    for (int i = 0 ; i < 10 ; i++)
      for (int j =0  ; j < steps ; j+= steps/100)
      {
        position->move(0, 0 , (steps)/100);// * steps/100);
        delay(1);
      }

      for (int j =0  ; j < 2*steps ; j+= steps/100)
      {
        position->move(0, 0 , ((int16_t)-1*(steps/100)));// * steps/100);
        delay(1);
      }

      for (int j =0  ; j < steps ; j+= steps/100)
      {
        position->move(0, 0 , +steps/100 );//* steps/100);
        delay(1);
      }

  }; // actually we need something more tricky here...


private:
  Position* position;
  // FreqSensor* freqs;

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
	delay(100); // OTHER WISE LISTEN FAILS
	int idx;
	bool boolean;

  // Just a silly check to see if Arduino has a pulse
	if (cmd == "health")
	{
    Serial.println("Main controller is good!");
		// scanner->start();
	}

  ///////////// Position controller functions ///////////////////////////////////////////
	else if (cmd == "reset")
	{
    Serial.println("Reseting postion");
    scanner->reset();
	}
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
