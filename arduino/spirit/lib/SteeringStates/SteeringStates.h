#ifndef STEERING_STATES_H
#define STEERING_STATES_H

#include "State.h"

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
-----------------DRIVE
*/
class SteeringDriveState : public State<Steering>
{
private:
SteeringDriveState() {}

SteeringDriveState(const SteeringDriveState&);
SteeringDriveState& operator=(const SteeringDriveState&);

public:
static SteeringDriveState* Instance();


virtual void enter(Steering* steering);
virtual void execute(Steering* steering);
virtual void exit(Steering* steering);
};

/*
-----------------REVERSE
*/
class SteeringReverseState : public State<Steering>
{
private:
SteeringReverseState() {}

SteeringReverseState(const SteeringReverseState&);
SteeringReverseState& operator=(const SteeringReverseState&);

public:
static SteeringReverseState* Instance();


virtual void enter(Steering* steering);
virtual void execute(Steering* steering);
virtual void exit(Steering* steering);
};





#endif
