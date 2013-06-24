echo UBRESLIN: UPDATES 
sudo dpkg --configure -a
sudo apt-get dist-upgrade

echo UBRESLIN: SOURCE CONTROL 
sudo apt-get install git

echo UBRESLIN: BUILD TOOLS 
sudo apt-get install build-essential
sudo apt-get install openjdk-7-jdk

echo UBRESLIN: PROJECTS 
echo projects
cd /home/$1/sandbox

if [ "$1" = "jbreslin" ]; then
hg clone https://jbreslin33@code.google.com/p/baseapplication/
hg clone https://jbreslin33@code.google.com/p/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
fi

if [ "$1" = "lbreslin" ]; then
hg clone https://lbreslin6@code.google.com/p/baseapplication/
hg clone https://lbreslin6@code.google.com/p/breslininput/
hg clone https://lbreslin6@code.google.com/p/breslinnetwork/
hg clone https://lbreslin6@code.google.com/p/lukes-webpage/
fi

echo UBRESLIN: ADMIN 
sudo apt-get install ssh

echo UBRESLIN: DJ 
sudo apt-get install mixxx
sudo mkdir /amusic
mkdir /home/$1/.mixxx
sudo chmod 777 -R .mixxx
sudo chown -R $1 /home/$1/.mixxx
sudo chgrp -R $1 /home/$1/.mixxx
sudo cp .mixxx/* /home/$1/.mixxx/

echo UBRESLIN: APACHE 
sudo apt-get install apache2
cd /home/$1/sandbox/breslinserver/ubreslin
sudo cp apache2.conf /etc/apache2
sudo cp php5.conf /etc/apache2/mods-enabled
sudo cp 000-default /etc/apache2/sites-enabled
sudo /etc/init.d/apache2 restart
sudo chmod 777 /home/$1/sandbox/baseapplication/src

echo UBRESLIN: PHP 
sudo apt-get install apache2
sudo apt-get install php5

echo UBRESLIN: POSTGRESQL 
sudo apt-get install apache2
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev
sudo cp apache.conf /etc/phppgadmin
sudo service apache2 reload 
sudo cp config.inc.php /etc/phppgadmin
sudo cp postgresql.conf /etc/postgresql/9.1/main

echo UBRESLIN: ARDUINO 
sudo apt-get install gcc-avr avr-libc
sudo apt-get install make
sudo apt-get install ant
cd /home/$1/sandbox
echo UBRESLIN: get arduino source
git clone git://github.com/arduino/Arduino.git
cd /home/$1/sandbox/Arduino/build
ant

echo UBRESLIN: install hardware for arduino uno
dmesg tail
ls -l /dev/ttyACM0
usermod -a -G dialout jbreslin
sudo usermod -a -G dialout jbreslin
ls -ld /run/lock
sudo chmod o+rwx /run/lock/

echo UBRESLIN: ADDITIONAL MANUAL COMMANDS
echo UBRESLIN: run these next commands manually

echo UBRESLIN: postgres stuff...
echo UBRESLIN: sudo -u postgres psql postgres
echo UBRESLIN: \password postgres

echo UBRESLIN: for abcyandyou db
echo UBRESLIN: sudo -u postgres createdb abcandyou 
echo UBRESLIN: sudo su postgres
echo UBRESLIN: psql -d abcandyou -f db_build.sql

echo UBRESLIN: Arduino stuff...
echo UBRESLIN: to just run arduino development environment
echo UBRESLIN: cd /home/USER/sandbox/Arduino/build
echo UBRESLIN: ant run

