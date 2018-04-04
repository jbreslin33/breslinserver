echo build minetest
echo minetest dependencies

git clone --depth 1 https://github.com/minetest/minetest.git ~/sandbox/minetest
git clone --depth 1 https://github.com/minetest/minetest_game.git ~/sandbox/minetest/games/minetest_game

echo cmake
cd ~/sandbox/minetest
cmake . -DRUN_IN_PLACE=TRUE
make -j$(grep -c processor /proc/cpuinfo)

