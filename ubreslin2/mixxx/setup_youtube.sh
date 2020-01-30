sudo apt-get install youtube-dl

sudo apt-get install python-setuptools
sudo easy_install pip
sudo pip install --upgrade youtube-dl

sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get install ffmpeg

sudo apt-get install lame
sudo pip install --upgrade youtube_dl

echo -------------- THIS MAKES IT WORK NOW -----------------
sudo apt-get install curl -y
curl -L https://yt-dl.org/latest/youtube-dl -o /usr/bin/youtube-dl
sudo curl -L https://yt-dl.org/latest/youtube-dl -o /usr/bin/youtube-dl
sudo chmod 755 /usr/bin/youtube-dl
