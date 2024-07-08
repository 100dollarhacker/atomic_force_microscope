// Basic MD_AD9833 test file
//
// Initialises the device to default conditions
// 
// Connect a pot to A0 to change the frequency by turning the pot
//
#include <MD_AD9833.h>
#include <SPI.h>
// #include <serial.h>


// Pins for SPI comm with the AD9833 IC
#define DATA  5	///< SPI Data pin number
#define CLK   6	///< SPI Clock pin number
#define FSYNC 7	///< SPI Load pin number (FSYNC in AD9833 usage)


#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)

#define TEST_NUM 3


// MD_AD9833	AD(FSYNC);  // Hardware SPI
MD_AD9833	AD(DATA, CLK, FSYNC); // Arbitrary SPI pins

#define ARRAY_SIZE(a) (sizeof(a)/sizeof((a)[0]))
  int pincontact = 8;
  int pincontact5v = 9;
  int contact;
  const float BASE_FREQ = 32751.3;
  float freq = BASE_FREQ;


void setup(void)
{
  Serial.begin(BAUDRATE);
	Serial.print("Initialising AD9833...");
  AD.begin();
  AD.setFrequency(0, freq);
  // AD.setFrequency(0, 32768.3);
  // AD.setActiveFrequency(0);
  pinMode (pincontact, INPUT);
  pinMode(pincontact5v, OUTPUT);



  AD.setMode(MD_AD9833::MODE_SINE);
    AD.setFrequency(0, freq);

}
uint16_t count ;
uint16_t size = 65535;
uint16_t result ;
uint16_t x;
uint32_t avg;
void loop(void)
{
  delay(500);
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
