
echo ----------------------update-------------------------
sudo apt-get -y update        # Fetches the list of available updates

echo -----------------------build tools---------------------
sudo apt-get -y install build-essential
sudo apt-get -y install libtool
sudo apt-get -y install vim

echo -----------------------version control------------------------
sudo apt-get -y install git

echo -----------------------web server------------------------------
sudo apt-get -y install apache2 
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo -------------------php------------------------
sudo apt-get -y install software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update
sudo apt-get -y install php
sudo apt-get -y install php-mbstring
sudo apt-get -y install composer
sudo apt-get -y install libphp-phpmailer

echo -------------------postgres------------------------
sudo apt-get update

sudo apt install postgresql postgresql-contrib

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

echo -------------------------npm------------------------
sudo apt-get -y install npm

