echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

echo update hosts file
cp ../ubuntu_standalone/hosts /etc

echo update lightdm.conf file
cp ../ubuntu_standalone/lightdm.conf /etc/lightdm

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

echo remove unity
sudo apt-get remove unity

echo install vlc player
sudo apt-get install vlc

echo install clusterssh
sudo apt-get install clusterssh

echo add users
sudo newusers ../add_student_scripts/staff.txt
sudo newusers ../add_student_scripts/v1300.txt
sudo newusers ../add_student_scripts/v1400.txt
sudo newusers ../add_student_scripts/v1500.txt
sudo newusers ../add_student_scripts/v1600.txt
sudo newusers ../add_student_scripts/v1700.txt
sudo newusers ../add_student_scripts/v1800.txt
sudo newusers ../add_student_scripts/v1900.txt
sudo newusers ../add_student_scripts/v2000.txt
sudo newusers ../add_student_scripts/v2100.txt

echo for teacher admin of epoptes
echo for some reason we have to uninstall epoptes first i think it does
echo not place nice with nis 
sudo apt-get remove epoptes
sudo apt-get install epoptes
echo add student to list epoptes group
sudo gpasswd -a student epoptes
sudo gpasswd -a v1201 epoptes

echo complete you can now reboot and login 
