rm *.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:team-xbmc/ppa
sudo apt-get -y update
sudo apt-get -y install kodi
sudo apt-get -y install playonlinux
