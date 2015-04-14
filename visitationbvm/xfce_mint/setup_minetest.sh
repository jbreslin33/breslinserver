sudo apt-get install build-essential cmake git libirrlicht-dev libbz2-dev libgettextpo-dev libfreetype6-dev libpng12-dev libjpeg8-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libhiredis-dev
if [ -d "minetest" ]; then
. cdminetest.sh 
git pull 

else
git clone https://github.com/minetest/minetest.git
. cdminetest.sh 
fi

if [ "$1" = "server" ]; then
cmake . -DENABLE_GETTEXT=1 -DENABLE_FREETYPE=1 -DENABLE_LEVELDB=1 -DENABLE_REDIS=1 -DBUILD_SERVER=0
echo server build!!!!!
else
cmake . -DENABLE_GETTEXT=1 -DENABLE_FREETYPE=1 -DENABLE_LEVELDB=1 -DENABLE_REDIS=1 -DBUILD_CLIENT=0
echo client build!!!!!
fi
make -j$(grep -c processor /proc/cpuinfo)


echo to run server...
echo ./minetest --server --worldname minetest_game
