echo
echo ---------------------------------------------
echo UBRESLIN: RESTORE MIXXX DB 
echo ---------------------------------------------

echo create music directory
sudo mkdir /amusic
sudo chmod -R 777 /amusic

echo restore db 
cp /home/$1/sandbox/breslinserver/ubreslin2/mixxx/mixxxdb.sqlite /home/$1/.mixxx/mixxxdb.sqlite
cp /home/$1/sandbox/breslinserver/ubreslin2/mixxx/controllers/* /home/$1/.mixxx/controllers/

echo if external then plug in drive and run setup_symbolic_external
