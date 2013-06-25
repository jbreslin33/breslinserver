echo
echo --------------------------------------------
echo UBRESLIN: install hardware for arduino uno
echo --------------------------------------------
dmesg tail
ls -l /dev/ttyACM0
usermod -a -G dialout $1 
sudo usermod -a -G dialout $1
ls -ld /run/lock
sudo chmod o+rwx /run/lock/

echo
echo ---------------------------------------------
echo UBRESLIN: BUILD TOOLS 
echo ---------------------------------------------
sudo apt-get install build-essential
sudo apt-get install openjdk-7-jdk
sudo apt-get install curl
sudo apt-get install gcc-avr avr-libc
sudo apt-get install make
sudo apt-get install ant
sudo apt-get install cmake

echo UBRESLIN: build tools for ogre
sudo apt-get install automake 
sudo apt-get install libtool 
sudo apt-get install libfreetype6-dev libfreeimage-dev libzzip-dev libxrandr-dev libxaw7-dev freeglut3-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt-get install nvidia-cg-toolkit libois-dev libboost-thread-dev
sudo apt-get install doxygen graphviz libcppunit-dev

echo
echo ---------------------------------------------
echo UBRESLIN: OGRE 
echo ---------------------------------------------
cd /home/$1/sandbox
hg clone https://bitbucket.org/sinbad/ogre/ -u v1-7
mkdir ogre/build
cd ogre/build
cmake ..
make
sudo make install


echo
echo --------------------------------------------
echo UBRESLIN: ARDUINO 
echo --------------------------------------------
cd /home/$1/sandbox
git clone git://github.com/arduino/Arduino.git
cd /home/$1/sandbox/Arduino/build
ant

echo
echo ---------------------------------------------
echo UBRESLIN: UPDATES 
echo ---------------------------------------------
sudo dpkg --configure -a
sudo apt-get dist-upgrade

echo
echo ---------------------------------------------
echo UBRESLIN: SOURCE CONTROL 
echo ---------------------------------------------
sudo apt-get install git


echo
echo ---------------------------------------------
echo UBRESLIN: PROJECTS 
echo ---------------------------------------------
echo projects
cd /home/$1/sandbox

if [ "$1" = "jbreslin" ]; then
su jbreslin 
hg clone https://jbreslin33@code.google.com/p/baseapplication/
hg clone https://jbreslin33@code.google.com/p/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
hg clone https://jbreslin33@code.google.com/p/breslintalker/
hg clone https://jbreslin33@code.google.com/r/jbreslin33-logger/
fi

if [ "$1" = "lbreslin" ]; then
hg clone https://lbreslin6@code.google.com/p/baseapplication/
hg clone https://lbreslin6@code.google.com/p/breslininput/
hg clone https://lbreslin6@code.google.com/p/breslinnetwork/
hg clone https://lbreslin6@code.google.com/p/breslintalker/
hg clone https://lbreslin6@code.google.com/p/lukes-webpage/
fi



echo
echo ---------------------------------------------
echo UBRESLIN: NODE AND PERMISSIONS FOR baseapplication 
echo ---------------------------------------------
cd /home/$1/sandbox
DIR_BASEAPPLICATION="baseapplication"
if [ -d "$DIR_BASEAPPLICATION" ]; then
cd /home/$1/sandbox/baseapplication/src
git clone git://github.com/joyent/node.git
cd node
./configure
sudo make
sudo make install
curl http://npmjs.org/install.sh
sudo npm install -d
sudo chmod -R 777 /home/$1/sandbox/baseapplication/src/web/insert/upload
fi

echo
echo ---------------------------------------------
echo UBRESLIN: NODE FOR jbreslin33-logger 
echo ---------------------------------------------
cd /home/$1/sandbox
DIR_JBRESLIN33_LOGGER="jbreslin33-logger"
if [ -d "$DIR_JBRESLIN33_LOGGER" ]; then
cd /home/$1/sandbox/jbreslin33-logger/src
git clone git://github.com/joyent/node.git
cd node
./configure
sudo make
sudo make install
curl http://npmjs.org/install.sh
sudo npm install -d
sudo chmod -R 777 /home/$1/sandbox/jbreslin33-logger/src/web/insert/upload
fi

echo
echo ---------------------------------------------
echo UBRESLIN: ADMIN 
echo ---------------------------------------------
sudo apt-get install ssh

echo
echo ---------------------------------------------
echo UBRESLIN: DJ 
echo ---------------------------------------------
sudo apt-get install mixxx
sudo mkdir /amusic
mkdir /home/$1/.mixxx
sudo chmod 777 -R .mixxx
sudo chown -R $1 /home/$1/.mixxx
sudo chgrp -R $1 /home/$1/.mixxx
sudo cp .mixxx/* /home/$1/.mixxx/

echo
echo --------------------------------------------
echo UBRESLIN: APACHE 
echo --------------------------------------------
sudo apt-get install apache2
cd /home/$1/sandbox/breslinserver/ubreslin
sudo cp apache2.conf /etc/apache2
sudo cp php5.conf /etc/apache2/mods-enabled
sudo cp 000-default /etc/apache2/sites-enabled
sudo /etc/init.d/apache2 restart
sudo chmod 777 /home/$1/sandbox/baseapplication/src


echo
echo --------------------------------------------
echo UBRESLIN: PHP 
echo --------------------------------------------
sudo apt-get install apache2
sudo apt-get install php5

echo
echo --------------------------------------------
echo UBRESLIN: POSTGRESQL 
echo --------------------------------------------
sudo apt-get install apache2
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev
sudo cp apache.conf /etc/phppgadmin
sudo service apache2 reload 
sudo cp config.inc.php /etc/phppgadmin
sudo cp postgresql.conf /etc/postgresql/9.1/main

echo
echo --------------------------------------------
echo UBRESLIN: ABCANDYOU 
echo --------------------------------------------
sudo -u postgres createdb abcandyou 

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
echo \password postgres
echo turn off synchronous_commit in /etc/postgresql/9.1/main/postgresql.conf

echo
echo --------------------------------------------
echo UBRESLIN: ABCANDYOU 
echo --------------------------------------------
echo UBRESLIN: may be down from a clone directory instead i.e. jbreslin33-logger:
echo cd /home/jbreslin/sandbox/baseapplication/src
echo sudo -u postgres psql -d abcandyou -f src/database/db_build.sql

echo
echo --------------------------------------------
echo UBRESLIN: ARDUINO
echo --------------------------------------------
echo UBRESLIN: How to run arduino: 
echo UBRESLIN: cd /home/USER/sandbox/Arduino/build
echo UBRESLIN: ant run

echo
echo --------------------------------------------
echo UBRESLIN: NODE
echo --------------------------------------------
echo comment out the exception like so in /home/jbreslin/sandbox/baseapplication/src/node/lib/path.js around line 380ish:
echo then compile again
