echo cd /home/jbreslin/sandbox
echo git clone --depth=1 -b MOODLE_28_STABLE --single-branch git://git.moodle.org/moodle.git 
echo sudo chown -R root /home/jbreslin/sandbox/moodle
echo sudo chmod -R 0755 /home/jbreslin/sandbox/moodle
echo sudo find /home/jbreslin/sandbox/moodle -type f -exec chmod 0644 {} \;
echo chmod -R "www-data allow read,delete,write,append,file_inherit,directory_inherit" /home/jbreslin/sandbox/moodle
sudo -u postgres psql -f setup.sql
