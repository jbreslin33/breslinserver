#include "SteeringStates.h"
#include "Steering.h"

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




        analogWrite(steering->leftWheelSpeed,steering->left_speed);
        digitalWrite(steering->leftWheelDrive,HIGH);
        digitalWrite(steering->leftWheelReverse,LOW);
        
	analogWrite(steering->rightWheelSpeed,steering->left_speed);
        digitalWrite(steering->rightWheelDrive,HIGH);
        digitalWrite(steering->rightWheelReverse,LOW);
       
	delay(100);
}
void SteeringGlobalState::exit(Steering* steering)
{
}

