/*
  Morse.h - Library for flashing Morse code.
  Created by David A. Mellis, November 2, 2007.
  Released into the public domain.
*/
#ifndef State_h
#define State_h

#include "Arduino.h"

template <class entity_type>
class State
{
public:
 
  virtual void Enter(entity_type*)=0;
 
  virtual void Execute(entity_type*)=0;
 
  virtual void Exit(entity_type*)=0;
 
  virtual ~State(){}
};

#endif
