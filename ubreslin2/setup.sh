echo
echo --------------------------------------------
echo UBRESLIN: UPDATES 
echo --------------------------------------------
sudo apt-get dist-upgrade

echo
echo --------------------------------------------
echo UBRESLIN: INSTALL PROGRAMS 
echo --------------------------------------------
sudo apt-get install build-essential
sudo apt-get install openjdk-7-jdk
sudo apt-get install curl
sudo apt-get install gcc-avr avr-libc
sudo apt-get install make
sudo apt-get install ant
sudo apt-get install cmake
sudo apt-get install automake
sudo apt-get install libtool
sudo apt-get install libfreetype6-dev libfreeimage-dev libzzip-dev libxrandr-dev libxaw7-dev freeglut3-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt-get install nvidia-cg-toolkit libois-dev libboost-thread-dev
sudo apt-get install doxygen graphviz libcppunit-dev
sudo apt-get install git
sudo apt-get install ssh 
sudo apt-get install mixxx 
sudo apt-get install apache2 
sudo apt-get install php5 
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev
sudo apt-get install vlc

echo
echo --------------------------------------------
echo UBRESLIN: ARDUINO 
echo UBRESLIN: How to run arduino:
echo UBRESLIN: cd /home/USER/sandbox/Arduino/build
echo UBRESLIN: ant run
echo --------------------------------------------

dmesg tail
sudo ls -l /dev/ttyACM0
sudo usermod -a -G dialout $1
sudo usermod -a -G dialout $1
sudo ls -ld /run/lock
sudo chmod o+rwx /run/lock/

cd /home/$1/sandbox
git clone git://github.com/arduino/Arduino.git
cd /home/$1/sandbox/Arduino/build
ant

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
echo ---------------------------------------------
echo UBRESLIN: PROJECTS
echo ---------------------------------------------
echo projects
cd /home/$1/sandbox

if [ "$1" = "jbreslin" ]; then
hg clone https://jbreslin33@code.google.com/p/baseapplication/
hg clone https://jbreslin33@code.google.com/p/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
hg clone https://jbreslin33@code.google.com/p/breslintalker/
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
echo UBRESLIN: NODE FOR baseapplication 
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
echo create db abcandyou
sudo -u postgres createdb abcandyou

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES 
echo ---------------------------------------------


sudo cp /home/$1/sandbox/breslinserver/ubreslin2/apache2.conf /etc/apache2
echo skip next one
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/php5.conf /etc/apache2/mods-enabled

sudo cp /home/$1/sandbox/breslinserver/ubreslin2/000-default /etc/apache2/sites-enabled

sudo cp /home/$1/sandbox/breslinserver/ubreslin2/apache.conf /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/config.inc.php /etc/phppgadmin
sudo cp postgresql.conf /etc/postgresql/9.1/main

sudo service apache2 reload
sudo /etc/init.d/apache2 restart

