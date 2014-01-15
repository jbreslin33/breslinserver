echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

echo update hosts file
sudo cp hosts /etc

echo cron jobs
sudo cp crontab /etc

echo mounting
sudo chmod 777 /mnt

echo install nfs-common
sudo apt-get install nfs-common

echo install smbfs
sudo apt-get install smbfs

echo install epoptes-client
sudo apt-get install epoptes-client
sudo epoptes-client -c

echo tux
sudo apt-get install tuxmath
sudo apt-get install tuxtype
sudo apt-get install tuxpaint

echo vlc
sudo apt-get install vlc

echo remove empathy chat program
sudo apt-get remove empathy

echo install pinta paint program
sudo apt-get install pinta

echo install java
sudo apt-get install openjdk-7-jre
sudo apt-get install icedtea-7-plugin

echo libreoffice
sudo apt-get install libreoffice

echo arduino
sudo apt-get install arduino arduino-core

echo chromium
sudo apt-get install chromium-browser

echo add users
sudo cp newusers /usr/sbin
sudo newusers ../add_student_scripts/add_viso.txt

echo lightdm 
sudo cp lightdm.conf /etc/lightdm


