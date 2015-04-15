sudo apt-get install build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev libfreetype6-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libhiredis-dev
if [ -d "minetest" ]; then
. cdminetest.sh 
git pull 

else
git clone https://github.com/minetest/minetest.git
. cdminetest.sh 
fi

cmake .
make -j$(grep -c processor /proc/cpuinfo)


echo to run server...
echo ./minetest --server --worldname minetest_game
