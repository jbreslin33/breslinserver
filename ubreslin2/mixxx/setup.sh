echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------

sudo apt-get update
sudo apt-get install 
sudo apt-get upgrade 
sudo apt-get install build-essential  

sudo apt-get build-dep mixxx 
sudo apt-get install git scons libqt4-dev libqt4-sql-sqlite libportmidi-dev libopus-dev libshout-dev libtag1-dev libprotobuf-dev protobuf-compiler libvamp-hostsdk3 vamp-plugin-sdk libusb-1.0-0-dev libfftw3-dev libmad0-dev portaudio19-dev libchromaprint-dev librubberband-dev libsqlite3-dev

sudo apt-get install libfaad-dev libmp4v2-dev # required for M4A support

git clone -b 1.11 https://github.com/mixxxdj/mixxx.git
cd /home/jbreslin/sandbox/mixxx/mixxx
scons



echo sudo dpkg --configure -a
echo sudo apt-get update
echo sudo apt-get install 

echo to get latest without compiling
echo sudo add-apt-repository ppa:mixxx/mixxx
echo sudo apt-get install mixxx libportaudio2

echo for music
echo sudo mkdir /amusic
echo sudo chmod -R 777 /amusic

cd /home/jbreslin/sandbox




