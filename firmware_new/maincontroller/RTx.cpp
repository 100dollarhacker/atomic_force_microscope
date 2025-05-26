#include "RTx.h"

RTx::RTx() {
	this->inputCount = 0;
	this->outputCount = 0;
	echo = true;
}

void RTx::reset() {
	this->inputCount = 0;
	this->outputCount = 0;
}

int RTx::sendData(int pixels[], int pixelCount) {
	String cmd;

	// wait for a RDY or DONE command from the software
	while (true) {
		cmd = listen();
		if (cmd == "RDY" || cmd == "DONE") { break; }
	}

	// sending data
	for (int i = 0; i < pixelCount; ++i) {
		Serial.print(((pixels[i])));
		if (i == pixelCount - 1) {
			Serial.print(';'); // Send ';' when all numbers are sent
		}
		else
		{
			Serial.print(','); // Send ',' when a number is sent
		}
	}
	Serial.flush();

	if (cmd == "DONE") return 0;

	else return 1;
}

//only send message if other side is ready for it
void RTx::sendString(String message) {
	String cmd;
	while (true) {
		cmd = listen();
		if (cmd == "RDY")
		{
			break;
		}
		else if (cmd == "DONE")
		{
			break;
		}
	}
	Serial.print(message);
	Serial.println(';'); // Send ';' when all numbers are sent
}


String RTx::listen() {
	String retVal = "";
	while (true) {
		if (Serial.available()) {
			unsigned int t = micros();
			while (micros() - t <= 100)
			{
				// Wait...
			}
			//wait for entire serial to arrive
			retVal = Serial.readStringUntil(';'); //stop at ;
			//return input value
			if (echo)
			{
				Serial.print(retVal);
				Serial.print(';');
			}
			Serial.flush();
			break;
		}
	}
	return retVal;
}


/*!
	Check <commandLine> for something of the form "<name> <number>"
	If it is found, extract the <numer> and put it in <param>, and return true
*/
bool CheckSingleParameter(String commandLine, String name, long &param, bool &ok, String errorMessage)
{
	
  // Serial.println("TEST ----");
  // Serial.println(commandLine);
	// Serial.println(name);
	// Serial.println(commandLine.indexOf(name));
	if (commandLine.indexOf(name) == 0)
	{
		// Serial.println("Found....");
		// setting
		bool ok = false;
		// String part;
		long val = 0;
		while (1)
		{
			int pos = commandLine.indexOf(' ', 0);
			if (pos == -1) break;
      // Serial.print("pos:");
      // Serial.println(pos);
			String part = commandLine.substring(pos) ;
      // Serial.print("part:");
			// Serial.println(part);
			val = part.toInt();
			if (val < 0) break;

			ok = true;
			break;
		}

		if (ok)
		{
			// Serial.println("OK");
			param = val;
			// Serial.println(param);
		}
		else
		{
			if (reply) Serial.println(errorMessage);
		}

		return true;
	}
	return false;
}

