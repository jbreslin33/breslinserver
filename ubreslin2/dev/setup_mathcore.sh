echo -------------------------- checkout mathcore from git ----------------------------
sudo rm -r /var/www/breslinmathracer/
sudo git clone https://github.com/jbreslin33/breslinmathracer.git /var/www/breslinmathracer

echo -----------------------copy files ------------------------------------

sudo cp mathcore.conf /etc/apache2/sites-available/
cd /etc/apache2/sites-available/
sudo a2ensite mathcore.conf
sudo cp apache.conf /etc/phppgadmin


echo -----------------------web server restart------------------------------
sudo service apache2 reload

echo ----------------- create mathcore db called jamesanthonybreslin
sudo -u postgres createdb jamesanthonybreslin

echo  -------------------------------- set password to mibesfat ----------------
sudo -u postgres psql postgres

echo -------------------install php------------------------
cd /home/jbreslin/sandbox/breslinserver/ubreslin2/dev
./install_php.sh


