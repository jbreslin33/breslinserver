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
sudo apt-get install apache2 
sudo apt-get install php5 
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev
sudo apt-get install vlc

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
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/ogre/

echo
echo ---------------------------------------------
echo UBRESLIN: PROJECTS
echo ---------------------------------------------
echo projects
cd /home/$1/sandbox

if [ "$1" = "jbreslin" ]; then
hg clone https://jbreslin33@code.google.com/p/baseapplication/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/baseapplication/
hg clone https://jbreslin33@code.google.com/p/breslininput/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinnetwork/
hg clone https://jbreslin33@code.google.com/p/breslintalker/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslintalker/
hg clone https://jbreslin33@code.google.com/p/breslinclient/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinclient/
hg clone https://jbreslin33@code.google.com/p/breslinmathracer/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinmathracer/
hg clone https://jbreslin33@code.google.com/p/armygame/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/armygame/
fi

if [ "$1" = "v1201" ]; then
hg clone https://jbreslin33@code.google.com/p/baseapplication/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/baseapplication/
hg clone https://jbreslin33@code.google.com/p/breslininput/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinnetwork/
hg clone https://jbreslin33@code.google.com/p/breslintalker/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslintalker/
hg clone https://jbreslin33@code.google.com/p/breslinclient/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinclient/
hg clone https://jbreslin33@code.google.com/p/breslinmathracer/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/breslinmathracer/
hg clone https://jbreslin33@code.google.com/p/armygame/
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/armygame/
fi

if [ "$1" = "lbreslin" ]; then
hg clone https://lbreslin6@code.google.com/p/baseapplication/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/baseapplication/
hg clone https://lbreslin6@code.google.com/p/breslininput/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslininput/
hg clone https://lbreslin6@code.google.com/p/breslinnetwork/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslinnetwork/
hg clone https://lbreslin6@code.google.com/p/breslintalker/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslintalker/
hg clone https://lbreslin6@code.google.com/p/breslinclient/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslinclient/
hg clone https://lbreslin6@code.google.com/p/breslinmathracer/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/breslinmathracer/
hg clone https://lbreslin6@code.google.com/p/armygame/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/armygame/
hg clone https://lbreslin6@code.google.com/p/lukes-webpage/
sudo chown -R lbreslin:lbreslin /home/$1/sandbox/lukes-webpage/
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
echo curl http://npmjs.org/install.sh
echo sudo npm install -d
sudo chmod -R 777 /home/$1/sandbox/baseapplication/src/web/insert/upload
sudo chown -R jbreslin:jbreslin /home/$1/sandbox/baseapplication/src/
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
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/postgresql.conf /etc/postgresql/9.1/main
echo XXXXXXsudo cp /home/$1/sandbox/breslinserver/ubreslin2/udp_wrap.cc /home/$1/sandbox/baseapplication/src/node/src
echo XXXXXXsudo cp /home/$1/sandbox/breslinserver/ubreslin2/path.js /home/$1/sandbox/baseapplication/src/node/lib
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

echo
echo --------------------------------------------
echo UBRESLIN: ABCANDYOU
echo --------------------------------------------
echo UBRESLIN: may be down from a clone directory instead i.e. jbreslin33-logger
echo cd /home/jbreslin/sandbox/baseapplication/src
echo ./src/database/build.sh

echo
echo --------------------------------------------
echo UBRESLIN: NODE
echo --------------------------------------------
echo then compile again
echo cd /home/jbreslin/sandbox/baseapplication/src
echo ./compile
echo in browser localhost/web/login/login_form.php
echo signup
echo viso mibesfat
echo insert upload visitation addstudentscrips v1300.txt

