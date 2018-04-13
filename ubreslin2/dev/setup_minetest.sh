echo ----------------------update-------------------------
sudo apt-get -y update        # Fetches the list of available updates

echo ----------------------upgrade-------------------------
sudo apt-get -y upgrade       # Strictly upgrades the current packages

echo ----------------------dist upgrade-------------------------
sudo apt-get -y dist-upgrade  # Installs updates (new ones)

echo ------------------install minetest dependencies -----------------
sudo apt-get -y install build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev
sudo apt-get -y install libfreetype6-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev
sudo apt-get -y install libogg-dev libvorbis-dev libopenal-dev libhiredis-dev libcurl3-dev

echo ---------------------git minetest ----------------------------------------
mkdir ~/sandbox
git clone --depth 1 https://github.com/minetest/minetest.git ~/sandbox/minetest
git clone --depth 1 https://github.com/minetest/minetest_game.git ~/sandbox/minetest/games/minetest_game

echo ---------------------------- build ---------------------
echo to build
echo cd ~/sandbox/minetest
echo cmake . -DRUN_IN_PLACE=TRUE
echo make 
