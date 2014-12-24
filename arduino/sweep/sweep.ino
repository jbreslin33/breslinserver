// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.


#include <Servo.h> 
 
Servo mServo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int mPosition = 0;    // variable to store the servo position 
 
void setup() 
{ 
  mServo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
void initialize()
{
    mServo.write(0); //danger zone less than 65 and greater than
}
 void turnOff()
 {
   mPosition++;
  mServo.write(90); 
 }
 
 void turnOn()
 {
   
  mServo.write(10); 
 } 
 
 void loop() 
{
  initialize();
  /*
  delay(15);
  if (mServo.read() > 45)
  {
   turnOn(); 
  }
  if (mServo.read() <= 45)
  {
   turnOff(); 
  }
  */
  //mServo.write(pos);
 /* 
  for(pos = 0; pos < 180; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
  for(pos = 180; pos>=1; pos-=0)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
   delay(15);                       // waits 15ms for the servo to reach the position 
  }
 */ 
}
