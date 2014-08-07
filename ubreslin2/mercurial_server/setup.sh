sudo cp hgrc /etc/mercurial/
sudo mkdir /mercurial
sudo mkdir /mercurial/repositories
sudo chown -R www-data:www-data /mercurial/
sudo cp hgweb.config /mercurial/
sudo cp hgweb.cgi /mercurial/
sudo mkdir /etc/apache2/mercurial
sudo cp mercurial.conf /etc/apache2/mercurial
echo install some tools
sudo apt-get install apache2-utils
echo to setup repo enter manually
echo cd /mercurial/repositories/
echo sudo mkdir first_repo
echo cd first_repo/
echo sudo hg init 
echo sudo chown -R www-data:www-data /mercurial

echo for passwords
cd /mercurial/
sudo htpasswd -mc hgusers jbreslin



