#include <PulseSensorPlayground.h>  
const int PulseWire = 0;        
const int LED = LED_BUILTIN;    
int Threshold = 550;            
                                
PulseSensorPlayground pulseSensor; 

void setup() {

  Serial.begin(9600); 

  pulseSensor.analogInput(PulseWire);
  pulseSensor.blinkOnPulse(LED);  
  pulseSensor.setThreshold(Threshold);

  if (pulseSensor.begin()) {
    Serial.println("Pulse Sensor !");  
  }
}



void loop() {



  if (pulseSensor.sawStartOfBeat()) {              
    int myBPM = pulseSensor.getBeatsPerMinute();   
    Serial.println("HeartBeat Detected .");  
    Serial.print("BPM: ");                         
    Serial.println(myBPM);                         
  }
}
