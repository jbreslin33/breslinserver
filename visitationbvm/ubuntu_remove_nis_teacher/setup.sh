echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade
echo remove portmap
sudo apt-get remove portmap

echo remove nis
sudo apt-get remove nis

echo update hosts file
cp ../ubuntu_remove_nis/hosts /etc

echo update yp.conf file
cp ../ubuntu_remove_nis/yp.conf /etc

echo update nsswitch.conf file
cp ../ubuntu_remove_nis/nsswitch.conf /etc

echo update lightdm.conf file
cp ../ubuntu_remove_nis/lightdm.conf /etc/lightdm

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

echo for teacher admin of epoptes
echo for some reason we have to uninstall epoptes first i think it does
echo not place nice with nis 
sudo apt-get remove epoptes
sudo apt-get install epoptes
echo add student to list epoptes group
sudo gpasswd -a student epoptes
sudo gpasswd -a v1201 epoptes

echo install clusterssh
sudo apt-get install clusterssh

echo complete you can now reboot and login 
