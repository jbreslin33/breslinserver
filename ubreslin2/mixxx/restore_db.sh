echo
echo ---------------------------------------------
echo UBRESLIN: RESTORE MIXXX DB 
echo ---------------------------------------------

echo create music directory
sudo mkdir /amusic
sudo chmod -R 777 /amusic

echo restore db with rsync
rsync -r dotmixxx/ ../../../.././.mixxx/

echo set symbolic link from music folder to /amusic


