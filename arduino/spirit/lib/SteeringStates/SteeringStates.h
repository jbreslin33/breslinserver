#ifndef STEERING_STATES_H
#define STEERING_STATES_H

#include "State.h"

class Steering;

class SteeringGlobalState : public State<Steering>
{  

private:
SteeringGlobalState() {}

SteeringGlobalState(const SteeringGlobalState&);
SteeringGlobalState& operator=(const SteeringGlobalState&);

public:

static SteeringGlobalState* Instance();
virtual void Enter(Steering* steering) {}
virtual void Execute(Steering* steering); 
virtual void Exit(Steering* steering) {}
};

class SteeringForwardState : public State<Steering>
{

private:
SteeringForwardState() {}

SteeringForwardState(const SteeringForwardState&);
SteeringForwardState& operator=(const SteeringForwardState&);

public:

static SteeringForwardState* Instance();
virtual void Enter(Steering* steering) {}
virtual void Execute(Steering* steering) {}
virtual void Exit(Steering* steering) {}
};

#endif
