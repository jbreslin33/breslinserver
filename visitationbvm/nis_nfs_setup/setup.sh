echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade
echo install portmap
sudo apt-get install portmap
echo update defaults
sudo update-rc.d portmap defaults 10

echo install nis
sudo apt-get install nis

echo update hosts file
cp hosts /etc

echo update yp.conf file
cp yp.conf /etc

echo update nsswitch.conf file
cp nsswitch.conf /etc

echo update lightdm.conf file
cp lightdm.conf /etc/lightdm

echo update common-session file
cp common-session /etc/pam.d
echo change permissions of home
sudo chmod 777 /home

echo cron jobs
sudo cp crontab /etc
sudo mkdir /scripts
sudo cp mount_nfs.sh /scripts 
sudo chmod 777 /mnt

echo install nfs-common
sudo apt-get install nfs-common

sudo cp fstab /etc

echo remove unity
sudo apt-get remove unity

echo make vm directory
sudo mkdir /vm
sudo chmod -R 777 /vm
echo mkdir /vm/xp
sudo mkdir /vm/xp
sudo chmod -R 777 /vm/xp
echo install virtualbox
sudo apt-get install virtualbox

echo install vlc player
sudo apt-get install vlc

echo intstall tux games
sudo apt-get install tuxpaint
sudo apt-get install tuxmath
sudo apt-get install tuxtype

echo install wesnoth
sudo apt-get install wesnoth

echo install epoptes-client
sudo apt-get install epoptes-client
sudo epoptes-client -c

echo complete you can now reboot and login 
