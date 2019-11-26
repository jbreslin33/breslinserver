echo for instructions goto: https://github.com/arduino/arduino-cli
echo rm old arduino-cli from /usr/local/bin
sudo rm /usr/local/bin/arduino-cli
echo curl to dowload
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo mv executable to /usr/local/bin
sudo mv bin/arduino-cli /usr/local/bin
echo rm original
sudo rm -r bin


