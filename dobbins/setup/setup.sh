echo fix lightdm login 
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

echo add new users
sudo newusers ../add_student_scripts/add_dobbins.txt

echo complete you can now reboot and login 
