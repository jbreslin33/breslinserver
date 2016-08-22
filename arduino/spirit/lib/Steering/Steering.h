#ifndef STEERING_H
#define STEERING_H

#include "State.h"
#include "BaseEntity.h"
#include "SteeringStates.h"
#include "StateMachine.h"

class Steering : public BaseEntity
{
private:
  	StateMachine<Steering>* mStateMachine;

public:
Steering()
{
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



