sudo export DISPLAY=:0
rm *.mp3
if [ -z "$1" ]
then
	echo No Song passed so download Bieber 
	youtube-dl -i --extract-audio --audio-format mp3 -o "%(playlist_index)s-%(title)s.%(ext)s" https://www.youtube.com/watch?v=kffacxfA7G4 
else
	echo This url was passed: $1 So download it. 
	youtube-dl -i --extract-audio --audio-format mp3 -o "%(playlist_index)s-%(title)s.%(ext)s" $1
fi

mv *.mp3 bieber.mp3
mplayer bieber.mp3
