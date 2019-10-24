echo run regular setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup.sh

echo run browser setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup_browsers.sh

echo fix lightdm login 
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

echo add new users
sudo newusers ../add_student_scripts/add_dobbins.txt

echo complete you can now reboot and login 
