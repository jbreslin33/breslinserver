echo run regular setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup.sh

echo run browser setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup_browsers.sh

echo fix lightdm login 
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

echo add new users
sudo newusers ../add_student_scripts/add_dobbins.txt

sudo apt-get upgrade

echo add users to root
sudo usermod -aG sudo kkeels
sudo usermod -aG sudo kwright
sudo usermod -aG sudo sdouglass
sudo usermod -aG sudo efulton
sudo usermod -aG sudo jbreslin

echo complete you can now reboot and login 


