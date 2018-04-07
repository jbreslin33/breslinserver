echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade

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
sudo apt-get -y install postgresql-9.5

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

echo -------------------------browsers-----------------------
sudo apt-get -y install chromium-browser

if [ `getconf LONG_BIT` = "64" ]
then
    echo "I'm 64-bit"
echo chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get -y install google-chrome-stable

else
    echo "I'm 32-bit"
fi
