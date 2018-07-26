echo
echo ---------------------------------------------
echo UBRESLIN: BACKUP MIXXX DB 
echo ---------------------------------------------

echo backup db with rsync
#rsync -r ../../../.././.mixxx/ dotmixxx/
rsync -r ../../../.././.mixxx/analysis dotmixxx/analysis
rsync ../../../.././.mixxx/mixxxdb.sqlite dotmixxx/mixxxdb.sqlite
rsync ../../../.././.mixxx/controllers/Numark-Mixtrack-3.midi.xml dotmixxx/controllers/Numark-Mixtrack-3.midi.xml
rsync ../../../.././.mixxx/controllers/Numark-Mixtrack-3-scripts.js dotmixxx/controllers/Numark-Mixtrack-3-scripts.js

