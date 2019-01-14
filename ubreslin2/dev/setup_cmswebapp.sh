echo -------------------------- checkout cmswebapp from git ----------------------------
git clone https://github.com/jbreslin33/cmswebapp.git ~/sandbox/cmswebapp

echo -------------------create db --------------
sudo -u postgres createdb cms

echo ----------------------apache web server restart------------------------------
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo ------------------------restore db and update to latest saved-----------------
echo from src/ dir run ./src/database/backup/db_restore.sh
echo from src/ dir run ./src/database/update.sh

echo  -------------------------------- set password to mibesfat ----------------
sudo -u postgres psql postgres

echo -----------------------copy files ------------------------------------
sudo cp default_jbreslin /etc/apache2/sites-available/000-default.conf
sudo cp apache.conf /etc/phppgadmin

echo -----------------------web server restart------------------------------
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

