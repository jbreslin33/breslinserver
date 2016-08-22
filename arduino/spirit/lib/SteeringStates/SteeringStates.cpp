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

	//left
        analogWrite(steering->mLeftWheelSpeedPin,steering->mLeftWheelSpeed);
        digitalWrite(steering->mLeftWheelDrivePin,HIGH);
        digitalWrite(steering->mLeftWheelReversePin,LOW);
       
	//right 
	analogWrite(steering->mRightWheelSpeedPin,steering->mRightWheelSpeed);
        digitalWrite(steering->mRightWheelDrivePin,HIGH);
        digitalWrite(steering->mRightWheelReversePin,LOW);
       
	delay(steering->mDelayTime);
}
void SteeringGlobalState::exit(Steering* steering)
{
}

