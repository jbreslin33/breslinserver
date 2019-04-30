echo Download arduino from arduino site then run:
echo cd into main dir then run
echo sudo ./install.sh
sudo usermod -a -G dialout $1
sudo chmod a+rw /dev/ttyACM0
