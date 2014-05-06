sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

sudo cp hosts /etc
sudo cp crontab /etc
sudo chmod 777 /mnt
sudo cp mdm.conf /etc/mdm

sudo apt-get -y install ssh
sudo apt-get -y install nfs-common
sudo apt-get -y install cifs-utils
sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint
sudo apt-get -y install vlc
sudo apt-get -y install pinta
sudo apt-get -y install chromium-browser
sudo apt-get -y install epoptes-client

sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

echo complete you can now reboot and login 
echo IMPORTANT!!  if this is lubuntu then cd into lubuntu_standalone and run setup.sh
echo IMPORTANT AS WELL if this is a red laptop then you have to next cd to ubuntu_red_standalone and run setup
