/*
*/
#ifndef SteeringStateMachine_h
#define SteeringStateMachine_h

#include "SteeringState.h"
#include <assert.h>

class SteeringStateMachine
{
private:
 
  //a pointer to the agent that owns this instance
  Steering*          mOwner;
 
  SteeringState*   mCurrentState;
 
  //a record of the last state the agent was in
  SteeringState*   mPreviousState;
 
  //this state logic is called every time the FSM is updated
  SteeringState*   mGlobalState;
 
public:
 
  SteeringStateMachine(Steering* owner):mOwner(owner),
                                   mCurrentState(0),
                                   mPreviousState(0),
                                   mGlobalState(0)
  {}
 
  //use these methods to initialize the FSM
  void setCurrentState(SteeringState* s){mCurrentState = s;}
  void setGlobalState(SteeringState* s) {mGlobalState = s;}
  void setPreviousState(SteeringState* s){mPreviousState = s;}
 
  //call this to update the FSM
  void  update()const
  {
    //if a global state exists, call its execute method
    if (mGlobalState)   mGlobalState->execute(mOwner);
 
    //same for the current state
    if (mCurrentState) mCurrentState->execute(mOwner);
  }
 
  //change to a new state
  void  changeState(SteeringState* mNewState)
  {
    //assert(mNewState &&
     //      "<StateMachine::changeState>: trying to change to a null state");
 
    //keep a record of the previous state
    mPreviousState = mCurrentState;
 
    //call the exit method of the existing state
    mCurrentState->exit(mOwner);
 
    //change state to the new state
    mCurrentState = mNewState;
 
    //call the entry method of the new state
    mCurrentState->enter(mOwner);
  }
 
  //change state back to the previous state
  void  revertToPreviousState()
  {
    changeState(mPreviousState);
  }
 
  //accessors
  SteeringState*  getCurrentState()  const{return mCurrentState;}
  SteeringState*  getGlobalState()   const{return mGlobalState;}
  SteeringState*  getPreviousState() const{return mPreviousState;}
 
  //returns true if the current state’s type is equal to the type of the
  //class passed as a parameter.
  bool  isInState(const SteeringState& st)const;
};
#endif
