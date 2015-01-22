sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

sudo cp hosts /etc
sudo cp crontab /etc
sudo cp lightdm.conf /etc/lightdm
sudo chmod 777 /mnt

sudo apt-get -y install ssh
sudo apt-get -y install nfs-common
sudo apt-get -y install cifs-utils
sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint
sudo apt-get -y install vlc
sudo apt-get -y install pinta
sudo apt-get -y install openjdk-7-jre
sudo apt-get -y install icedtea-7-plugin
sudo apt-get -y install libreoffice
sudo apt-get -y install arduino arduino-core
sudo apt-get -y install chromium-browser
echo sudo apt-get -y remove empathy
sudo apt-get -y install epoptes-client
sudo apt-get -y install lubuntu-desktop 
echo sudo apt-get -y install kubuntu-desktop 
echo sudo apt-get -y install xubuntu-desktop 
echo sudo apt-get -y install awesome 

sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

echo complete you can now reboot and login 
echo IMPORTANT!!  if this is lubuntu then cd into lubuntu_standalone and run setup.sh
echo IMPORTANT AS WELL if this is a red laptop then you have to next cd to ubuntu_red_standalone and run setup
