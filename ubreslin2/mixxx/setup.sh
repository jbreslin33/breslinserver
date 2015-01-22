echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------
echo sudo dpkg --configure -a

echo to get latest without compiling
sudo add-apt-repository ppa:mixxx/mixxx
sudo apt-get update
sudo apt-get install mixxx libportaudio2

echo for music
sudo mkdir /amusic
sudo chmod -R 777 /amusic

echo if external then plug in drive and run setup_symbolic_external
