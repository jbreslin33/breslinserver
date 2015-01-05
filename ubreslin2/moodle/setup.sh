cd /home/jbreslin/sandbox
echo git clone --depth=1 -b MOODLE_28_STABLE --single-branch git://git.moodle.org/moodle.git 
sudo chown -R root /home/jbreslin/sandbox/moodle
sudo chmod -R 0755 /home/jbreslin/sandbox/moodle
sudo find /home/jbreslin/sandbox/moodle -type f -exec chmod 0644 {} \;
