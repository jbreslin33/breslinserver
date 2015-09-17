
int pinI1=8;//define I1 interface
int pinI2=11;//define I2 interface 
int speedpinA=9;//enable motor A
int pinI3=12;//define I3 interface 
int pinI4=13;//define I4 interface 
int speedpinB=10;//enable motor B
int speed =127;//d
int speedA = 250; //back left wheel
int speedB = 250; //back right wheel
void setup()
{
  pinMode(pinI1,OUTPUT);
  pinMode(pinI2,OUTPUT);
  pinMode(speedpinA,OUTPUT);
  pinMode(pinI3,OUTPUT);
  pinMode(pinI4,OUTPUT);
  pinMode(speedpinB,OUTPUT);
}
 
void forward()
{
     analogWrite(speedpinA,speedA);//input a simulation value to set the speed
     analogWrite(speedpinB,speedB);
     
     digitalWrite(pinI4,HIGH);//turn DC Motor B move clockwise
     digitalWrite(pinI3,LOW);
     
     digitalWrite(pinI2,HIGH);//turn DC Motor A move anticlockwise
     digitalWrite(pinI1,LOW);
}
void backward()//
{
     analogWrite(speedpinA,speedA);//input a simulation value to set the speed
     analogWrite(speedpinB,speedB);
     
     digitalWrite(pinI4,LOW);//turn DC Motor B move anticlockwise
     digitalWrite(pinI3,HIGH);
     
     digitalWrite(pinI2,LOW);//turn DC Motor A move clockwise
     digitalWrite(pinI1,HIGH);
}





void left()//
{
     analogWrite(speedpinA,speed);//input a simulation value to set the speed
     analogWrite(speedpinB,speed);
     digitalWrite(pinI4,HIGH);//turn DC Motor B move clockwise
     digitalWrite(pinI3,LOW);
     digitalWrite(pinI2,HIGH);//turn DC Motor A move clockwise
     digitalWrite(pinI1,LOW);
}
void right()//
{
     analogWrite(speedpinA,speed);//input a simulation value to set the speed
     analogWrite(speedpinB,speed);
     digitalWrite(pinI4,LOW);//turn DC Motor B move anticlockwise
     digitalWrite(pinI3,HIGH);
     digitalWrite(pinI2,LOW);//turn DC Motor A move clockwise
     digitalWrite(pinI1,HIGH);
}
void stop()//
{
     digitalWrite(speedpinA,LOW);// Unenble the pin, to stop the motor. this should be done to avid damaging the motor. 
     digitalWrite(speedpinB,LOW);
     delay(1000);
}

void loop()
{
 forward(); 
   delay(1000);
/*
   stop();
    delay(2000);
  backward();
   delay(5000);
    stop();
     delay(2000);
     
     
  left();
  delay(2000);
  
  stop();
  right();
  delay(2000);
  stop();
  delay(2000);
  forward();
  delay(2000);
  stop();
  backward();
  delay(2000); 
  stop();
*/
}
