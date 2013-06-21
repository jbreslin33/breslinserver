echo update dpkg 
sudo dpkg --configure -a
echo install ssh
sudo apt-get install ssh
echo update system
sudo apt-get dist-upgrade
sudo apt-get install mixxx
sudo mkdir /amusic
mkdir /home/jbreslin/.mixxx
sudo chmod 777 -R .mixxx
sudo chown -R jbreslin /home/jbreslin/.mixxx
sudo chgrp -R jbreslin /home/jbreslin/.mixxx
sudo cp .mixxx/* /home/jbreslin/.mixxx/
