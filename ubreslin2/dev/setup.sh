echo
echo --------------------------------------------
echo UBRESLIN: UPDATES 
echo --------------------------------------------
sudo apt-get -y dist-upgrade

echo
echo --------------------------------------------
echo UBRESLIN: INSTALL PROGRAMS 
echo --------------------------------------------
sudo apt-get -y install build-essential
sudo apt-get -y install libtool
sudo apt-get -y install apache2 
sudo apt-get -y install php
sudo apt-get -y install postgresql
sudo apt-get -y install phppgadmin
sudo apt-get -y install libpq-dev
sudo apt-get -y install php-mbstring
sudo apt-get -y install php5 
sudo apt-get -y install libapache2-mod-php5


if [ "$1" = "jbreslin" ]; then
git clone https://github.com/jbreslin33/breslinmathracer.git
echo sudo chown -R $1:$2 /home/$1/sandbox/breslinmathracer/
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_jbreslin /etc/apache2/sites-available/000-default.conf
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/apache.conf /etc/phppgadmin
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/config.inc.php /etc/phppgadmin
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/postgresql.conf /etc/postgresql/9.5/main
fi

if [ "$1" = "lbreslin" ]; then
git clone https://github.com/jbreslin33/breslinmathracer.git
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslinmathracer/
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_lbreslin /etc/apache2/sites-available/000-default.conf
fi

if [ "$1" = "bbreslin" ]; then
git clone https://github.com/jbreslin33/breslinmathracer.git
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslinmathracer/
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_bbreslin /etc/apache2/sites-available/000-default.conf
fi

echo create db jamesanthony
sudo -u postgres createdb jamesanthonybreslin

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES 
echo ---------------------------------------------

sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo
echo --------------------------------------------
echo UBRESLIN: ADDITIONAL MANUAL COMMANDS
echo --------------------------------------------
echo UBRESLIN: run these next commands manually

echo
echo --------------------------------------------
echo UBRESLIN: POSTGRESQL
echo --------------------------------------------
echo sudo -u postgres psql postgres
echo  backslashpassword postgres dont forget to put a backslash before password, make postgres pass mibesfat

echo for adding to db 
echo sudo chmod -R 777 web/insert/

echo from src/ dir run ./src/database/build_create_tables.sh
echo from src/ dir run ./src/database/build_insert.sh
