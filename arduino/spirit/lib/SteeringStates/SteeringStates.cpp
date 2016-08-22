#include "SteeringStates.h"

#include "Arduino.h"

/*
GLOBAL
*/
SteeringGlobalState* SteeringGlobalState::Instance()
{
	static SteeringGlobalState instance;
	return &instance;
}


void SteeringGlobalState::enter(Steering* steering)
{
}
void SteeringGlobalState::execute(Steering* steering)
{
	int left_speed = 250;
	int right_speed = 250;
	int delayTime = 100;

	//right
	int rightWheelReverse=8;
	int rightWheelDrive=11;
	int rightWheelSpeed=9;

	//left
	int leftWheelReverse=12;
	int leftWheelDrive=13;
	int leftWheelSpeed=10;

        analogWrite(leftWheelSpeed,left_speed);
       	digitalWrite(leftWheelDrive,HIGH);
        digitalWrite(leftWheelReverse,LOW);

        analogWrite(rightWheelSpeed,right_speed);
        digitalWrite(rightWheelDrive,HIGH);
        digitalWrite(rightWheelReverse,LOW);
        
	delay(delayTime);

        //Serial.print("global_execute");

//speed
/*
        if (left < 0)
        {
                int speed = left * -1;
                analogWrite(leftWheelSpeed,speed);
                digitalWrite(leftWheelDrive,LOW);
                digitalWrite(leftWheelReverse,HIGH);
        }
        if (left == 0)
        {
                int speed = 0;
                analogWrite(leftWheelSpeed,speed);
                digitalWrite(leftWheelDrive,LOW);
                digitalWrite(leftWheelReverse,LOW);
        }
        if (left > 0)
        {
                int speed = left;
                analogWrite(leftWheelSpeed,speed);
                digitalWrite(leftWheelDrive,HIGH);
                digitalWrite(leftWheelReverse,LOW);
        }
        if (right < 0)
        {
                int speed = right * -1;
                analogWrite(rightWheelSpeed,speed);
                digitalWrite(rightWheelDrive,LOW);
                digitalWrite(rightWheelReverse,HIGH);
        }
        if (right == 0)
        {
                int speed = 0;
                analogWrite(rightWheelSpeed,speed);
                digitalWrite(rightWheelDrive,LOW);
                digitalWrite(rightWheelReverse,LOW);
        }
        if (right > 0)
        {
                int speed = right;
                analogWrite(rightWheelSpeed,speed);
                digitalWrite(rightWheelDrive,HIGH);
                digitalWrite(rightWheelReverse,LOW);
        }
        delay(delayTime);
*/

}
void SteeringGlobalState::exit(Steering* steering)
{
}

