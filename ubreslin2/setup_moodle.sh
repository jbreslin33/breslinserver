echo
echo ---------------------------------------------
echo UBRESLIN: MOODLE
echo ---------------------------------------------
cd /home/$1/sandbox
git clone -b MOODLE_24_STABLE git://git.moodle.org/moodle.git
sudo chown -R root /home/$1/sandbox/moodle/
sudo chmod -R 0755 /home/$1/sandbox/moodle/

echo
echo --------------------------------------------
echo UBRESLIN: MOODLE MANUAL
echo --------------------------------------------
echo sudo -u postgres psql postgres
echo then a pound prompt run CREATE USER moodleuser WITH PASSWORD Iggles_13 in tics;
echo CREATE DATABASE moodle WITH OWNER moodleuser;
echo mkdir /home/$1/sandbox/moodledata
echo sudo chmod 0777 /home/$1/sandbox/moodledata
echo sudo chown www-data /home/$1/sandbox/moodle
echo cd /home/$1/sandbox/moodle/admin/cli/
echo sudo -u www-data /usr/bin/php install.php
echo defaults and for web address use.. http://visflip.com
echo for db user use moodleuser
echo db pass Iggles_13
echo sudo chown -R root /home/$1/sandbox/moodle
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

