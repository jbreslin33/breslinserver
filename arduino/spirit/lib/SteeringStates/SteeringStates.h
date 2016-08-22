#ifndef STEERING_STATES_H
#define STEERING_STATES_H

#include "SteeringState.h"

class Steering;

/*
-----------------GLOBAL
*/
class SteeringGlobalState : public SteeringState
{  
public:

SteeringGlobalState()
{

} 

virtual void enter(Steering* steering); 
virtual void execute(Steering* steering); 
virtual void exit(Steering* steering); 
};

#endif
