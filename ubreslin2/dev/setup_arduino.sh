echo for instructions goto: https://github.com/arduino/arduino-cli
echo rm old arduino-cli from /usr/local/bin
sudo rm /usr/local/bin/arduino-cli
echo curl to dowload
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo mv executable to /usr/local/bin
sudo mv bin/arduino-cli /usr/local/bin
echo rm original
sudo rm -r bin

echo create a blank sketch
arduino-cli sketch new MyFirstSketch

echo cp blink code to new sketch
cp code.ino MyFirstSketch.ino

echo update core
arduino-cli core update-index

echo get board list
arduino-cli board list

echo install correct core
arduino-cli core install arduino:avr

echo list current cores
arduino-cli core list

echo config
arduino-cli config init

echo compile sketch
arduino-cli compile --fqbn arduino:avr:uno MyFirstSketch

echo port permissions
sudo chmod a+rw /dev/ttyACM0

echo upload to arduino
arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno MyFirstSketch
