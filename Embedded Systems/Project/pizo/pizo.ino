 int piezo_pin = A0;        
 int led_pin = 5;           

 float factor = 1.10697;  //value  from datasheet
 float force_threshold = 3.0;  

void setup() 
{
  pinMode(piezo_pin, INPUT);
  pinMode(led_pin, OUTPUT);
  Serial.begin(9600); 
  Serial.println("Piezo Force Caclculator");
  Serial.println("===========================================================");
}

void loop() {
  int sensor_value = analogRead(piezo_pin);              
  float voltage = sensor_value * (5.0 / 1023.0);        //converting the digital value into anolog
  float force = voltage * factor;           

  if (force >= force_threshold) //showing the force once the force crosses a threshhold
  {
    digitalWrite(led_pin, HIGH);  
    Serial.println("===========================================================");
    Serial.print("Force Detected! ");
    Serial.print("Measured Force: ");
    Serial.print(force);
    Serial.println(" Newtons");
    Serial.println("===========================================================");
  } else {
    digitalWrite(led_pin, LOW);   
  }

  delay(100);  
}

