echo run regular setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup.sh

echo run browser setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup_browsers.sh

echo copy hosts
sudo cp hosts /etc/hosts

echo epoptes
sudo apt-get -y remove epoptes
sudo apt-get -y install epoptes
sudo gpasswd -a student epoptes
sudo apt-get -y install rdesktop

echo install clusterssh
sudo apt-get -y install clusterssh


echo games
sudo apt-get -y install minetest
sudo apt-get -y install tuxtype
sudo apt-get -y install tuxpaint

echo remote system tech
sudo apt-get -y install rdesktop
sudo apt-get -y install clusterssh

echo epoptes

if [ "$1" = "jbreslin" ]; then
echo admin specific setup

sudo apt-get -y remove epoptes
sudo apt-get -y install epoptes
sudo gpasswd -a student epoptes

else

echo epop
sudo apt-get -y remove epoptes-client
sudo apt-get -y install epoptes-client
sudo epoptes-client -c

fi


sudo apt-get upgrade

