echo teacher specific setup
echo for teacher admin of epoptes
echo for some reason we have to uninstall epoptes first i think it does
echo not place nice with nis
sudo apt-get remove epoptes
sudo apt-get install epoptes
echo add student to list epoptes group
sudo gpasswd -a student epoptes
sudo gpasswd -a v1201 epoptes

echo install clusterssh
sudo apt-get install clusterssh

