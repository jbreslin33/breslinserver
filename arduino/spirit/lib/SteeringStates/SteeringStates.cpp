#include "SteeringStates.h"

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
}
void SteeringGlobalState::exit(Steering* steering)
{
}

/*
FORWARD
*/

SteeringForwardState* SteeringForwardState::Instance()
{
  static SteeringForwardState instance;

  return &instance;
}

void SteeringForwardState::enter(Steering* steering)
{
}
void SteeringForwardState::execute(Steering* steering)
{
}
void SteeringForwardState::exit(Steering* steering)
{
}

/*
REVERSE
*/
SteeringReverseState* SteeringReverseState::Instance()
{
  static SteeringReverseState instance;

  return &instance;
}

void SteeringReverseState::enter(Steering* steering)
{
}
void SteeringReverseState::execute(Steering* steering)
{
}
void SteeringReverseState::exit(Steering* steering)
{
}

