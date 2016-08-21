/*
  Morse.h - Library for flashing Morse code.
  Created by David A. Mellis, November 2, 2007.
  Released into the public domain.
*/
#ifndef State_h
#define State_h

#include "Arduino.h"

class State
{
  public:
    State(int pin);
    void dot();
    void dash();
  private:
    int _pin;
};

#endif
