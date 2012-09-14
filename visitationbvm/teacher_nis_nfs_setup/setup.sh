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
echo install clusterssh
sudo apt-get install clusterssh
echo install vlc player
sudo apt-get install vlc
echo for teacher admin of epoptes
sudo apt-get install epoptes
echo add student to list epoptes group
sudo gpasswd -a student epoptes


echo complete you can now reboot and login 