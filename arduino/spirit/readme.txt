for state machine to work
you need to add :
int atexit(void (*func)()) __attribute__((weak));
to Arduino.h

and
int atexit(void (*func)()) { return 0; }
to main.cpp

both files should be in:
sudo vi /usr/share/arduino/hardware/arduino/cores/arduino/

