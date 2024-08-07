//#include <Adafruit_ADS1015.h>
#include "stdafx.h"
#include "Scanner.h"
#include "RTx.h"
#include "DAC_AD5696.h"


// commands
//#define ADCCOMMANDS

/* Pin Definitions */

//Pins for DAC (tlc5620)
#define LDAC 3 //<- for nano  //7 //ldac HIGH to stop DAC output while clocking. 
#define RNG 0   //HIGH doubles the output voltage

//Imaging parameters
#define STEPSIZE 1      //Stepsize of DAC(linelength/stepsize=number of pixel per line)
#define LINE_LENGTH 10 //Voltage range over (MAX256). Defines size of image in real space
#define SAMPLE_SIZE 5   //Number of samples taken at each pixel. Median is taken as true value

//Communication parameters
#define BAUDRATE 9600//250000   //Serial interfaces communication speed (bps)

bool reply = true;


/*!
	Check <commandLine> for something of the form "<name> <number>"
	If it is found, extract the <numer> and put it in <param>, and return true
*/
bool CheckSingleParameter(String commandLine, String name, int &param, bool &ok, String errorMessage)
{
	//Serial.println(commandLine);
	//Serial.println(name);
	//Serial.println(commandLine.indexOf(name));
	if (commandLine.indexOf(name) == 0)
	{
		//Serial.println("Found....");
		// setting
		bool ok = false;
		String part;
		int val = 0;
		while (1)
		{
			int pos = commandLine.indexOf(' ', pos);
			if (pos == -1) break;
			part = commandLine.substring(pos + 1);
			//Serial.println(part);
			val = part.toInt();
			if (val < 0) break;

			ok = true;
			break;
		}

		if (ok)
		{
			//Serial.println("OK");
			param = val;
			//Serial.println(param);
		}
		else
		{
			if (reply) Serial.println(errorMessage);
		}

		return true;
	}
	return false;
}


/* Setup */
// Adafruit_ADS1015 sig_adc(0x49);   // adc with raw signal input (A, B, C and D)
// Adafruit_ADS1015 diff_adc(0x48);   // adc with the sum and difference signals
RTx* phone = new RTx();
DAC_AD5696* vc_dac = new DAC_AD5696();   // voice coil DAC
DAC_AD5696* pz_dac = new DAC_AD5696();   // Piezo DAC
//DAC_AD5696* vcdac = new DAC_AD5696();
PiezoDACController* ctrl = new PiezoDACController(vc_dac, STEPSIZE, LINE_LENGTH, LDAC, RNG);
// SignalSampler* sampler = new SignalSampler(diff_adc, SAMPLE_SIZE);
// Scanner* scanner = new Scanner(*ctrl, *sampler, *phone, LINE_LENGTH);


//This function runs once, when the arduino starts
void setup() {
	Serial.begin(BAUDRATE);
	Serial.print("Initialising I2C...");
	unsigned char i2csetup = ADDAC::Setup(LDAC);
	Serial.println(i2csetup == 1 ? "success!" : "failed!");

	vc_dac->Init(10, 1, 1);
	pz_dac->Init(16, 0, 0);

	// turn internal reference off
	vc_dac->InternalVoltageReference(AD569X_INT_REF_OFF);
	pz_dac->InternalVoltageReference(AD569X_INT_REF_OFF);

	// start ADCs
	// diff_adc.begin();

	// initialise controller
	ctrl->Init();
}

extern String const PARAM_LINE_LENGTH;

//This function keeps looping
void loop()
{
  Serial.println("New loop");
	delay(100);
	pz_dac->SetVoltage(2, 5.0, 5.0);
	delay(100);
	pz_dac->SetVoltage(2, 4.0, 5.0);
  delay(100);
	pz_dac->SetVoltage(2, 2.0, 5.0);
  delay(100);
	pz_dac->SetVoltage(2, 0.0, 5.0);
  
	return;

	String cmd = phone->listen();

	//delay(1);
	int idx;
	bool boolean;
	uint16_t uint16;

	//idx = cmd.indexOf("VCDAC::REFSET");
	//Serial.println(idx);

	 /*
	  * Get command over serial
	  * VCDAC::SET <x> <y>
	  *   Set the channel <x> voltage of the piezo DAC to <y>
	  */
	if (cmd == "GO")
	{
		// scanner->start();
	}
	else if (cmd == "SETUP")
	{
		delete ctrl;
		// delete sampler;
		// delete scanner;

		int CUSTOM_STEPSIZE = Serial.parseInt();
		int CUSTOM_LINE_LENGTH = Serial.parseInt();
		int CUSTOM_SAMPLE_SIZE = Serial.parseInt();

		ctrl = new PiezoDACController(vc_dac, CUSTOM_STEPSIZE, CUSTOM_LINE_LENGTH, LDAC, RNG);
		// sampler = new SignalSampler(sig_adc, CUSTOM_SAMPLE_SIZE);
		// scanner = new Scanner(*ctrl, *sampler, *phone, CUSTOM_LINE_LENGTH);

		if (reply)
		{
			Serial.print("Setup with STEP_SIZE= ");
			Serial.print(CUSTOM_STEPSIZE);
			Serial.print(", CUSTOM_LINE_LENGTH= ");
			Serial.print(CUSTOM_LINE_LENGTH);
			Serial.print(" CUSTOM_SAMPLE_SIZE= ");
			Serial.println(CUSTOM_SAMPLE_SIZE);
		}

	}
	else if (cmd == "STREAM")
	{
		// scanner->stream();
	}

	else if (cmd == "STARTXPLUS::GET")
	{
		Serial.println(ctrl->startingXPlus);
	}
	else if (CheckSingleParameter(cmd, "STARTXPLUS::SET", idx, boolean, "STARTXPLUS - Invalid command syntax!"))
	{
		Serial.print("Setting startingXPlus to ");
		Serial.println(idx);
	}


	////////////////
	//// LINE LENGTH
	////////////////
	else if (cmd == "LINELENGTH::GET")
	{
		//Serial.print("LineLength is ");
		Serial.println(ctrl->getLineSize());
	}
	else if (CheckSingleParameter(cmd, "LINELENGTH::SET", idx, boolean, "SCAN::LINELENGTH::SET - Invalid command syntax!"))
	{
		if (reply)
		{
			Serial.print("Setting line length to ");
			Serial.println(idx);
		}
		ctrl->setLineSize(idx);
	}


	//////////////
	// STEP SIZE
	//////////////
	else if (cmd == "STEPSIZE::GET")
	{
		//Serial.print("LineLength is ");
		Serial.println(ctrl->getStepSize());
	}
	else if (CheckSingleParameter(cmd, "STEPSIZE::SET", idx, boolean, "STEPSIZE::SET - Invalid command syntax!"))
	{
		if (reply)
		{
			Serial.print("Setting step size to ");
			Serial.println(idx);
		}
		ctrl->setStepSize(idx);
	}

	//////////////
	// SAMPLE SIZE
	//////////////
	else if (cmd == "SAMPLESIZE::GET")
	{
		//Serial.print("LineLength is ");
		// Serial.println(sampler->getSampleSize());
	}
	else if (CheckSingleParameter(cmd, "SAMPLESIZE::SET", idx, boolean, "SAMPLESIZE::SET - Invalid command syntax!"))
	{
		if (reply)
		{
			Serial.print("Setting step size to ");
			Serial.println(idx);
		}
		// sampler->setSampleSize(idx);
	}


	else if (cmd == "ERROR")
	{

	}


	else if (cmd == "PING")
	{
		Serial.println("PONG");
	}
	else if (cmd == "REPLY")
	{
		reply = true;
	}
	else if (cmd == "NOREPLY")
	{
		reply = false;
	}
	else if (CheckSingleParameter(cmd, "ECHO::SET", idx, boolean, "ECHO - Invalid command syntax!"))
	{
		phone->echo = idx == 1;
		if (reply)
		{
			Serial.print("Echo is ");
			Serial.println(phone->echo ? 1 : 0);
		}
	}


	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/// ADC COMMANDS
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//#define ADCCOMMANDS
#ifdef ADCCOMMANDS

	else if (CheckSingleParameter(cmd, "ADCDIFF::GET", idx, boolean, "ADCDIFF::GET - Invalid command syntax!"))
	{
		uint16 = diff_adc.readADC_SingleEnded(idx - 1);
		if (reply)
		{
			Serial.print("Channel ");
			Serial.print(idx - 1);
			Serial.print(" is ");
			Serial.println(idx);
		}
		Serial.println(uint16);
	}
	else if (CheckSingleParameter(cmd, "ADCSIG::GET", idx, boolean, "ADCSIG::GET - Invalid command syntax!"))
	{
		uint16 = diff_adc.readADC_SingleEnded(idx - 1);
		if (reply)
		{
			Serial.print("Channel ");
			Serial.print(idx - 1);
			Serial.print(" is ");
			Serial.println(idx);
		}
		Serial.println(uint16);
	}

#endif

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/// DAC COMMANDS
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define DACCOMMANDS
#ifdef DACCOMMANDS

	else if (cmd == "VCDAC::PRINT")
	{
		Serial.print("Max value (u) = ");
		Serial.println(vc_dac->getMaxValueU());
		Serial.print("Max value (f) = ");
		Serial.println(vc_dac->getMaxValueF());
		Serial.print("Bits = ");
		Serial.println(vc_dac->getBits());
	}
	else if (cmd == "VCDAC::RESET")
	{
		vc_dac->Reset(AD569X_RST_MIDSCALE);
		if (reply) Serial.println("Resetting Piezo DAC");
	}
	else if (CheckSingleParameter(cmd, "VCDAC::REFSET", idx, boolean, "VCDAC::REFSET - Invalid command syntax!"))
	{
		if (reply)
		{
			Serial.print("Turning internal reference ");
			Serial.println(idx == 1 ? "on" : "off");
		}
		vc_dac->InternalVoltageReference(idx == 0 ? AD569X_INT_REF_OFF : AD569X_INT_REF_ON);
	}

	else
	{
		//////////////////////////////////////////////////////
		// SET DAC VOLTAGE (FOR DEBUG)
		//////////////////////////////////////////////////////
    // will be either VCDAC::SET...  or PZDAC::SET #Channel value(0-5.0)
    // e.g: PZDAC::SET 2 0.01
		if (idx = cmd.indexOf("DAC::SET") == 2)   
    {
			Serial.println("DACC!!!");
			bool ok = false;
			String channelPart;
			String valuePart;
			int channel;
			float value;
			boolean = cmd[0] == 'V';  // if cmd[0] is V, it must be VCDAC...
			while (1)
			{
				String *parts;
				//int num = splitString(cmd, ' ', parts);
				//Serial.println("There were " + String(num) + " parts");
				// extract channel
				int pos = cmd.indexOf(' ', pos);
				int pos2 = cmd.indexOf(' ', pos + 1);
				if (pos == -1 || pos2 == -1) break;
				channelPart = cmd.substring(pos, pos2);
				channel = channelPart.toInt();

				// check range
				if (channel < 0 || channel > 15)
				{
					if (reply) Serial.println("Channel number must be a bit mask of 4 bits (0 to 15)");
					break;
				}

				// extract value
				pos = pos2 + 1;
				valuePart = cmd.substring(pos);
				value = valuePart.toFloat();

				// check range
				if (value < 0.0f || value > 5.0f)
				{
					if (reply) Serial.println("Channel value must be between 0.0 and 5.0");
					break;
				}

				ok = true;
				break;
			}

			if (ok)
			{
				if (reply)
				{
					Serial.print("Setting channel mask ");
					Serial.print(channel);
					Serial.print(" of ");
					Serial.print(boolean ? "VCDAC" : "PZDAC");
					Serial.print(" to ");
					Serial.println(value);
				}

				//long rand = random(0, dacMax);
				//float rnd = 5.0F;
				//rnd /= dacMax;
				//rnd *= rand;

				// which dac?
				if (boolean)
				{
					vc_dac->SetVoltage(channel, value, 5.0f);
				} else 
				{
					pz_dac->SetVoltage(channel, value, 5.0f);
				}
				//dac->SetOutput(1U << (channel - 1), 



			}
			else {
				if (reply) Serial.println("Invalid command syntax!");
			}

		}

		////////////////////////////////////////////
		// READ THE DAC VOLTAGE
		////////////////////////////////////////////
		else if (idx = cmd.indexOf("VCDAC::GET") == 0)
		{
			//Serial.println("DACC!!!");
			bool ok = false;
			String channelPart;
			int channel;
			float value;
			while (1)
			{
				String *parts;
				//int num = splitString(cmd, ' ', parts);
				//Serial.println("There were " + String(num) + " parts");
				// extract channel
				int pos = cmd.indexOf(' ', pos);
				if (pos == -1) break;
				channelPart = cmd.substring(pos + 1);
				channel = channelPart.toInt();

				// check range
				if (channel < 0 || channel > 15)
				{
					if (reply) Serial.println("Channel number must be a bit mask of 4 bits (0 to 15)");
					break;
				}

				ok = true;
				break;
			}

			if (ok)
			{

				//long rand = random(0, dacMax);
				//float rnd = 5.0F;
				//rnd /= dacMax;
				//rnd *= rand;
				unsigned short val = vc_dac->ReadBack((unsigned char)channel);
				if (reply)
				{
					Serial.print("Channel mask ");
					Serial.print(channel);
					Serial.print(" is set to ");
					Serial.println(val);
				}



			}
			else {
				if (reply) Serial.println("VCDAC::GET - Invalid command syntax!");
			}

		}

		////////////////////////////////////////////
		// SET THE STATE OF THE LDAC PIN
		////////////////////////////////////////////
		//else if (idx = cmd.indexOf("LDAC::SET") == 0)
		//{
		//	//Serial.println("DACC!!!");
		//	bool ok = false;
		//	String channelPart;
		//	int state;
		//	float value;
		//	while (1)
		//	{
		//		String *parts;
		//		//int num = splitString(cmd, ' ', parts);
		//		//Serial.println("There were " + String(num) + " parts");
		//		// extract channel
		//		int pos = cmd.indexOf(' ', pos);
		//		if (pos == -1) break;
		//		channelPart = cmd.substring(pos + 1);
		//		state = channelPart.toInt();

		//		// check range
		//		if (state != 0 && state != 1)
		//		{
		//			Serial.println("Must be 0 or 1");
		//			break;
		//		}

		//		ok = true;
		//		break;
		//	}

		//	if (ok)
		//	{

		//		//long rand = random(0, dacMax);
		//		//float rnd = 5.0F;
		//		//rnd /= dacMax;
		//		//rnd *= rand;
		//		ADDAC::SetLDac(state == 1);
		//		if (reply)
		//		{
		//			Serial.print("LDAC state was set to ");
		//			Serial.println(state == 1 ? "ON" : "OFF");
		//		}



		//	}
		//	else {
		//		if (reply) Serial.println("LDAC::SET - Invalid command syntax!");
		//	}

		//}
	}
#endif

}

