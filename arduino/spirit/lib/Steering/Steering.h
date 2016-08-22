#ifndef STEERING_H
#define STEERING_H

#include "State.h"
#include "BaseEntity.h"
#include "SteeringStates.h"
#include "StateMachine.h"
//#include "Arduino.h"


//class State;

class Steering : public BaseEntity
{
private:
  	StateMachine<Steering>* mStateMachine;

public:
Steering(int id):BaseEntity(id)
{
	mStateMachine = new StateMachine<Steering>(this);
	mStateMachine->setGlobalState(SteeringGlobalState::Instance());
	mStateMachine->setCurrentState(SteeringGlobalState::Instance());
}

~Steering() { delete mStateMachine; }
void update();

StateMachine<Steering>* getFSM()const { return mStateMachine; }
};
#endif



