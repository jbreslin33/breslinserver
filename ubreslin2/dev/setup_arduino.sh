sudo apt-get install git make gcc ant openjdk-8-jdk unzip
git clone --depth 1 https://github.com/arduino/Arduino.git ~/sandbox/arduino
cd ~/sandbox/arduino/build
ant dist
echo ant run
cd ~/sandbox/arduino/build/linux/work
echo install arduino system wide
sudo ./install.sh

