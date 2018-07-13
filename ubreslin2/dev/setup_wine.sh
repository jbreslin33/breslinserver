echo virtualbox
sudo apt-get -y install linux-headers-generic build-essential dkms
sudo apt-get -y remove --purge virtualbox-dkms
sudo apt-get -y install virtualbox-dkms
sudo apt-get -y install virtualbox-qt

