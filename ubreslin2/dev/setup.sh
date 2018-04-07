echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade
sudo apt-get update

echo -----------------------build tools---------------------
sudo apt-get -y install build-essential
sudo apt-get -y install libtool

echo -----------------------version control------------------------
sudo apt-get -y install git

echo -----------------------remote control---------------------------------
sudo apt-get -y install ssh 
sudo apt-get -y install remmina 
sudo apt-get -y install remmina-plugin-vnc 

echo -----------------------web server------------------------------
sudo apt-get -y install apache2 
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo -------------------php------------------------
sudo apt-get -y install python-software-properties software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update
sudo apt-get -y install php
sudo apt-get -y install php-mbstring

echo -------------------postgres------------------------
#sudo apt-get -y install postgresql-9.5
sudo apt-get install postgresql postgresql-contrib

echo -------------------postgres and php------------------------
sudo apt-get -y install phppgadmin
sudo apt-get -y install libpq-dev

echo ----------------------video-------------------------
sudo apt-get -y install vlc

echo ---------------------graphics----------------------------------
sudo apt-get -y install graphviz
sudo apt-get -y install dia 

echo ------------------------sound----------------------------------
sudo apt-get -y install mplayer
sudo apt-get -y install mpg123
sudo apt-get -y install soundconverter

