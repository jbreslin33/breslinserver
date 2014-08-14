sudo apt-get install apache2
sudo apt-get install php5
sudo cp php5.conf /etc/apache2/mods-enabled
sudo cp 000-default /etc/apache2/sites-enabled
sudo /etc/init.d/apache2 restart

sudo apt-get install mercurial

sudo apt-get install postgresql
sudo apt-get install phppgadmin

sudo cp apache2.conf /etc/apache2
sudo cp apache.conf /etc/phppgadmin

sudo service apache2 reload 
sudo cp config.inc.php /etc/phppgadmin

sudo cp postgresql.conf /etc/postgresql/9.1/main


