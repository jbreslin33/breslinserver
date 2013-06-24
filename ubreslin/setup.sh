echo updates
sudo dpkg --configure -a
sudo apt-get dist-upgrade

echo admin 
sudo apt-get install ssh

echo dj
sudo apt-get install mixxx
sudo mkdir /amusic
mkdir /home/$1/.mixxx
sudo chmod 777 -R .mixxx
sudo chown -R $1 /home/$1/.mixxx
sudo chgrp -R $1 /home/$1/.mixxx
sudo cp .mixxx/* /home/$1/.mixxx/

#apache2
sudo apt-get install apache2
sudo cp apache2.conf /etc/apache2
sudo cp php5.conf /etc/apache2/mods-enabled
sudo cp 000-default /etc/apache2/sites-enabled
sudo /etc/init.d/apache2 restart
sudo chmod 777 /home/$1/sandbox/baseapplication/src

#php5
sudo apt-get install php5

#postgresql
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev
sudo cp apache.conf /etc/phppgadmin
sudo service apache2 reload 
sudo cp config.inc.php /etc/phppgadmin
sudo cp postgresql.conf /etc/postgresql/9.1/main

echo ADDITIONAL MANUAL COMMANDS
echo run these next commands manually
echo sudo -u postgres psql postgres
echo \password postgres
echo sudo -u postgres createdb abcandyou 
echo sudo su postgres
echo psql -d abcandyou -f db_build.sql


