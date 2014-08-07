sudo cp hgrc /etc/mercurial/
sudo mkdir /mercurial
sudo mkdir /mercurial/repositories
sudo chown -R www-data:www-data /mercurial/
sudo cp hgweb.config /mercurial/
sudo cp hgweb.cgi /mercurial/
sudo mkdir /etc/apache2/mercurial
sudo cp mercurial.conf /etc/apache2/
