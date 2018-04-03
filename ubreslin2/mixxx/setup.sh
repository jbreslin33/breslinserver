echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------
sudo dpkg --configure -a

echo to get latest without compiling
sudo add-apt-repository ppa:mixxx/mixxx
sudo apt-get update
sudo apt-get install mixxx libportaudio2
sudo apt-get install filezilla

sudo apt-get install id3tool
sudo apt-get install id3v2
sudo apt-get install easytag

