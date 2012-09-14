sudo apt-get install apache2
sudo apt-get install php5
sudo cp php5.conf /etc/apache2/mods-enabled
sudo cp 000-default /etc/apache2/sites-enabled
sudo /etc/init.d/apache2 restart
sudo chmod 777 /var/www/

sudo apt-get install mercurial
cd /var/www
hg clone https://jbreslin33@code.google.com/p/jbreslin33-level29

sudo apt-get install postgresql
sudo apt-get install phppgadmin

sudo cp apache2.conf /etc/apache2
sudo cp apache.conf /etc/phppgadmin

sudo service apache2 reload 
