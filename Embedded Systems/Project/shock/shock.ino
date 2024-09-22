 int shock_pin = 2;        
 int buzzer_pin = 3;        
 int led_pin = 4;           

void setup() {
  pinMode(shock_pin, INPUT);
  pinMode(buzzer_pin, OUTPUT);
  pinMode(led_pin, OUTPUT);
  Serial.begin(9600);
  Serial.println("Shock Detection");  
  Serial.println("===================================");  
}

void loop() {
  int shockState = digitalRead(shock_pin);

  if (shockState == HIGH) //shock state gives a boolean value based on the impulse
  {
    digitalWrite(buzzer_pin, HIGH);//turn buzzer on when shock state is high
    digitalWrite(led_pin, HIGH);
    Serial.println("==============================================================");
    Serial.println("Shock Detected! ");
    Serial.println("==============================================================");
  } 
  else {
    digitalWrite(buzzer_pin, LOW);
    digitalWrite(led_pin, LOW);
  }
  delay(300);//delay for improved display on monitor
}
