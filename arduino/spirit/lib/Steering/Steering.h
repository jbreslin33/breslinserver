#ifndef STEERING_H
#define STEERING_H

#include "SteeringStateMachine.h"
#include "SteeringStates.h"
class Steering
{
public:
  	SteeringStateMachine* mStateMachine;
	SteeringGlobalState*  mSteeringGlobalState;

Steering(int id)
{
	mStateMachine = new SteeringStateMachine(this);
	mSteeringGlobalState = new SteeringGlobalState();

    	mStateMachine->setCurrentState(mSteeringGlobalState);
    	mStateMachine->setGlobalState(mSteeringGlobalState);
}

~Steering()
{ 
	delete mStateMachine; 
	delete mSteeringGlobalState; 
}

void update();

SteeringStateMachine* getStateMachine()const { return mStateMachine; } 



};

#endif
