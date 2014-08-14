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

echo install epoptes-client
sudo apt-get install epoptes-client
sudo epoptes-client -c

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
