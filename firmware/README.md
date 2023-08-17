This is the firmware than runs on an arduino, connected via GND, SDA and SCL to the OpenAFM control electronics.  Commands are sent over the arduino COM port and interpretted by the firmware.  Operates at a baud rate of 115200.  Termination character is `;` (ascii 59).

At a high level it controls several things
* reads signals from the DVD head
* moves the voice coils
* moves the stage

It also automates scanning the system (moving the stage and taking readings at each point).

# COM Instructions
The main file (firmware.ino) has a long command chain that determines what to do when a serial message is received. Currently implemented messages are below
* `PING` responds with `PONG`


# Class Structure
## PiezoDACController
This provides a high level interface to moving the stage.  It keeps track of the stage position and allows high level "move" commands in x, y and z.   Also implements methods which facillitate scanning (move to next point, move to next line etc.).

## SignalSampler 
Read signals from the ADCs and calculate pixel value (calculate focus error).

## Scanner
This class uses the PiezoDACController and SignalSampler to actually implement the scan, by telling the PiezoDACController to move to the next point, SignalSampler to read the current values, and saves the data.

## RTx
Handles communication with the software via COM.