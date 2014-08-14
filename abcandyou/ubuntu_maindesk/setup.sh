echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

echo update hosts file
cp ../ubuntu_home/hosts /etc

echo cron jobs
sudo cp ../ubuntu_home/crontab /etc
sudo mkdir /scripts
sudo cp ../ubuntu_home/mount_nfs.sh /scripts 
sudo chmod 777 /mnt

echo install nfs-common
sudo apt-get install nfs-common

echo change login
sudo cp ../ubuntu_home/lightdm.conf /etc/lightdm

echo install epoptes-client
sudo apt-get install epoptes-client
sudo epoptes-client -c

echo tux
sudo apt-get install tuxmath
sudo apt-get install tuxtype
sudo apt-get install tuxpaint

echo vlc
sudo apt-get install vlc

echo install wine
sudo apt-get install wine -q

echo install virtualbox
sudo apt-get install virtualbox

echo teacher specific setup
echo for teacher admin of epoptes
echo for some reason we have to uninstall epoptes first i think it does
echo not place nice with nis
sudo apt-get remove epoptes
sudo apt-get install epoptes
echo add student to list epoptes group
sudo gpasswd -a jbreslin epoptes

echo install clusterssh
sudo apt-get install clusterssh

echo complete you can now reboot and login 
