sudo apt-get dist-upgrade
echo
echo --------------------------------------------
echo UBRESLIN: INSTALL PROGRAMS 
echo --------------------------------------------
sudo apt-get install apache2 
sudo apt-get install php5 
sudo apt-get install postgresql
sudo apt-get install phppgadmin
sudo apt-get install libpq-dev

cd /home/jbreslin/sandbox
hg clone https://jbreslin33@code.google.com/p/breslinserver

sudo chmod -R 777 /home/jbreslin/sandbox/breslinmathracer/src/web/insert/upload
sudo -u postgres createdb jamesanthonybreslin
sudo cp /home/jbreslin/sandbox/breslinserver/ubreslin2/000-default /etc/apache2/sites-enabled

echo are these still needed???
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/apache.conf /etc/phppgadmin
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/config.inc.php /etc/phppgadmin
echo sudo cp /home/$1/sandbox/breslinserver/ubreslin2/postgresql.conf /etc/postgresql/9.1/main
sudo service apache2 reload
sudo /etc/init.d/apache2 restart

echo --------------------------------------------
echo UBRESLIN: POSTGRESQL
echo --------------------------------------------
echo sudo -u postgres psql postgres
echo  backslashpassword postgres dont forget to put a backslash before password, make postgres pass mibesfat

echo
echo --------------------------------------------
echo UBRESLIN: ABCANDYOU
echo --------------------------------------------
echo UBRESLIN: may be down from a clone directory instead i.e. jbreslin33-logger
echo cd /home/jbreslin/sandbox/baseapplication/src
echo ./src/database/build.sh
