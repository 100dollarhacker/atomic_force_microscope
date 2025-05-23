#include "RTx.h"
#include "DAC_AD5696.h"
#include <MD_AD9833.h>
#include <SPI.h>
#include <Stepper.h>                    //load library

#define stepsPerRevolution 2048                     //establish number of steps

// Stepper stepper(stepsPerRevolution, 8, 10, 9, 11);
// Stepper stepper(stepsPerRevolution, 9, 11, 10, 12 );
Stepper stepper(stepsPerRevolution, 10, 12, 11, 13 );



////////////////////// FreqSensor //////////////////////
// Pins for SPI comm with the AD9833 IC
#define DATA  5	///< SPI Data pin number
#define CLK   6	///< SPI Clock pin number
#define FSYNC 7	///< SPI Load pin number (FSYNC in AD9833 usage)

#define LDAC 9 //<- for nano  //7 //ldac HIGH to stop DAC output while clocking. 


#define TEST_NUM 1//6

MD_AD9833	AD(DATA, CLK, FSYNC); // Arbitrary SPI pins

int debug = 1;

int pincontact = 8;
int pincontact5v = 9;
int contact;
// const float BASE_FREQ = 31262;//32750.3;
float BASE_FREQ = 32462.0;//32770.8;//32750.3;
float freq = BASE_FREQ;
const uint16_t COUNT_NUM = 555;//55535;
uint16_t THRESHOLD = 200;
const uint16_t MAX_Z_VALUE = 32000;


int demo_flag  = 0; 
uint16_t demo_result = 120; 


///////////////////// FreqSensor end ///////////////////////////

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)

struct freq_resp
{
  uint16_t result;
  float freq;
};

struct XYZ_t 
{
    int x;
    int y; 
    int z; 
};

RTx* rtx = new RTx();

class MicroPosition
{
public:
  MicroPosition()
  {
    stepper.setSpeed(10);                   //set speed of motor, lets use minimal speed we are not in hurrry.

  }

  void Down(int steps)
  {
    stepper.step(steps);                      //tell stepper motor to step
  }

  void Up(int steps)
  {
    stepper.step(-steps);                      //negative is other direction 
  }

};

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


  void GetFreqDown()
  {
    BASE_FREQ -= 1;
    setBaseFreq(BASE_FREQ);
    PrintCurrentFreq();
  }
  void GetFreqDownTenth()
  {
    BASE_FREQ -= 0.1;
    setBaseFreq(BASE_FREQ);
    PrintCurrentFreq();
  }

  void GetFreqUp()
  {
    BASE_FREQ += 1;
    setBaseFreq(BASE_FREQ);
    PrintCurrentFreq();
  }

 void GetFreqUpTenth()
  {
    BASE_FREQ += 0.1;
    setBaseFreq(BASE_FREQ);
    PrintCurrentFreq();
  }

  void setPhase(int phase)
  {
      AD.setPhase(0,  phase);
  }

  void setBaseFreq(float base_freq)
  {
      BASE_FREQ = base_freq;
      AD.setFrequency(0, BASE_FREQ); 
  }

  float MIN(float a, float b) {return (a<b)?a:b;}

  void GetFreqRange(uint16_t range)
  {
      float BASE_FREQ_PREV = BASE_FREQ;
      freq_resp min = {500,500};

      for (uint16_t i = 0 ; i < range ; i++)
      {

          BASE_FREQ = BASE_FREQ_PREV  - i ;
          AD.setFrequency(0, BASE_FREQ); 

          freq_resp res = GetFreqResponse();
          float min_res = MIN(res.result , COUNT_NUM - min.result);
          if (min.result > res.result ) {
            min = res;
          }
      }

      Serial.print("Min Value: ");
      Serial.print(min.result);
      Serial.print("   Min freq: ");
      Serial.println(min.freq);
    

      // return to base freq once finished the tests
      BASE_FREQ = BASE_FREQ_PREV;
      AD.setFrequency(0, BASE_FREQ); 
  }


  // void GetFreqRange(int range)
  // {
  //     // const int RANGE = 200;
  //     float BASE_FREQ_PREV = BASE_FREQ;
  //     freq_resp min = {500,500};

  //     for (int i = 0 ; i < 2*range ; i++)
  //     {

  //         BASE_FREQ = BASE_FREQ_PREV - range + i ;
  //         AD.setFrequency(0, BASE_FREQ); 

  //         freq_resp res = GetFreqResponse();
  //         float min_res = MIN(res.result , COUNT_NUM - min.result);
  //         if (min.result > res.result ) {
  //           min = res;
  //         }
  //     }

  //     Serial.print("Min Value: ");
  //     Serial.print(min.result);
  //     Serial.print("   Min freq: ");
  //     Serial.println(min.freq);
    

  //     // return to base freq once finished the tests
  //     BASE_FREQ = BASE_FREQ_PREV;
  //     AD.setFrequency(0, BASE_FREQ); 

  // }

  void GetMFreqRange()
  {
      const int RANGE = 30;
      float BASE_FREQ_PREV = BASE_FREQ;
      freq_resp min = {500,500};

      for (int i = 0 ; i < 2*RANGE ; i++)
      {

          BASE_FREQ = BASE_FREQ_PREV + (float)(-RANGE + i)/10 ;
          AD.setFrequency(0, BASE_FREQ); 

          freq_resp res = GetFreqResponse();

          float min_res = MIN(res.result , COUNT_NUM - min.result);
          if (min.result > res.result ) {
            min = res;
          }
      }

      Serial.print("Min Value: ");
      Serial.print(min.result);
      Serial.print("   Min freq: ");
      Serial.println(min.freq);
    

      // return to base freq once finished the tests
      BASE_FREQ = BASE_FREQ_PREV;
      AD.setFrequency(0, BASE_FREQ); 

  }
  void GetSFreqRange()
  {
      const int RANGE = 10;
      float BASE_FREQ_PREV = BASE_FREQ;
      for (int i = 0 ; i < 2*RANGE ; i++)
      {

          BASE_FREQ = BASE_FREQ_PREV - RANGE + i ;
          AD.setFrequency(0, BASE_FREQ); 

          freq_resp res = GetFreqResponse();
      }

      // return to base freq once finished the tests
      BASE_FREQ = BASE_FREQ_PREV;
      AD.setFrequency(0, BASE_FREQ); 

  }
  void PrintCurrentFreq()
  {
      Serial.print("Base freq: ");
      Serial.println(BASE_FREQ);
  }

  // Assumes correct frequency selected and used.
  freq_resp GetFreqResponse()
  {
    freq_resp fres;
    
    for (count =0, result = 0 ; count < COUNT_NUM; count ++) 
    {
      x =  (PINB & 0x01)  ;
      if (x > 0) 
        result += 1;
    }
    
    

    if (debug)
    {
        Serial.print("# of high bits : ");
        Serial.print(result);
        Serial.print("   ");
        Serial.print(COUNT_NUM-result);

        Serial.print("  @ freq: ");
        Serial.println(BASE_FREQ);
    }
    fres.freq = BASE_FREQ;
    fres.result = result < COUNT_NUM - result ? result: COUNT_NUM - result;

    if (demo_flag)
      fres.result = demo_result;

    return fres;

  }

private:

  uint16_t count ;
  uint16_t result ;
  uint16_t x;
};

DAC_AD5696* ad5696 = new DAC_AD5696();

class DAC
{
public:
  DAC() {}

  void ring(int channel)
  {
    for (int i = 0 ; i < 1000; i++)
    {
      ad5696->SetVoltage(channel,  32000);
      delay(1);
      ad5696->SetVoltage(channel,  -32000);
      delay(1);

    }
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
  
  XYZ_t get() 
  {
    XYZ_t xyz ;
    xyz.x = x_m;
    xyz.y = y_m;
    xyz.z = z_m;   
    return  xyz;
  }

  void print()
  {
    Serial.print("Position x: ");
    Serial.print(x_m);
    Serial.print(" y: ");
    Serial.print(y_m);
    Serial.print(" z: ");
    Serial.println(z_m);

  }

  void ring(int channel) {dac->ring(channel);}

  // Move x,y,z step relativly to latest position.
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

    // Print our current position
    print();

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


/// TODO: Find the right place

  // uint16_t psaudo_fr(XYZ_t xyz)
  int psaudo_fr(XYZ_t xyz, int i )
  {
    // return ((xyz.x / 1000) % 2 == 0 && (xyz.y / 1000) % 2 == 0  )? 255 : 50 ; 

    int sur =  i*10 ;//+ ((xyz.x / 1000) % 2 == 0 && (xyz.y / 1000) % 2 == 0  )? 1000 : 800 ;

    Serial.print("sur: ");
    Serial.print(sur);
    Serial.print("delta: ");
    Serial.print(xyz.z - sur);
    Serial.print("   ");

    


    if (xyz.z - sur < 0){ // we've hit the surface
      Serial.print(" 250-1  ");
      return 250; 
      
    } else if (xyz.z - sur < 100) {
      Serial.print(" 250-2  ");

      return 250;
    } else if (xyz.z - sur < 300){
      Serial.print(" 120-4  ");

      return THRESHOLD;
      // return 120;
    } else {
      Serial.print(" 40-4  ");
      return 40;
    }
    // return (sur - xyz.z)*(sur - xyz.z);

  }


  int above_threshold(int fr, int threshold)
  {
      // if (fr > threshold * 1.1)
      if (fr > threshold + 20)
          return 1;
      return 0;
  }

  int below_threshold(int fr, int threshold)
  {
    // if (fr < 0.8* threshold)
    if (fr < threshold - 20)
          return 1;
    return 0;
  }

  int not_threshold_range(int fr, int threshold)
  {
      if (above_threshold(fr, threshold))
          return 1;
      if (below_threshold(fr, threshold))
          return 1;

      return 0;
  }



class Scanner
{
public:
  Scanner(){position = new Position(); freqs = new FreqSensor(); mp = new MicroPosition();};
  XYZ_t GetPosition() {return(position->get());}
  void printPos() {position->print();}
  void reset(){position->reset();}
  void ring(int channel) {position->ring(channel);}
  void down(uint16_t steps) {position->move(0, 0 , -steps);}
  void up(uint16_t steps) {position->move( 0 , 0, steps); }//freqs->GetFreq();};
  void x(uint16_t steps) {position->move( steps , 0, 0); }//freqs->GetFreq();};
  void y(uint16_t steps) {position->move( 0 , steps, 0); }//freqs->GetFreq();};

  void MPDown(uint16_t steps) {mp->Down(steps);};
  void MPUp(uint16_t steps) {mp->Up(steps);};
  
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
      freqs->PrintCurrentFreq(); 
  }

  void setPhase(int phase)
  {
      freqs->setPhase(phase);
  }
  void setBaseFreq(long base_freq)
  {
      freqs->setBaseFreq((float)base_freq);
  }

  freq_resp GetFreqResponse()
  {
      return freqs->GetFreqResponse();
  }

  void GetFreqRange(uint16_t range)
  {
      freqs->GetFreqRange(range);
  }


  void GetSFreqRange()
  {
      freqs->GetSFreqRange();
  }

  void GetMFreqRange()
  {
      freqs->GetMFreqRange();
  }

 void GetFreqDown()
  {
      freqs->GetFreqDown();
  }

   void GetFreqUp()
  {
      freqs->GetFreqUp();
  }

 void GetFreqDownTenth()
  {
      freqs->GetFreqDownTenth();
  }

   void GetFreqUpTenth()
  {
      freqs->GetFreqUpTenth();
  }


  void lands(uint16_t steps)
  {
      XYZ_t xyz;
      for (int i = 0 ; i < 100 & freqs->GetFreqResponse().result < THRESHOLD; i++ )   
      {
          delay(5000UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , steps);
      } 
  }
  void land(uint16_t steps)
  {
      XYZ_t xyz;
      xyz.z = 0;
      for (int i = 0 ; i < 100 && freqs->GetFreqResponse().result < THRESHOLD && xyz.z < MAX_Z_VALUE; i++ )   
      {
          delay(1000); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , steps);
          Serial.print("Nano position ");
          Serial.println(xyz.z);
      } 

      Serial.println("DONE!");
  }

  XYZ_t eland(uint16_t steps, uint16_t threshold)
  {
      XYZ_t xyz = {0,0,0};
      while (freqs->GetFreqResponse().result < threshold & xyz.z < 32000) {
          delay(1000UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , steps);
      } 

      return xyz;
  }

  void lifts(uint16_t steps)
  {
      XYZ_t xyz;
      for (int i = 0 ; i < 300 & freqs->GetFreqResponse().result > THRESHOLD; i++ )   
      {
          delay(5000UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , -steps);
      } 
  }

  void lift(uint16_t steps)
  {
      XYZ_t xyz;
      for (int i = 0 ; i < 300 & freqs->GetFreqResponse().result > THRESHOLD; i++ )   
      {
          delay(1000); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , -steps);
      } 
  }

  XYZ_t elift(uint16_t steps)
  {
      XYZ_t xyz = {0,0,0};
      while(freqs->GetFreqResponse().result > THRESHOLD & xyz.z > -32000)   
      {
          delay(1000UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 
          xyz = position->move(0, 0 , -steps);

      } 

      return xyz; 
  }

  void scan1(uint16_t steps)
  {
      XYZ_t xyz;
      int THRESHOLD1 = 100;

      for (int i = 0 ; i < 6 ; i++) {

          bool flag = true;
          while (flag) {
            // land 
            xyz = eland(steps, THRESHOLD1);

            if (xyz.z == 32000)
               break;


            // check response three times to be sure it's not a noise
            flag = freqs->GetFreqResponse().result < THRESHOLD1;
            flag |= freqs->GetFreqResponse().result < THRESHOLD1;
            flag |= freqs->GetFreqResponse().result < THRESHOLD1;
          }

          // print current location
          position->print();
          Serial.println("Landed >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
      }
    }

  void scan2(uint16_t steps)
  {
      XYZ_t xyz;

      for (int i = 0 ; i < 6 ; i++) {

          bool flag = true;
          while (flag) {
            // land 
            xyz = eland(steps, THRESHOLD);

            if (xyz.z == 32000)
               break;


            // check response three times to be sure it's not a noise
            flag = freqs->GetFreqResponse().result < THRESHOLD;
            flag |= freqs->GetFreqResponse().result < THRESHOLD;
            flag |= freqs->GetFreqResponse().result < THRESHOLD;
          }

          // print current location
          position->print();
          Serial.println("Landed >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

          if (flag = freqs->GetFreqResponse().result < THRESHOLD) {
              Serial.println(">>>>>> Found nothing breaking ... ");
              break;
          }

          flag = true;
          while (flag) {
            // lift 
            xyz = elift(steps);

            if (xyz.z == -32000)
               break;


            // check response three times to be sure it's not a noise
            flag = freqs->GetFreqResponse().result > THRESHOLD;
            flag |= freqs->GetFreqResponse().result > THRESHOLD;
            flag |= freqs->GetFreqResponse().result > THRESHOLD;
          }

          // print current location
          Serial.println("Lifted >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

      }
  }

  // Make a scan over X-axis. Assuming 'landed' the tip is in kind of equalibrium going up you touch the sample going down you disconnect
  void scanX2(uint16_t steps)
  {
      XYZ_t xyz;


      // Serial.println("Scanning X: ");
      delay(1000UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 

      xyz = position->move(-steps*10, 0 , 0);

      for (int i = 0 ; i < 10 ; i++) {

          uint16_t fr = freqs->GetFreqResponse().result ;


          Serial.print(fr);
          Serial.print("|");



          xyz = position->move(steps, 0 , 0);

          
          //RETURN IT: delay(100UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 

      }
  }





  // Make a scan over X-axis. Assuming 'landed' the tip is in kind of equalibrium going up you touch the sample going down you disconnect
  void scanXlr(uint16_t steps)
  {
      XYZ_t xyz;
      int fr;
      int i = 0 ;

      Serial.print("T1 ");
      // // Serial.println("Scanning X2: ");

      // debug = 0 ;
      // for ( ; i < 100 ; i++) 
      {
      
      //     // uint16_t fr = freqs->GetFreqResponse().result ;
          // Serial.print("T2 ");
      

      //     // Serial.print(fr);

      //     xyz = position->move(steps, 0 , 0);

      //     fr = freqs->GetFreqResponse().result ;
  
          if (demo_flag)
            fr = psaudo_fr(xyz, 99-i);
             
          // while (not_threshold_range(fr, THRESHOLD))
          {

      //     //   Serial.print(fr);
      //     //   Serial.print(":T3 ");


            if (fr > THRESHOLD + 20) {
               Serial.println("above:T4 ");
                xyz = position->move(0, 0 , 50);
            } else  if (fr < THRESHOLD - 40){
               Serial.println("below:T4 ");

              xyz = position->move(0, 0 , -50);
            }

      //     //   // if (above_threshold(fr, THRESHOLD)){
      //     //   //     // Serial.println("above:T4 ");
      //     //   //     xyz = position->move(0, 0 , 50);
      //     //   // } else if (below_threshold(fr, THRESHOLD)){
      //     //   //     // Serial.println("below:T4 ");

      //     //   //     xyz = position->move(0, 0 , -50);
      //     //   // }

 
 
      //     //   fr = freqs->GetFreqResponse().result ;
  
            if (demo_flag)
              fr = psaudo_fr(xyz, 99-i);
              
      //     //   // Here should be the code that dynamically change position to 
          }

      //     // Serial.print(fr);
          Serial.print(xyz.z);
          Serial.print(",");



      //     // xyz = position->move(steps, 0 , 0);

          
      //     //RETURN IT: delay(10UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 

      }
      Serial.println("");
      // Serial.println("--");
      // Serial.println("--");

  }

  void scanXrl(uint16_t steps)
  {
      XYZ_t xyz;

      // Serial.println("Scanning X(backwards) : ");

      debug = 0 ;


      // go back to where we started just a check if this is noise or not
      for (int i = 0 ; i < 100 ; i++) {
          
          
          xyz = position->move(-steps, 0 , 0);

          int fr = freqs->GetFreqResponse().result ;

          if (demo_flag)
            fr = psaudo_fr(xyz, i);
             
          while (not_threshold_range(fr, THRESHOLD))
          {

            if (above_threshold(fr, THRESHOLD))
                xyz = position->move(0, 0 , 50);
            else if (below_threshold(fr, THRESHOLD))
                xyz = position->move(0, 0 , -50);

 

            fr = freqs->GetFreqResponse().result ;
  
            if (demo_flag)
              fr = psaudo_fr(xyz, i);
              
            // Here should be the code that dynamically change position to 
          }

          // Serial.print(fr);
          Serial.print(xyz.z);


          // int fr = freqs->GetFreqResponse().result ;
 


          // Serial.print(fr);
          // Serial.print(",");




          // RETRUN IT: delay(10UL); // Let piezzoelectric disc respond. Not sure if it too much or not. 

      }
      Serial.println("");

      // debug = 1 ;

  }
      


private:
  Position* position;
  FreqSensor* freqs;
  MicroPosition* mp;

};
Scanner* scanner = new Scanner();


void setup() 
{
    //start serial communication
    Serial.begin(BAUDRATE);
    Serial.println("AFMv0.2 is up and running ...");
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
	long idx;
	bool boolean;

  // Just a silly check to see if Arduino has a pulse
	if (cmd == "health")
	{
    Serial.println("Main controller is good!");
		// scanner->start();
	}

  else if (cmd == "demo")
  {
    demo_flag = 1 ;
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
    Serial.print("  steps");
    scanner->down(idx);

    // if (demo_flag)
    //   demo_result -= 20;
    Serial.println("");

	}
  else if (CheckSingleParameter(cmd, "u", idx, boolean, "up failed"))
	{
		Serial.print("Going up by  ");
		Serial.print(idx);
    Serial.print("  steps");
    scanner->up(idx);

    // if (demo_flag)
    //   demo_result += 20;
    Serial.println("");

	}

  else if (CheckSingleParameter(cmd, "x", idx, boolean, "move left"))
	{
		Serial.print("Going left by  ");
		Serial.print(idx);
    Serial.println("  steps");
    scanner->x(idx);
	}

  else if (CheckSingleParameter(cmd, "y", idx, boolean, "move left"))
	{
		Serial.print("Y update by  ");
		Serial.print(idx);
    Serial.println("  steps");
    scanner->y(idx);
	}
  // else if (CheckSingleParameter(cmd, "s", idx, boolean, "swing failed"))
	// {
	// 	Serial.print("Start to swing up/down by  ");
	// 	Serial.print(idx);
  //   Serial.println("  steps");
  //   scanner->swing(idx);
	// }



//////////////  Freq. sensor functions ////////////////////////////////////
   else if (CheckSingleParameter(cmd, "bf", idx, boolean, "base freq failed"))
	{
		Serial.print("Setting BASE_FREQ to  ");
		Serial.println(idx);
    scanner->setBaseFreq(idx);
	}

  else if (CheckSingleParameter(cmd, "ph", idx, boolean, "phase failed"))
	{
		Serial.print("Setting PHASE to  ");
		Serial.print(idx);
    scanner->setPhase(idx);
	}
    
    // scan for operation frequency step of 1-2Hz
    // else if (cmd == "range")
    // {
    //   scanner->GetFreqRange();
    // }
    else if (CheckSingleParameter(cmd, "range", idx, boolean, "range failed"))
    {
      Serial.print("Setting RABGE to  ");
		  Serial.print(idx);
      scanner->GetFreqRange(idx);
    }
      // scan for operation frequency step of 1Hz 
    else if (cmd == "srange")
    {
      scanner->GetSFreqRange();
    }

         // scan for operation frequency step of 1Hz 
    else if (cmd == "msrange")
    {
      scanner->GetMFreqRange();
    }

    else if (cmd == "fd")
    {
      scanner->GetFreqDown();
    }

    else if (cmd == "fu")
    {
      scanner->GetFreqUp();
    }

     else if (cmd == "fdd")
    {
      scanner->GetFreqDownTenth();
    }

    else if (cmd == "fuu")
    {
      scanner->GetFreqUpTenth();
    }
    // Scan for exact frequency steps 0.1Hz
    else if (cmd == "freq")
    {
      scanner->GetFreq();
    }
    // get frequency response 
    else if (cmd == "fr") 
    {
      // scanner->GetFreqResponse();
      if (!demo_flag)
        scanner->GetFreqResponse();
      else {

        int fr = psaudo_fr(scanner->GetPosition(), 0 );
        Serial.print("FR: ");
        Serial.println(fr);
      }

    }

    else if (CheckSingleParameter(cmd, "thr", idx, boolean, ""))
    {
      THRESHOLD = idx;
      Serial.print("Setting THRESOLD to ");
      Serial.println(idx);
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

    else if (CheckSingleParameter(cmd, "lands", idx, boolean, "land failed"))
    {
      Serial.print("Start to softly land with steps of (delay of 1s)");
      Serial.println(idx);
      scanner->lands(idx);

    }

      else if (CheckSingleParameter(cmd, "lift", idx, boolean, "land failed"))
    {
      Serial.print("Start to lift with steps of ");
      Serial.println(idx);
      scanner->lift(idx);

    }

    else if (CheckSingleParameter(cmd, "lifts", idx, boolean, "land failed"))
    {
      delay(1000);
      Serial.print("Start to lifts with steps of ");
      Serial.println(idx);
      scanner->lifts(idx);

    }


    // else if (CheckSingleParameter(cmd, "scan1", idx, boolean, "scan1 failed"))
    // {
    //   Serial.print("Start to scan1 with steps of ");
    //   Serial.println(idx);


    //   scanner->scan1(idx);

    // }

    // else if (CheckSingleParameter(cmd, "scan2", idx, boolean, "scan failed"))
    // {
    //   Serial.print("Start to scan with steps of ");
    //   Serial.println(idx);


    //   scanner->scan2(idx);

    // }


    else if (CheckSingleParameter(cmd, "scanxlr", idx, boolean, "scan failed"))
    {
      Serial.print("Start to scan left to right with steps of ");
      Serial.println(idx);


      scanner->scanXlr(idx);

      Serial.println("DONE!");


    }

   else if (CheckSingleParameter(cmd, "scanxrl", idx, boolean, "scan failed"))
    {
      Serial.print("Start to scan right to left with steps of ");
      Serial.println(idx);


      scanner->scanXrl(idx);

      Serial.println("DONE!");


    }

    else if (CheckSingleParameter(cmd, "md", idx, boolean, "down failed"))
    {
      Serial.print("Going MICRO down by  ");
      Serial.print(idx);
      Serial.println("  steps");
      scanner->MPDown(idx);

    }
    else if (CheckSingleParameter(cmd, "mu", idx, boolean, "down failed"))
    {
      Serial.print("Going MICRO up by  ");
      Serial.print(idx);
      Serial.println("  steps");
      scanner->MPUp(idx);
    }

    else if (CheckSingleParameter(cmd, "ml", idx, boolean, "down failed"))
    {
      Serial.print("Going MICRO LAND by  ");
      Serial.print(idx);
      Serial.println("  steps");
      
      freq_resp fr = scanner->GetFreqResponse();

      // debug = 1 ;

      while(fr.result < THRESHOLD) 
      {
        scanner->MPDown(idx);
        delay(10);
        fr = scanner->GetFreqResponse();
        // Serial.print("Frequency response: ");
        // Serial.println(fr.result);
     

      }
      // debug = 0 ;
      Serial.println("DONE!");
    }

    else if (CheckSingleParameter(cmd, "ring", idx, boolean, "ring failed"))
    {
      Serial.print("Ringing channel ");
      Serial.println(idx);
      scanner->ring(idx);
    }


    // else if (CheckSingleParameter(cmd, "scanx2", idx, boolean, "scan failed"))
    // {
    //   Serial.print("Start to scan with steps of ");
    //   Serial.println(idx);


    //   scanner->scanX2(idx);

    // }


}
