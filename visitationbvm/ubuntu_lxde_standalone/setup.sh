echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

echo update hosts file
cp ../ubuntu_standalone/hosts /etc

echo cron jobs
sudo cp ../ubuntu_standalone/crontab /etc
sudo mkdir /scripts
sudo cp ../ubuntu_standalone/mount_nfs.sh /scripts 
sudo chmod 777 /mnt

echo install nfs-common
sudo apt-get install nfs-common

echo install lxde
sudo apt-get instal lxde

echo change login
sudo cp lightdm.conf /etc/lightdm

echo install epoptes-client
sudo apt-get install epoptes-client
sudo epoptes-client -c

echo tux
sudo apt-get install tuxmath
sudo apt-get install tuxtype
sudo apt-get install tuxpaint

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


echo complete you can now reboot and login 