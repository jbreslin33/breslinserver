echo
echo ---------------------------------------------
echo UBRESLIN: MIXXX
echo ---------------------------------------------
sudo apt-get install mixxx
sudo mkdir /amusic
sudo chmod -R 777 /amusic
mkdir /home/$1/.mixxx
mkdir /home/$1/.mixxx/midi
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/* /home/$1/.mixxx/
cp /home/$1/sandbox/breslinserver/ubreslin2/.mixxx/midi/* /home/$1/.mixxx/midi/


