

PC <--> MainController 
          |
          V
         Scanner
          |   |
          V    -------------------
         Position controller     |
          |                      V
          V                     Freq sensor
         DAC wrapper    



Freq sensor - init - find frequency in 100Hz range accuracy of 1Hz
              check - find frequency in 2Hz range accuracy of 0.1Hz


Position controller - move in discrete steps. It has to convert Cortezian (XYZ) position to Azimutal one. 
                      Piezoeletric discs moves linear but the stage movment is circular. At small angle 
                      we might say sin(a) ~= a. As movment increase error increase which we need to fix.


DAC wrapper - converts XYZ position to command DAC can convert to voltage.


Scanner - controls both Freq sensor and position cont. 
          It statrts by getting needle up and lowering slowly down step by step.
          Each step measure the frequency and see if something changed. 
          If freq. changed we can go to the second phase 

          Now, we have our Z as starting point, we can start sweeping. Each successful step report back to MainController

MainController - From one side controlling the scanner on the other communicating back data to PC. 	
                 Since memory on Arduino is limited data will be send line by line. We can send each pixel, but this might be 
                 time consuming process.  

PC - is a standard laptop/desktop with serial monitor on it. 