echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------
sudo apt-get dist-upgrade
sudo apt-get install git
sudo apt-get build-dep mixxx 
sudo apt-get install git scons libqt4-dev libqt4-sql-sqlite libportmidi-dev libshout-dev libtag1-dev libprotobuf-dev protobuf-compiler libvamp-hostsdk3 vamp-plugin-sdk libusb-1.0-0-dev libfftw3-dev libchromaprint-dev
sudo apt-get install libfaad-dev libmp4v2-dev # required for M4A support

cd /home/$1/sandbox/
git clone -b 1.11 https://github.com/mixxxdj/mixxx.git


sudo mkdir /amusic
sudo chmod -R 777 /amusic
mkdir /home/$1/.mixxx
mkdir /home/$1/.mixxx/midi
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/* /home/$1/.mixxx/
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/midi/* /home/$1/.mixxx/midi/
echo if external then plug in drive and run setup_symbolic_external
