echo change login
sudo cp ../ubuntu_standalone/lightdm.conf /etc/lightdm

echo power off on lid closed
sudo cp lidbtn /etc/acpi/events
sudo cp pb.sh /etc/acpi
sudo chmod 755 /etc/acpi/pb.sh

echo complete you can now reboot and login 
