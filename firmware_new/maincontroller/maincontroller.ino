#include "RTx.h"
#include "DAC_AD5696.h"
#include <MD_AD9833.h>
#include <SPI.h>


////////////////////// FreqSensor //////////////////////
// Pins for SPI comm with the AD9833 IC
#define DATA  5	///< SPI Data pin number
#define CLK   6	///< SPI Clock pin number
#define FSYNC 7	///< SPI Load pin number (FSYNC in AD9833 usage)

#define LDAC 9 //<- for nano  //7 //ldac HIGH to stop DAC output while clocking. 


#define TEST_NUM 6

MD_AD9833	AD(DATA, CLK, FSYNC); // Arbitrary SPI pins

int pincontact = 8;
int pincontact5v = 9;
int contact;
const float BASE_FREQ = 31262;//32750.3;
float freq = BASE_FREQ;
///////////////////// FreqSensor end ///////////////////////////

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)

struct freq_resp
{
  int result;
  float freq;
};

struct XYZ_t 
{
    int x;
    int y; 
    int z; 
};

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

  void GetFreqRange()
  {
      float delta=0;
      for (int i = 0 ; i < 50 ; i++)
      {
          freq = BASE_FREQ - 20 + i ;
          freq_resp res = GetFreqOnce(delta, BASE_FREQ-20, BASE_FREQ + 20);
      }
  }

  freq_resp GetFreq()
  {
      freq_resp min_res;
      min_res.result = 9999;
      freq = BASE_FREQ;
      float delta = 0.1;
      for (int i = 0 ; i < 15 ; i++)
      {
        // delay(5);
        freq_resp res = GetFreqOnce(delta, BASE_FREQ, BASE_FREQ + 3);
        if (res.result < min_res.result)
           min_res = res;
      }

      Serial.print("min avg  ");
      Serial.print(min_res.result);

      // Serial.print(x);
      Serial.print("  @ freq: ");
      Serial.println(min_res.freq);

      return min_res;

  }
private:
  freq_resp GetFreqOnce(float delta, float base_freq, float max_freq)
  {
    freq += delta;
    freq_resp fres;

    AD.setFrequency(0, freq);
    
    if (freq > max_freq)
       freq = base_freq ; //-7;
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

    fres.freq = freq;
    fres.result = result;
    
    return fres;

  }

  uint16_t count ;
  uint16_t result ;
  uint16_t x;
  uint32_t avg;
};

DAC_AD5696* ad5696 = new DAC_AD5696();

class DAC
{
public:
  DAC() {
    }

  void X_left( uint16_t posttion ){ad5696->SetVoltage(X_LEFT_CHANNEL,  posttion);}
  void X_right( uint16_t posttion ){ad5696->SetVoltage(X_RIGHT_CHANNEL,  posttion);}
    
  void Y_left( uint16_t posttion ){ad5696->SetVoltage(Y_LEFT_CHANNEL,   posttion);}
  void Y_right( uint16_t posttion){ad5696->SetVoltage(Y_RIGHT_CHANNEL,   posttion);}
    
private:
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
  void print()
  {
    Serial.print("Position x: ");
    Serial.print(x_m);
    Serial.print(" y: ");
    Serial.print(y_m);
    Serial.print(" z: ");
    Serial.println(z_m);

  }
  XYZ_t move(int16_t x, int16_t y, int16_t z)
  {

    if ((int64_t) x + x_m > 32000 ) {
      x_m = 32000;
      Serial.println("X was restricted to 32000");
    } else if ((int64_t) x + x_m < -32000 ) {
      Serial.println("X was restricted to -32000");
      x_m = -32000;
    } else {
      x_m += x;
    }


    if ((int64_t) y + y_m > 32000 ) {
      y_m = 32000;
      Serial.println("Y was restricted to 32000");
    } else if ((int64_t) y + y_m < -32000 ) {
      Serial.println("Y was restricted to -32000");
      y_m = -32000;
    }  else {
    y_m += y;
    }


    if ((int64_t) z + z_m > 32000 ) {
      z_m = 32000;
      Serial.println("Z was restricted to 32000");
    } else if ((int64_t) z + z_m < -32000 ) {
      Serial.println("Z was restricted to -32000");
      z_m = -32000;
    } else {
      z_m += z;
    }


   
   
    dac->X_left( x_m + z_m );
    dac->X_right( -x_m + z_m );
    
    dac->Y_left( y_m + z_m );
    dac->Y_right( -y_m + z_m );

    XYZ_t xyz ;
    xyz.x = x_m;
    xyz.y = y_m;
    xyz.z = z_m;

    return xyz;
    

  }

  void reset()
  {
    x_m = y_m = z_m = 0 ;

    dac->X_left( 0 );
    dac->X_right( 0 );
    
    dac->Y_left( 0 );
    dac->Y_right( 0 );
    
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
  void down(uint16_t steps) {Serial.println("Scanner going Down"); position->move(0, 0 , -steps); }//freqs->GetFreq();};
  void up(uint16_t steps) {Serial.println("Scanner going Up");position->move( 0 , 0, steps); }//freqs->GetFreq();};
  void swing(uint16_t steps) {
    Serial.println("Scanner Swing");

    for (int i = 0 ; i < 3 ; i++)
    {
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
  void GetFreq()
  {
    //  while (1)
       freqs->GetFreq(); 
  }

  void GetFreqRange()
  {
      freqs->GetFreqRange();
  }

  void ReadLine()
  {
    
  }

  void land(uint16_t steps)
  {
      XYZ_t xyz;
      // while (freqs->GetFreq().result < THRESHOLD) { 
      for (int i =0 ; i < 100 & freqs->GetFreq().result < THRESHOLD; i++ )   {
          xyz = position->move(0, 0 , steps);
          Serial.print("Landing x: ");
          Serial.print(xyz.x);
          Serial.print(" y: ");
          Serial.print(xyz.y);
          Serial.print(" z: ");
          Serial.println(xyz.z);


      } 


  }


private:
  Position* position;
  FreqSensor* freqs;
  const uint16_t THRESHOLD = 600;

};
Scanner* scanner = new Scanner();

void setup() 
{
    //start serial communication
    Serial.begin(BAUDRATE);
    Serial.println("AFMv0.1 is up and running ...");
    // unsigned char i2csetup = ADDAC::Setup(LDAC);
	  // Serial.println(i2csetup == 1 ? "success!" : "failed!");

 
  	ad5696->Init(16, 1, 1);
   unsigned char i2csetup = ADDAC::Setup(LDAC);
	  Serial.println(i2csetup == 1 ? "success!" : "failed!");

 
	  // turn internal reference off
  	ad5696->InternalVoltageReference(AD569X_INT_REF_OFF);
 
    
    
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
    else if (cmd == "range")
    {
      scanner->GetFreqRange();
    }

    // Scan for exact frequency steps 0.1Hz
    else if (cmd == "freq")
    {
      scanner->GetFreq();
    }


    // if command scaninit X steps
    // start going down by X steps each time check if frequency has changed
    // if freq. changed stop.

    else if (CheckSingleParameter(cmd, "land", idx, boolean, "land failed"))
    {
      Serial.print("Start to softly land with steps of ");
      Serial.println(idx);
      scanner->land(idx);

    }

}
