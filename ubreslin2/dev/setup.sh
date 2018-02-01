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
sudo apt-get -y install git
sudo apt-get -y install ssh 
sudo apt-get -y install apache2 

echo install php!!!!!
sudo apt-get -y install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update
sudo apt-get -y install php

sudo apt-get -y install postgresql-9.5

sudo apt-get -y install phppgadmin
sudo apt-get -y install libpq-dev
sudo apt-get -y install vlc
sudo apt-get -y install mpg123

echo install java!!!!!
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java8-installer

sudo apt-get -y install graphviz
sudo apt-get -y install dia 
sudo apt-get -y install chromium-browser
sudo apt-get -y install mplayer
sudo apt-get -y install php-mbstring

if [ `getconf LONG_BIT` = "64" ]
then
    echo "I'm 64-bit"
echo chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

echo slack
sudo apt-get install libcurl3
sudo dpkg --install ../../visitationbvm/cinnamon/slack-desktop-2.6.3-amd64.deb

else
    echo "I'm 32-bit"
fi

echo remote
sudo apt-get -y install remmina 
sudo apt-get -y install remmina-plugin-vnc 

echo for djing
sudo apt-get -y install soundconverter

echo virtualbox
#sudo apt-get -y install linux-headers-generic build-essential dkms
#sudo apt-get -y remove --purge virtualbox-dkms
#sudo apt-get -y install virtualbox-dkms
#sudo apt-get -y install virtualbox-qt

echo kvm
sudo apt-get install qemu-kvm libvirt-bin bridge-utils
sudo adduser jbreslin libvirt

echo
echo
echo ---------------------------------------------
echo UBRESLIN: PROJECTS
echo ---------------------------------------------
echo projects

git clone https://github.com/jbreslin33/breslinmathracer.git /home/$1/sandbox/breslinmathracer
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_jbreslin /etc/apache2/sites-available/000-default.conf

echo create db jamesanthony
sudo -u postgres createdb jamesanthonybreslin

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES
echo ---------------------------------------------
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/apache.conf /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/config.inc.php /etc/phppgadmin
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/postgresql.conf /etc/postgresql/9.5/main

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

echo for fresh 
echo from src/ dir run ./src/database/backup/build.sh
echo from src/ dir run ./src/database/build_insert.sh
echo for latest 
echo from src/ dir run ./src/database/backup/db_restore.sh
echo from src/ dir run ./src/database/update.sh


