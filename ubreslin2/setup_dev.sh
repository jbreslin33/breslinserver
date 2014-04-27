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
echo UBRESLIN: PROJECTS
echo ---------------------------------------------
echo projects
cd /home/$1/sandbox

if [ "$1" = "jbreslin" ]; then
hg clone https://jbreslin33@code.google.com/p/breslininput/
sudo chown -R $1:$2 /home/$1/sandbox/breslininput/
hg clone https://jbreslin33@code.google.com/p/breslinnetwork/
sudo chown -R $1:$2 /home/$1/sandbox/breslinnetwork/
hg clone https://jbreslin33@code.google.com/p/breslintalker/
sudo chown -R $1:$2 /home/$1/sandbox/breslintalker/
hg clone https://jbreslin33@code.google.com/p/breslinclient/
sudo chown -R $1:$2 /home/$1/sandbox/breslinclient/
hg clone https://jbreslin33@code.google.com/p/breslinmathracer/
sudo chown -R $1:$2 /home/$1/sandbox/breslinmathracer/
hg clone https://jbreslin33@code.google.com/p/armygame/
sudo chown -R $1:$2 /home/$1/sandbox/armygame/
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/default_jbreslin /etc/apache2/sites-available/default
fi

if [ "$1" = "lbreslin" ]; then
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
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/default_lbreslin /etc/apache2/sites-available/default
fi

if [ "$1" = "bbreslin" ]; then
hg clone https://bbreslin99@code.google.com/p/breslininput/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslininput/
hg clone https://bbreslin99@code.google.com/p/breslinnetwork/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslinnetwork/
hg clone https://bbreslin99@code.google.com/p/breslintalker/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslintalker/
hg clone https://bbreslin99@code.google.com/p/breslinclient/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslinclient/
hg clone https://bbreslin99@code.google.com/p/breslinmathracer/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/breslinmathracer/
hg clone https://bbreslin99@code.google.com/p/armygame/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/armygame/
hg clone https://bbreslin99@code.google.com/p/lukes-webpage/
sudo chown -R bbreslin:bbreslin /home/$1/sandbox/lukes-webpage/
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/default_bbreslin /etc/apache2/sites-available/default
fi

echo create db jamesanthony
sudo -u postgres createdb jamesanthonybreslin

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES 
echo ---------------------------------------------
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/apache.conf /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/config.inc.php /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/postgresql.conf /etc/postgresql/9.1/main
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
