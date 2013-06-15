echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

