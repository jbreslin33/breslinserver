echo
echo --------------------------------------------
echo UBRESLIN: UPDATES 
echo --------------------------------------------
sudo apt-get -y dist-upgrade

echo build minetest
echo minetest dependencies
sudo apt-get -y install build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev
sudo apt-get -y install libfreetype6-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev
sudo apt-get -y install libogg-dev libvorbis-dev libopenal-dev libhiredis-dev libcurl3-dev
echo git minetest 

git clone --depth 1 https://github.com/minetest/minetest.git /home/$1/sandbox/minetest
git clone --depth 1 https://github.com/minetest/minetest_game.git /home/$1/sandbox/minetest/games/minetest_game

echo cmake
cd /home/$1/sandbox/minetest
cmake . -DRUN_IN_PLACE=TRUE
make 
