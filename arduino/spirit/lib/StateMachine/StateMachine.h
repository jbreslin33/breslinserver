/*
*/
#ifndef STATE_MACHINE_H
#define STATE_MACHINE_H

#include <assert.h>
#include "State.h"

template <class entity_type>

class StateMachine
{
private:
 
  //a pointer to the agent that owns this instance
  entity_type*          mOwner;
 
  State<entity_type>*   mCurrentState;
 
  //a record of the last state the agent was in
  State<entity_type>*   mPreviousState;
 
  //this state logic is called every time the FSM is updated
  State<entity_type>*   mGlobalState;
 
public:
 
  StateMachine(entity_type* owner):mOwner(owner),
                                   mCurrentState(0),
                                   mPreviousState(0),
                                   mGlobalState(0)
  {}

	virtual ~StateMachine() {}
 
  //use these methods to initialize the FSM
  void setCurrentState(State<entity_type>* s){mCurrentState = s;}
  void setGlobalState(State<entity_type>* s) {mGlobalState = s;}
  void setPreviousState(State<entity_type>* s){mPreviousState = s;}
 
  //call this to update the FSM
  void  update()const
  {
    //if a global state exists, call its execute method
    if (mGlobalState)   mGlobalState->execute(mOwner);
 
    //same for the current state
    if (mCurrentState) mCurrentState->execute(mOwner);
  }
 
  //change to a new state
  void  changeState(State<entity_type>* mNewState)
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
  State<entity_type>*  getCurrentState()  const{return mCurrentState;}
  State<entity_type>*  getGlobalState()   const{return mGlobalState;}
  State<entity_type>*  getPreviousState() const{return mPreviousState;}
 
  //returns true if the current state’s type is equal to the type of the
  //class passed as a parameter.
  bool  isInState(const State<entity_type>& st)const;
};
#endif
