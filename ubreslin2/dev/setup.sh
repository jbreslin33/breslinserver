
echo ----------------------update-------------------------
sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade 

echo -----------------------install build tools---------------------
sudo apt-get -y install build-essential
sudo apt-get -y install libtool
sudo apt-get -y install vim
sudo apt-get -y install graphviz

echo -----------------------ssh------------------------
sudo apt-get -y install ssh

echo -----------------------install web server------------------------------
./setup_apache.sh

echo -------------------install php------------------------
./install_php.sh

sudo apt-get update

echo -------------------install postgres------------------------
./install_postgresql.sh

echo -------------------------install npm------------------------
sudo apt-get -y install npm

