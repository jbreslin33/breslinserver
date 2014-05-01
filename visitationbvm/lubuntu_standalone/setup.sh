sudo apt-get -y update
sudo apt-get -y install 
sudo apt-get -y upgrade 

sudo apt-get -y install ssh
sudo apt-get -y remove lightdm  
sudo apt-get -y install lxde
sudo apt-get -y install lxdm
sudo rm /home/student/.dmrc

sudo cp hosts /etc

sudo cp crontab /etc

sudo chmod 777 /mnt

sudo apt-get -y install nfs-common

sudo apt-get -y install cifs-utils

sudo apt-get -y install epoptes-client
sudo epoptes-client -c

sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint

sudo apt-get -y install vlc

sudo apt-get -y remove empathy

sudo apt-get -y install pinta

sudo apt-get -y install openjdk-7-jre
sudo apt-get -y install icedtea-7-plugin

sudo apt-get -y install libreoffice

sudo apt-get -y install arduino arduino-core

sudo apt-get -y install chromium-browser

sudo newusers ../add_student_scripts/add_viso.txt

sudo cp lxdm.conf /etc/lxdm

sudo apt-get -y install xfce4-mixer gstreamer0.10-alsa
