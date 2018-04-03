echo update system
sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

sudo cp hosts /etc/hosts

sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

var_chrome=$(which google-chrome)
echo "$var_chrome";

if [ `getconf LONG_BIT` = "64" ]
then
    echo "I'm 64-bit"
echo chrome

        if [ "$var_chrome" = "/usr/bin/google-chrome" ]
        then
                echo "google-chrome installed already"
        else
                wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
                sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
                sudo apt-get -y update
                sudo apt-get -y install google-chrome-stable
        fi

echo slack
        if [ `which google-chrome` = "/usr/bin/google-chrome" ]
        then
                echo "slack already installed"
        else
                sudo apt-get -y install libcurl3
                sudo dpkg --install slack-desktop-2.6.3-amd64.deb
        fi
else
    echo "I'm 32-bit so I cannot install google-chrome or slack"
fi

echo install build tools for student coding
sudo apt-get -y install build-essential 
sudo apt-get -y install ssh

echo build minetest
echo minetest dependencies
sudo apt-get -y install build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev
sudo apt-get -y install libfreetype6-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev
sudo apt-get -y install libogg-dev libvorbis-dev libopenal-dev libhiredis-dev libcurl3-dev
echo git minetest 

git clone --depth 1 https://github.com/minetest/minetest.git /home/student/sandbox/minetest
git clone --depth 1 https://github.com/minetest/minetest_game.git /home/student/sandbox/minetest/games/minetest_game

echo cmake
cd /home/student/sandbox/minetest
cmake . -DRUN_IN_PLACE=TRUE
make 

echo install browsers
sudo apt-get -y install chromium-browser

echo install games
sudo apt-get -y remove minetest

echo add new users
sudo newusers ../add_student_scripts/add_viso.txt

if [ "$1" = "jbreslin" ]; then
echo admin specific setup

echo add jbreslin to root
sudo usermod -aG sudo jbreslin

sudo apt-get -y remove epoptes
sudo apt-get -y install epoptes
sudo gpasswd -a student epoptes
sudo gpasswd -a jbreslin epoptes
sudo apt-get -y install rdesktop

echo install clusterssh
sudo apt-get -y install clusterssh

else
echo epop
sudo apt-get -y remove epoptes-client
sudo apt-get -y install epoptes-client
sudo epoptes-client -c
fi

echo complete you can now reboot and login 
