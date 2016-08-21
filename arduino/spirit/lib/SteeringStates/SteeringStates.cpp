#include "SteeringStates.h"
#include "Steering.h"

SteeringGlobalState* SteeringGlobalState::Instance()
{
  static SteeringGlobalState instance;

  return &instance;
}

void SteeringGlobalState::Execute(Steering* steering)
{
  //if (RandFloat() < 0.1)
  //{
    //wife->GetFSM()->ChangeState(VisitBathroom::Instance());
  //}
}

SteeringForwardState* SteeringForwardState::Instance()
{
  static SteeringForwardState instance;

  return &instance;
}

void SteeringForwardState::Enter(Steering* steering)
{
}
void SteeringForwardState::Execute(Steering* steering)
{
}
void SteeringForwardState::Exit(Steering* steering)
{
}

