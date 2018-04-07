git clone https://github.com/jbreslin33/breslinmathracer.git /home/$1/sandbox/breslinmathracer
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_jbreslin /etc/apache2/sites-available/000-default.conf

sudo -u postgres createdb jamesanthonybreslin

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES
echo ---------------------------------------------
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/apache.conf /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/config.inc.php /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/postgresql.conf /etc/postgresql/9.5/main


echo for fresh
echo from src/ dir run ./src/database/backup/build.sh
echo from src/ dir run ./src/database/build_insert.sh
echo for latest
echo from src/ dir run ./src/database/backup/db_restore.sh
echo from src/ dir run ./src/database/update.sh

echo  backslashpassword postgres dont forget to put a backslash before password, make postgres pass mibesfat
sudo -u postgres psql postgres

