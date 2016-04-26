echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------
sudo dpkg --configure -a

echo to get latest without compiling
sudo add-apt-repository ppa:mixxx/mixxx
sudo apt-get update
sudo apt-get install mixxx libportaudio2

echo for music
sudo mkdir /amusic
sudo chmod -R 777 /amusic

echo for the db 
mkdir /home/$1/.mixxx
mkdir /home/$1/.mixxx/midi
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/* /home/$1/.mixxx/
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/controllers/* /home/$1/.mixxx/controllers/
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/midi/* /home/$1/.mixxx/midi/
echo if external then plug in drive and run setup_symbolic_external
