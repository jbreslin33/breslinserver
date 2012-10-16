sudo apt-get install portmap
sudo update-rc.d portmap defaults 10

sudo apt-get install nis
domain abcandyou.com

sudo vi /etc/default/nis
NISSERVER=master
NISCLIENT=false

sudo vi /etc/ypserv.securenets
comment out 0.0.0.0 0.0.0.0
255.255.255.0      192.168.1.0

sudo vi /var/yp/Makefile
find ALL then add shadow after password

sudo service portmap restart

sudo service nis restart

sudo /usr/lib/yp/ypinit -m

sudo vi batch-user-add
add this:
//house
jbreslin:Iggles_13:1201:100:jbreslin:/home/jbreslin:/bin/bash
cbreslin:Wildwood_1:1202:100:cbreslin:/home/cbreslin:/bin/bash
lbreslin:Toybot_6:1203:100:lbreslin:/home/lbreslin:/bin/bash
sudo newusers batch-user-add

cd /var/yp
sudo make

ypcat passwd to test


