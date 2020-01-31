echo run regular setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup.sh

echo run browser setup
/home/student/sandbox/breslinserver/ubreslin2/dev/setup_browsers.sh

#echo setup arduino
#/home/student/sandbox/breslinserver/ubreslin2/dev/setup_arduino.sh

echo fix lightdm login 
sudo cp 50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/

echo add new users
sudo newusers ../add_student_scripts/add_dobbins.txt


sudo apt-get upgrade

echo add users to root
sudo usermod -aG sudo abrown
sudo usermod -aG sudo aknuckles
sudo usermod -aG sudo arankin
sudo usermod -aG sudo bmay
sudo usermod -aG sudo cwilliams
sudo usermod -aG sudo dwooten
sudo usermod -aG sudo efulton 
sudo usermod -aG sudo jbreslin
sudo usermod -aG sudo jhughes
sudo usermod -aG sudo jlong
sudo usermod -aG sudo jross
sudo usermod -aG sudo jwarfield
sudo usermod -aG sudo kholmes
sudo usermod -aG sudo kkeels
sudo usermod -aG sudo kwright
sudo usermod -aG sudo lgates
sudo usermod -aG sudo lstanton
sudo usermod -aG sudo mward
sudo usermod -aG sudo nhollowman
sudo usermod -aG sudo nmurray
sudo usermod -aG sudo nthomas
sudo usermod -aG sudo nthrones
sudo usermod -aG sudo sdouglass
sudo usermod -aG sudo sjones
sudo usermod -aG sudo smyrick
sudo usermod -aG sudo sshields
sudo usermod -aG sudo tepps
sudo usermod -aG sudo tfleming
sudo usermod -aG sudo ttribble
sudo usermod -aG sudo wwhitaker

echo make the hosts file and copy it
sudo ./make_hosts.sh

echo run setup for epoptes client, need a reboot after this
/home/student/sandbox/breslinserver/ubreslin2/dev/setup_epoptes_client.sh

echo run setup youtube-dl
/home/student/sandbox/breslinserver/ubreslin2/mixxx/setup_youtube.sh

echo keep in mind if this is the first time installing epoptes you must manually reboot in order for it to work

