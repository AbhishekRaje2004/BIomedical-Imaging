    int UpperThreshold = 650;
    int LowerThreshold = 400;
    int analogvalue = 0;
    float BPM = 0.0;
    bool Ignoreanalogvalue = false;
    bool FirstPulseDetected = false;
    unsigned long FirstPulseTime = 0;
    unsigned long SecondPulseTime = 0;
    unsigned long PulseInterval = 0;
    int max_analiog_value=0;

    void setup(){
      Serial.begin(9600);
    }

    void loop(){

      analogvalue = analogRead(1); 
      // Heart beat higher peak detected.
      if(analogvalue > UpperThreshold && Ignoreanalogvalue == false){
        if(FirstPulseDetected == false){
          FirstPulseTime = millis();
          FirstPulseDetected = true;
        }
        else{
          SecondPulseTime = millis();
          PulseInterval = SecondPulseTime - FirstPulseTime;
          FirstPulseTime = SecondPulseTime;
        }
        Ignoreanalogvalue = true;
      }

      // Heart beat lower peak detected.
      if(analogvalue < LowerThreshold){
        Ignoreanalogvalue = false;
      }  

      BPM = (1.0/PulseInterval) * 60.0 * 1000;// calculating the bpm 

      Serial.print(analogvalue);
      Serial.print("\t");
      Serial.print(BPM);
      Serial.println(" BPM");
      Serial.flush();

      // Please don't use delay() - this is just for testing purposes.
      delay(50);  
    }
