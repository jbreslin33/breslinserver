#ifndef STEERING_STATES_H
#define STEERING_STATES_H
#include "State.h"
#include "Steering.h"

class Steering;

/*
-----------------GLOBAL
*/
class SteeringGlobalState : public State<Steering>
{  

private:
SteeringGlobalState() {}

SteeringGlobalState(const SteeringGlobalState&);
SteeringGlobalState& operator=(const SteeringGlobalState&);

public:

static SteeringGlobalState* Instance();
virtual void enter(Steering* steering); 
virtual void execute(Steering* steering); 
virtual void exit(Steering* steering); 
};

/*
-----------------FORWARD
*/
class SteeringForwardState : public State<Steering>
{

private:
SteeringForwardState() {}
SteeringForwardState(const SteeringForwardState&);
SteeringForwardState& operator=(const SteeringForwardState&);

public:

static SteeringForwardState* Instance();
virtual void enter  (Steering* steering);
virtual void execute(Steering* steering);
virtual void exit   (Steering* steering);
};

/*
-----------------REVERSE
*/
class SteeringReverseState : public State<Steering>
{

private:
SteeringReverseState() {}
SteeringReverseState(const SteeringForwardState&);
SteeringReverseState& operator=(const SteeringReverseState&);

public:

static SteeringReverseState* Instance();
virtual void enter  (Steering* steering);
virtual void execute(Steering* steering);
virtual void exit   (Steering* steering);
};


#endif
