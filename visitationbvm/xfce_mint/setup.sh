sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

sudo cp hosts /etc
sudo cp crontab /etc
sudo chmod 777 /mnt
sudo cp mdm.conf /etc/mdm
sudo cp newusers /usr/sbin

echo chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

sudo apt-get -y install build-essential 
sudo apt-get -y install libtool
sudo apt-get -y install git
sudo apt-get -y install apache2
sudo apt-get -y install php5
sudo apt-get -y install postgresql
sudo apt-get -y install phppgadmin
sudo apt-get -y install libpq-dev
sudo apt-get -y install vlc
sudo apt-get -y install mpg123
sudo apt-get -y install openjdk-7-jdk
sudo apt-get -y install graphviz
sudo apt-get -y install dia
sudo apt-get -y install chromium-browser
sudo apt-get -y install mplayer
sudo apt-get -y install cmake
sudo apt-get -y install ssh
sudo apt-get -y install nfs-common
sudo apt-get -y install cifs-utils
sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint
sudo apt-get -y install vlc
sudo apt-get -y install pinta
sudo apt-get -y install chromium-browser
sudo apt-get -y install opera
sudo apt-get -y install epoptes-client
sudo apt-get -y remove minetest
sudo apt-get -y install minetest
sudo apt-get -y install triplea 
sudo apt-get -y install chessx
sudo apt-get -y install remmina
sudo apt-get -y install rdesktop
sudo apt-get -y install wine 

sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

echo complete you can now reboot and login 
