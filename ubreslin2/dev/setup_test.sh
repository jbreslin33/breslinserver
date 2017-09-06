echo
echo ---------------------------------------------
echo UBRESLIN: PROJECTS
echo ---------------------------------------------
echo projects

git clone https://github.com/jbreslin33/breslinmathracer.git /home/$1/sandbox/breslinmathracer
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/default_jbreslin /etc/apache2/sites-available/000-default.conf

echo create db jamesanthony
sudo -u postgres createdb jamesanthonybreslin

echo
echo ---------------------------------------------
echo UBRESLIN: COPY FILES
echo ---------------------------------------------
sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/apache.conf /etc/phppgadmin

sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/config.inc.php /etc/phppgadmin

sudo cp /home/$1/sandbox/breslinserver/ubreslin2/dev/postgresql.conf /etc/postgresql/9.5/main

sudo service apache2 reload
sudo /etc/init.d/apache2 restart


