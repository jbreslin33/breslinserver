echo ----------------------update-------------------------
sudo apt-get -y update        # Fetches the list of available updates

echo ----------------------upgrade-------------------------
sudo apt-get -y upgrade       # Strictly upgrades the current packages

echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade  # Installs updates (new ones)

echo -----------------------build tools---------------------
sudo apt-get -y install build-essential
sudo apt-get -y install libtool
sudo apt-get -y install vim

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
sudo apt-get -y install composer
sudo apt-get install libphp-phpmailer


echo -------------------postgres------------------------
echo old not needed hopefully sudo apt-get -y install postgresql
# add the repository
sudo tee /etc/apt/sources.list.d/pgdg.list <<END
deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
END

# get the signing key and import it
wget https://www.postgresql.org/media/keys/ACCC4CF8.asc
sudo apt-key add ACCC4CF8.asc

# fetch the metadata from the new repo
sudo apt-get -y update

sudo apt-get -y install postgresql-11


echo -------------------postgresql-client-----------------------
sudo apt-get -y install postgresql-client

echo -------------------postgresql-doc-----------------------
sudo apt-get -y install postgresql-doc

echo -------------------pgadmin3----------------------
sudo apt-get -y install pgadmin3

echo -------------------phppgadmin---------------------
sudo apt-get -y install phppgadmin 

echo -------------------postgres and php------------------------
sudo apt-get -y install phppgadmin
sudo apt-get -y install libpq-dev

echo ----------------------video-------------------------
sudo apt-get -y install vlc

echo ----------------------reading-------------------------
sudo apt-get -y install calibre

echo ---------------------graphics----------------------------------
sudo apt-get -y install graphviz
sudo apt-get -y install dia 

echo ------------------------sound----------------------------------
sudo apt-get -y install mplayer
sudo apt-get -y install mpg123
sudo apt-get -y install soundconverter

echo ------------------------editing----------------------------------
sudo apt-get -y install dos2unix 

echo -------------------------npm------------------------
sudo apt-get -y install npm
