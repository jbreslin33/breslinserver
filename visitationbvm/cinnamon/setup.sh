echo update system
sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

echo viso specific files
sudo cp hosts /etc
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

#echo chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#sudo apt-get update 
#sudo apt-get install google-chrome-stable

echo install build tools for student coding
sudo apt-get -y install build-essential 
sudo apt-get -y install ssh

echo install browsers
sudo apt-get -y install chromium-browser

echo epop
sudo apt-get -y remove epoptes-client
sudo apt-get -y install epoptes-client

echo install games
#sudo apt-get -y install tuxmath
#sudo apt-get -y install tuxtype
#sudo apt-get -y install tuxpaint
sudo apt-get -y remove minetest
sudo apt-get -y install minetest
#sudo apt-get -y install triplea 
#sudo apt-get -y install chessx

sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

echo complete you can now reboot and login 
