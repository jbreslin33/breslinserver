#ifndef STEERING_H
#define STEERING_H

#include "State.h"
#include "BaseEntity.h"
#include "SteeringStates.h"
#include "StateMachine.h"
#include "Arduino.h"

class Steering : public BaseEntity
{
private:
  	StateMachine<Steering>* mStateMachine;

public:
        //right
        int mRightWheelReversePin=11;
        int mRightWheelDrivePin=8;
        int mRightWheelSpeedPin=9;

        //left
        int mLeftWheelReversePin=13;
        int mLeftWheelDrivePin=12;
        int mLeftWheelSpeedPin=10;

	//actual variables that control speed and delay
        int mLeftWheelSpeed = 250;
        int mRightWheelSpeed = 250;
        int mDelayTime = 100;

Steering()
{
        //right
        pinMode(mRightWheelReversePin,OUTPUT);
        pinMode(mRightWheelDrivePin,OUTPUT);
        pinMode(mRightWheelSpeedPin,OUTPUT);

        //left
        pinMode(mLeftWheelReversePin,OUTPUT);
        pinMode(mLeftWheelDrivePin,OUTPUT);
        pinMode(mLeftWheelSpeedPin,OUTPUT);

	mStateMachine = new StateMachine<Steering>(this);
	mStateMachine->setGlobalState(SteeringGlobalState::Instance());
	mStateMachine->setCurrentState(SteeringDriveState::Instance());
}

~Steering()
{ 
	delete mStateMachine; 
}
void update();

StateMachine<Steering>* getStateMachine()const
{
	return mStateMachine; 
}

};
#endif



