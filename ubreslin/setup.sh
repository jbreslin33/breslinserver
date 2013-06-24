echo updates
sudo dpkg --configure -a
sudo apt-get dist-upgrade

#source control
sudo apt-get install git

#build programs
sudo apt-get install build-essentials
sudo apt-get install openjdk-7-jdk

#projects
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
cd /home/$1/sandbox/breslinserver/ubreslin
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

#arduino
sudo apt-get install gcc-avr avr-libc
sudo apt-get install make
sudo apt-get install ant
cd /home/$1/sandbox
echo UBRESLIN: get arduino source
git clone git://github.com/arduino/Arduino.git
cd /home/$1/sandbox/Arduino/build
ant

echo install hardware
dmesg tail
ls -l /dev/ttyACM0
usermod -a -G dialout jbreslin
sudo usermod -a -G dialout jbreslin
ls -ld /run/lock
sudo chmod o+rwx /run/lock/

echo ADDITIONAL MANUAL COMMANDS
echo run these next commands manually

echo postgres stuff...
echo sudo -u postgres psql postgres
echo \password postgres

echo for abcyandyou db
echo sudo -u postgres createdb abcandyou 
echo sudo su postgres
echo psql -d abcandyou -f db_build.sql

echo Arduino stuff...
echo to just run arduino development environment
echo cd /home/USER/sandbox/Arduino/build
echo ant run

