echo making dir
sudo mkdir /virtual-machines
echo copying tar file to current dir
sudo cp /mnt/public/virtual-machines/vxp.tar.gz . 
echo unzipping and untarring to current dir
sudo gunzip < vxp.tar.gz | tar xvf -
echo moving to virtual-machines dir
sudo mv vxp /virtual-machines
echo changing permissions
sudo chmod -R 777 /virtual-machines
 
echo complete you can now reboot and login 
