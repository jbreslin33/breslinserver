echo
echo --------------------------------------------
echo UBRESLIN: ARDUINO
echo UBRESLIN: How to run arduino:
echo UBRESLIN: cd /home/USER/sandbox/Arduino/build
echo UBRESLIN: ant run
echo --------------------------------------------

dmesg tail
sudo ls -l /dev/ttyACM0
sudo usermod -a -G dialout $1
sudo usermod -a -G dialout $1
sudo ls -ld /run/lock
sudo chmod o+rwx /run/lock/

cd /home/$1/sandbox
git clone git://github.com/arduino/Arduino.git
cd /home/$1/sandbox/Arduino/build
ant

echo
echo --------------------------------------------
echo UBRESLIN: ARDUINO MANUAL SETUP
echo --------------------------------------------
echo UBRESLIN: How to run arduino:
echo UBRESLIN: cd /home/USER/sandbox/Arduino/build
echo UBRESLIN: ant run

