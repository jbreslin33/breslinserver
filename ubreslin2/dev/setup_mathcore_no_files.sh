git clone https://github.com/jbreslin33/breslinmathracer.git /home/$1/sandbox/breslinmathracer

sudo -u postgres createdb jamesanthonybreslin

echo -----------------------web server restart------------------------------
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo restore db and update to latest saved
echo from src/ dir run ./src/database/backup/db_restore.sh
echo from src/ dir run ./src/database/update.sh

echo  backslashpassword postgres dont forget to put a backslash before password, make postgres pass mibesfat
sudo -u postgres psql postgres
