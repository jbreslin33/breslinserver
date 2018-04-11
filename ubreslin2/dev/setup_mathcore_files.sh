echo -----------------------copy files ------------------------------------
sudo cp default_jbreslin /etc/apache2/sites-available/000-default.conf
echo NO sudo cp apache.conf /etc/phppgadmin
echo NO sudo cp config.inc.php /etc/phppgadmin
echo NO sudo cp postgresql.conf /etc/postgresql/9.5/main

echo -----------------------web server restart------------------------------
sudo service apache2 reload
sudo /etc/init.d/apache2 restart
