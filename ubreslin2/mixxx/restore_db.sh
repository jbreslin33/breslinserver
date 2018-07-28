echo
echo ---------------------------------------------
echo UBRESLIN: RESTORE MIXXX DB 
echo ---------------------------------------------

echo create music directory
sudo mkdir /amusic
sudo chmod -R 777 /amusic

echo symbolic link to external drive
sudo ln -s /media/jbreslin/A01677801677566E/amusic/* /amusic

echo restore db with rsync
#rsync -r dotmixxx/ ../../../.././.mixxx/
rsync -r dotmixxx/analysis ../../../.././.mixxx/analysis 
rsync dotmixxx/mixxxdb.sqlite ../../../.././.mixxx/mixxxdb.sqlite
#rsync dotmixxx/controllers/Numark-Mixtrack-3.midi.xml ../../../.././.mixxx/controllers/Numark-Mixtrack-3.midi.xml
#rsync dotmixxx/controllers/Numark-Mixtrack-3-scripts.js ../../../.././.mixxx/controllers/Numark-Mixtrack-3-scripts.js 
