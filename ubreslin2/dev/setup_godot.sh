echo -------------------------- clone from git ----------------------------
git clone https://github.com/godotengine/godot.git ~/sandbox/godot

echo -------------------------- install build tools ----------------------------
sudo apt-get install build-essential scons pkg-config libx11-dev libxcursor-dev libxinerama-dev libgl1-mesa-dev libglu-dev libasound2-dev libpulse-dev libfreetype6-dev libssl-dev libudev-dev libxi-dev libxrandr-dev 

echo to compile goto godot root and run : scons platform=x11


