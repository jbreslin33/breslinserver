echo install pv
sudo apt-get install pv

echo making dir
sudo mkdir /virtual-machines

echo copying vxp archive to /virtual-machines 
sudo pv /mnt/public/virtual-machines/vxp.tar.gz > /virtual-machines/vxp.tar.gz       

echo unzipping and untarring to current dir
sudo gunzip < /virtual-machines/vxp.tar.gz | tar xvf -

echo moving to /virtual-machines dir
sudo mv vxp /virtual-machines

echo changing permissions recursively on /virtual-machines
sudo chmod -R 777 /virtual-machines

echo remove /virtual-machines/vxp.tar.gz 
sudo rm /virtual-machines/vxp.tar.gz 
 
echo complete you can now reboot and login 
