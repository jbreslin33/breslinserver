#ifndef STEERING_H
#define STEERING_H

#include "Base.h"
#include "State.h"
#include "StateMachine.h"

//class State;

class Steering : public Base
{
  StateMachine<Steering>*  mStateMachine;

Steering(int id):Base(id)
{
	mStateMachine = new StateMachine<Steering>(this);
	
}

~Steering() { delete mStateMachine; }

void update();

StateMachine<Steering>* getStateMachine()const { return mStateMachine; } 


};

#endif
