
echo -------------------install php------------------------
sudo apt-get -y install software-properties-common
echo sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update
sudo apt-get -y install php
sudo apt-get -y install php-mbstring
sudo apt-get -y install composer
sudo apt-get -y install libphp-phpmailer

