echo
echo ---------------------------------------------
echo UBRESLIN: BACKUP MIXXX DB 
echo ---------------------------------------------

echo backup db with rsync
rsync -r ../../../.././.mixxx/ dotmixxx/
