sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

sudo cp hosts /etc
sudo cp crontab /etc
sudo chmod 777 /mnt
sudo cp mdm.conf /etc/mdm
sudo cp newusers /usr/sbin

sudo apt-get -y install ssh
sudo apt-get -y install nfs-common
sudo apt-get -y install cifs-utils
sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint
sudo apt-get -y install vlc
sudo apt-get -y install pinta
sudo apt-get -y install chromium-browser
sudo apt-get -y install epoptes-client
sudo apt-get -y remove minetest
sudo apt-get -y install remmina
sudo apt-get -y install rdesktop

sudo epoptes-client -c
sudo newusers ../add_student_scripts/add_viso.txt

#compile minetest
sudo mkdir /minetest
sudo chmod -R 777 /minetest
cd /minetest
sudo apt-get -y install build-essential 
sudo apt-get -y install libirrlicht-dev
sudo apt-get -y install cmake
sudo apt-get -y install libbz2-dev
sudo apt-get -y install libpng12-dev
sudo apt-get -y install libjpeg8-dev
sudo apt-get -y install libxxf86vm-dev
sudo apt-get -y install libgl1-mesa-dev
sudo apt-get -y install libsqlite3-dev
sudo apt-get -y install libogg-devsudo
sudo apt-get -y install libvorbis-dev
sudo apt-get -y install libopenal-dev
wget https://github.com/minetest/minetest/tarball/master -O master.tar.gz
tar xf master.tar.gz
cd minetest-minetest-9675d9e/
cp src/content_cao.cpp /minetest/minetest-minetest-9675d9e/src/
cd games/
wget https://github.com/minetest/minetest_game/tarball/master -O master.tar.gz
tar xf master.tar.gz
cd ..
cmake . -DRUN_IN_PLACE=1
make -j2
sudo chmod -R 777 /minetest

echo complete you can now reboot and login 
