sudo apt-get install php5-curl
sudo /etc/init.d/apache2 restart 
cd /home/jbreslin/sandbox
git clone --depth=1 -b MOODLE_28_STABLE --single-branch git://git.moodle.org/moodle.git 
sudo chown -R root /home/jbreslin/sandbox/moodle
sudo chmod -R 0755 /home/jbreslin/sandbox/moodle
sudo find /home/jbreslin/sandbox/moodle -type f -exec chmod 0644 {} \;
echo chmod -R "www-data allow read,delete,write,append,file_inherit,directory_inherit" /home/jbreslin/sandbox/moodle
sudo -u postgres psql -f /home/jbreslin/sandbox/moodle/setup.sql
mkdir /home/jbreslin/sandbox/moodledata
chmod 0777 /home/jbreslin/sandbox/moodledata
sudo chown www-data /home/jbreslin/sandbox/moodle
cd /home/jbreslin/sandbox/moodle
cd /home/jbreslin/sandbox/moodle/admin/cli/
sudo -u www-data /usr/bin/php install.php
