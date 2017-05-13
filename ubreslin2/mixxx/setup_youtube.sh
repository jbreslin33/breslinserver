sudo apt-get install youtube-dl

sudo apt-get install python-setuptools
sudo easy_install pip
sudo pip install --upgrade youtube-dl

sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get install ffmpeg

sudo apt-get install lame
sudo pip install --upgrade youtube_dl

#download youtube video
#youtube-dl url-of-youtube-vid

#convert youtube to wav 
#ffmpeg -i song.mkv sound.wav

#convert wav to mp3
#lame song.wav song.mp3

#dowload youtube playlist
youtube-dl -i --extract-audio --audio-format mp3 https://www.youtube.com/playlist?list=PLWSWrBqgaJFMe8kA1WLHI9XrggJrZHGX1 
