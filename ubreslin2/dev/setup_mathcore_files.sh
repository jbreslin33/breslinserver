echo -----------------------copy files ------------------------------------
sudo cp default_jbreslin /etc/apache2/sites-available/000-default.conf
sudo cp apache.conf /etc/phppgadmin

echo -----------------------web server restart------------------------------
sudo service apache2 reload
sudo /etc/init.d/apache2 restart
