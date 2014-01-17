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

echo add users
sudo newusers ../add_student_scripts/add_viso.txt

echo change login
sudo cp lightdm.conf /etc/lightdm

echo chromium
sudo apt-get install chromium-browser

echo complete you can now reboot and login 
echo IMPORTANT!!  if this is lubuntu then cd into lubuntu_standalone and run setup.sh
echo IMPORTANT AS WELL if this is a red laptop then you have to next cd to ubuntu_red_standalone and run setup
