sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

echo sudo cp hosts /etc
echo sudo cp crontab /etc
echo sudo chmod 777 /mnt
sudo cp lightdm.conf /etc/lightdm

sudo apt-get -y install ssh
sudo apt-get -y install nfs-common
sudo apt-get -y install cifs-utils
echo sudo apt-get -y install tuxmath
echo sudo apt-get -y install tuxtype
echo sudo apt-get -y install tuxpaint
sudo apt-get -y install vlc
echo sudo apt-get -y install pinta
sudo apt-get -y install openjdk-7-jre
sudo apt-get -y install icedtea-7-plugin
echo sudo apt-get -y install libreoffice
echo sudo apt-get -y install arduino arduino-core
sudo apt-get -y install chromium-browser
echo sudo apt-get -y remove empathy
echo sudo apt-get -y install epoptes-client
sudo apt-get -y install kubuntu-desktop 
sudo apt-get -y install xubuntu-desktop 
sudo apt-get -y install awesome 
sudo apt-get -y install gnome-desktop
sudo apt-get -y install blackbox 
sudo apt-get -y install fluxbox 
sudo apt-get -y install icewm 
sudo apt-get -y install fvwm 
sudo apt-get -y install xfce4 

echo sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

echo complete you can now reboot and login 
echo IMPORTANT!!  if this is lubuntu then cd into lubuntu_standalone and run setup.sh
echo IMPORTANT AS WELL if this is a red laptop then you have to next cd to ubuntu_red_standalone and run setup
