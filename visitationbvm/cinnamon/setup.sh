echo update system
sudo dpkg --configure -a
sudo apt-get -y update 
sudo apt-get -y install 
sudo apt-get -y upgrade

echo viso specific files
cp /etc/hosts originalhosts
sudo echo "192.168.2.105    server" >> originalhosts
sudo cp originalhosts /etc/hosts

sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

if [ `getconf LONG_BIT` = "64" ]
then
    echo "I'm 64-bit"
echo chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

echo slack
sudo apt-get install libcurl3
sudo dpkg --install slack-desktop-2.6.3-amd64.deb

else
    echo "I'm 32-bit"
fi

echo install build tools for student coding
sudo apt-get -y install build-essential 
sudo apt-get -y install ssh

echo install browsers
sudo apt-get -y install chromium-browser


echo install games
sudo apt-get -y install tuxmath
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint
sudo apt-get -y remove minetest
sudo apt-get -y install minetest
sudo apt-get -y install triplea 
sudo apt-get -y install chessx

echo add new users

sudo newusers ../add_student_scripts/add_viso.txt

if [ "$1" = "admin" ]; then
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
