echo ----------------------update-------------------------
sudo apt-get -y update        # Fetches the list of available updates

echo ----------------------upgrade-------------------------
sudo apt-get -y upgrade       # Strictly upgrades the current packages

echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade  # Installs updates (new ones)

echo ------------------install godot dependencies -----------------
sudo apt-get install build-essential scons pkg-config libx11-dev libxcursor-dev libxinerama-dev \
    libgl1-mesa-dev libglu-dev libasound2-dev libpulse-dev libudev-dev libxi-dev libxrandr-dev yasm

echo ---------------------git clone godot ----------------------------------------
mkdir ~/sandbox
git clone https://github.com/godotengine/godot.git 

echo ---------------------------- build ---------------------
echo to build
echo cd ~/sandbox/minetest
echo cmake . -DRUN_IN_PLACE=TRUE
echo make 
