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
        int rightWheelReverse=8;
        int rightWheelDrive=11;
        int rightWheelSpeed=9;

        //left
        int leftWheelReverse=12;
        int leftWheelDrive=13;
        int leftWheelSpeed=10;

        int left_speed = 250;
        int right_speed = 250;
        int delayTime = 100;



Steering()
{
        //right
        pinMode(rightWheelReverse,OUTPUT);
        pinMode(rightWheelDrive,OUTPUT);
        pinMode(rightWheelSpeed,OUTPUT);

        //left
        pinMode(leftWheelReverse,OUTPUT);
        pinMode(leftWheelDrive,OUTPUT);
        pinMode(leftWheelSpeed,OUTPUT);

	analogWrite(leftWheelSpeed,left_speed);
	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,LOW);



	mStateMachine = new StateMachine<Steering>(this);
	mStateMachine->setGlobalState(SteeringGlobalState::Instance());
	mStateMachine->setCurrentState(SteeringGlobalState::Instance());
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



