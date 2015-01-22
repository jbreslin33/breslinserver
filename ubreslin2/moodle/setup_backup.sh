echo
echo ---------------------------------------------
echo UBRESLIN: INSTALL PROGRAMS
echo ---------------------------------------------

sudo apt-get install php5-curl
sudo apt-get install php5-gd
sudo apt-get install php5-xmlrpc 
sudo /etc/init.d/apache2 restart 

cd /home/$1/sandbox

echo git clone -b MOODLE_27_STABLE git://git.moodle.org/moodle.git
echo sudo chmod -R 777 moodledata/
sudo -u postgres createdb moodle
echo goto visflip.com in browser
echo Database user: postgres
echo Database password: mibesfat 
echo copy what weppage says to /home/jbreslin/sandbox/moodle/config.php
echo admin username: jbreslin
echo admin password: Iggles_13

echo sudo apt-get install mysql-server
echo sudo apt-get install mysql-client
echosudo apt-get install mysql-workbench

echo
echo ---------------------------------------------
echo UBRESLIN: MANUAL COMMANDS 
echo ---------------------------------------------

echo mysql --user=root --password=mibesfat
echo CREATE DATABASE moodle DEFAULT CHARACTER SET UTF8 COLLATE utf8_unicode_ci;
echo GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON moodle.* TO moodleuser@localhost IDENTIFIED BY 'mibesfat';
echo sudo chmod -R 777 moodledata/





echo sudo chown -R root /home/$1/sandbox/moodle/
echo sudo chmod -R 0755 /home/$1/sandbox/moodle/

echo
echo --------------------------------------------
echo UBRESLIN: MOODLE MANUAL
echo --------------------------------------------
echo sudo -u postgres psql postgres
echo then a pound prompt run CREATE USER moodleuser WITH PASSWORD Iggles_13 in tics;
echo CREATE DATABASE moodle WITH OWNER moodleuser;
echo mkdir /home/jbreslin/sandbox/moodledata
echo sudo chmod 0777 /home/jbreslin/sandbox/moodledata
echo sudo chown www-data /home/jbreslin/sandbox/moodle
echo cd /home/jbreslin/sandbox/moodle/admin/cli/
echo sudo -u www-data /usr/bin/php install.php
echo defaults and for web address use.. http://visflip.com
echo for db user use moodleuser
echo db pass Iggles_13
echo sudo chown -R root /home/jbreslin/sandbox/moodle
echo goto visflip.com
echo you will probably get errors if so the following are the fixes
echo sudo apt-get install php5-curl
echo sudo /etc/init.d/apache2 restart
echo sudo apt-get install php5-gd
echo sudo /etc/init.d/apache2 restart
echo  sudo apt-get install php5-xmlrpc
echo sudo /etc/init.d/apache2 restart
echo sudo apt-get install php5-intl
echo sudo /etc/init.d/apache2 restart

