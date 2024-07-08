#include "RTx.h"
#include "DAC_AD5696.h"
#include <MD_AD9833.h>
#include <SPI.h>


////////////////////// FreqSensor //////////////////////
// Pins for SPI comm with the AD9833 IC
#define DATA  5	///< SPI Data pin number
#define CLK   6	///< SPI Clock pin number
#define FSYNC 7	///< SPI Load pin number (FSYNC in AD9833 usage)

#define TEST_NUM 3

MD_AD9833	AD(DATA, CLK, FSYNC); // Arbitrary SPI pins

int pincontact = 8;
int pincontact5v = 9;
int contact;
const float BASE_FREQ = 32751.3;
float freq = BASE_FREQ;
///////////////////// FreqSensor end ///////////////////////////

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)


RTx* rtx = new RTx();

class FreqSensor
{
public:
  FreqSensor()
  {
    AD.begin();
    AD.setFrequency(0, freq);
    pinMode (pincontact, INPUT);

    AD.setMode(MD_AD9833::MODE_SINE);
    AD.setFrequency(0, freq); //TODO::ES - do we need this?
  }

  void GetFreq()
  {
      for (int i = 0 ; i < 30 ; i++)
      {
        delay(500);
        GetFreqOnce();
      }

  }

  void GetFreqOnce()
  {
    freq += 0.1;

    AD.setFrequency(0, freq);
    
    if (freq > BASE_FREQ  + 3)
    freq = BASE_FREQ ; //-7;
    avg = 1;
    // for (count =0, result = 0 ; count < 65535; count ++) 
    for (int test = 0; test < TEST_NUM ; test++) {
    for (count =0, result = 0 ; count < 5535; count ++) 
    {

      // uint16_t x = (PINB & 0x2 )>> 1; 
      // uint16_t x = PINB & 0b00100000 ; // OK on UNO 
      x =  (PINB & 0x01)  ;
      if (x > 0) 
        result += 1;
      // result += x ;
      // PORTB = (x >> 1);    
    }
      avg += result;
    }

    avg = avg / TEST_NUM;

    Serial.print("# of high bits : ");
    Serial.print(result);
    Serial.print(" avg  ");
    Serial.print(avg);

    // Serial.print(x);
    Serial.print("  @ freq: ");
    Serial.println(freq);
  }
private: 
  uint16_t count ;
  uint16_t result ;
  uint16_t x;
  uint32_t avg;
};

class DAC
{
public:
  DAC() {
    ad5696 = new DAC_AD5696();
  	ad5696->Init(16, 0, 0);

	  // turn internal reference off
  	ad5696->InternalVoltageReference(AD569X_INT_REF_OFF);
  }

  void X_left( uint16_t posttion ){ad5696->SetVoltage(X_LEFT_CHANNEL, ZERO_POS + posttion);}
  void X_right( uint16_t posttion ){ad5696->SetVoltage(X_RIGHT_CHANNEL, ZERO_POS + posttion);}
    
  void Y_left( uint16_t posttion ){ad5696->SetVoltage(Y_LEFT_CHANNEL, ZERO_POS + posttion);}
  void Y_right( uint16_t posttion){ad5696->SetVoltage(Y_RIGHT_CHANNEL, ZERO_POS + posttion);}
    
private:
  DAC_AD5696* ad5696;

  //ES TOdO : get the right numbers
  const uint16_t X_LEFT_CHANNEL = 1;
  const uint16_t Y_LEFT_CHANNEL = 2;
  const uint16_t X_RIGHT_CHANNEL = 4;
  const uint16_t Y_RIGHT_CHANNEL = 8;
  
  const uint16_t ZERO_POS = 65536/2;

};


// Should remember where it's located now
// plus should be able to convert simple XYZ cordinated to angular movment of probe tip.
class Position
{

public:
  Position()  {x_m=0;y_m=0;z_m=0; dac = new DAC();} // probably needs some parameters like width and height of structure that holds the quartz fork probe.
  void print()
  {
    Serial.print("Position x: ");
    Serial.print(x_m);
    Serial.print(" y: ");
    Serial.print(y_m);
    Serial.print(" z: ");
    Serial.println(z_m);

  }
  void move(int16_t x, int16_t y, int16_t z)
  {
    x_m += x;
    y_m += y;
    z_m += z;

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
  Scanner(){position = new Position(); freqs = new FreqSensor();};
  void reset(){delete position; position = new Position();}
  void down(uint16_t steps) {Serial.println("Scanner going Down"); position->move(0, 0 , -steps); freqs->GetFreq();};
  void up(uint16_t steps) {Serial.println("Scanner going Up");position->move( 0 , 0, steps); freqs->GetFreq();};
  void swing(uint16_t steps) {
    Serial.println("Scanner Swing");

    for (int i = 0 ; i < 10 ; i++){
      for (int j =0  ; j < steps ; j+= steps/100)
      {
        position->move(0, 0 , (steps)/100);// * steps/100);
        delay(10);
      }
      position->print();

      for (int j =0  ; j < 2*steps ; j+= steps/100)
      {
        position->move(0, 0 , ((int16_t)-1*(steps/100)));// * steps/100);
        delay(10);
      }

      position->print();

      for (int j =0  ; j < steps ; j+= steps/100)
      {
        position->move(0, 0 , +steps/100 );//* steps/100);
        delay(10);
      }

      position->print();


      Serial.println("Round done !");
    }
  }; // actually we need something more tricky here...


private:
  Position* position;
  FreqSensor* freqs;

};
Scanner* scanner = new Scanner();

void setup() 
{
    //start serial communication
    Serial.begin(BAUDRATE);
    Serial.println("AFMv0.1 is up and running ...");

    
    
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
