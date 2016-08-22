#include "SteeringStates.h"

#include "Arduino.h"

/*
GLOBAL
*/
SteeringGlobalState* SteeringGlobalState::Instance()
{
	static SteeringGlobalState instance;
	return &instance;
}


void SteeringGlobalState::enter(Steering* steering)
{
}
void SteeringGlobalState::execute(Steering* steering)
{
        Serial.print("global_execute");
}
void SteeringGlobalState::exit(Steering* steering)
{
}

