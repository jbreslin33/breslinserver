#include "SteeringStates.h"
#include "Arduino.h"

/*
GLOBAL
*/

void SteeringGlobalState::enter(Steering* steering)
{
}
void SteeringGlobalState::execute(Steering* steering)
{
        Serial.print("global exe");


}
void SteeringGlobalState::exit(Steering* steering)
{
}

