// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.
//test
#include <Servo.h> 
 
Servo mServo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int mPosition = 90;    // variable to store the servo position 
 
void setup() 
{ 
  mServo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
void initialize()
{
    //mServo.write(90); //90 is default safe   120 turns off 45 turns on 
    turnOff();
}
 void turnOff()
 {
   while (mServo.read() < 133)
   {
     //delay(15);
     mServo.write(mPosition); 
     mPosition++;
   }
 }
 
 void turnOn()
 {
   while (mServo.read() > 50)
   {
     //delay(15);
     mServo.write(mPosition); 
     mPosition--;
   }   
  
 } 
 
 void loop() 
{
  initialize();
  
}
