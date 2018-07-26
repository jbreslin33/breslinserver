echo -------------------------- clone from git ----------------------------
git clone https://github.com/mixxxdj/mixxx.git ~/sandbox/mixxx

echo ------------------- add to sources.list  -----------
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 886DDD89

echo -------------------------- install build tools ----------------------------
sudo apt-get install g++ git scons libportmidi-dev libopusfile-dev \
  libshout-dev libtag1-dev libprotobuf-dev protobuf-compiler \
  libusb-1.0-0-dev libfftw3-dev libmad0-dev portaudio19-dev \
  libchromaprint-dev librubberband-dev libsqlite3-dev \
  libid3tag0-dev libflac-dev libsndfile-dev libupower-glib-dev \
  libavcodec-dev libavformat-dev libgl-dev liblilv-dev \
  libjack-dev libjack0 portaudio19-dev \  # because of Bug #1464120
  libfaad-dev libmp4v2-dev \  # required for M4A support

echo to compile goto godot root and run : scons platform=x11


