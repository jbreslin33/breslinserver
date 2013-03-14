echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade

echo update hosts file
cp hosts /etc

echo cron jobs
sudo cp crontab /etc
sudo mkdir /scripts
sudo cp mount_nfs.sh /scripts 
sudo chmod 777 /mnt

echo install nfs-common
sudo apt-get install nfs-common

echo install smbfs
sudo apt-get install smbfs

echo change login
sudo cp lightdm.conf /etc/lightdm

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

echo install mixxx
sudo apt-get install mixxx

echo remove empathy chat program
sudo apt-get remove empathy

echo install pinta paint program
sudo apt-get install pinta

echo install risk
sudo apt-get install ksirk

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
