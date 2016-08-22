#ifndef STEERING_H
#define STEERING_H

#include "SteeringStates.h"
#include "StateMachine.h"

//class SteeringForwardState*;
//class SteeringGlobalState*;

//class State;
template <class State> 

class Steering : public Base
{
private:
  StateMachine<Steering>*  mStateMachine;

public:
Steering(int id):Base(id)
{
	mStateMachine = new StateMachine<Steering>(this);
    	//mStateMachine->setCurrentState(SteeringForwardState::Instance());
    	mStateMachine->setGlobalState(SteeringGlobalState::Instance());
}

~Steering() { delete mStateMachine; }

void update();

StateMachine<Steering>* getStateMachine()const { return mStateMachine; } 



};

#endif
