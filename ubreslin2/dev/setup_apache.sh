
echo -----------------------web server------------------------------

sudo rm -r httpd-2.4.41

sudo apt-get -y install libpcre3 libpcre3-dev
sudo apt-get -y install libapr1-dev
sudo apt-get -y install libaprutil1-dev
wget http://apache.spinellicreations.com//httpd/httpd-2.4.41.tar.gz
gunzip -c httpd-2.4.41.tar.gz | tar xvf -
cd httpd-2.4.41
echo -----------------------configure apache------------------------------
./configure
echo -----------------------configure apache ssl------------------------------
./configure --enable-ssl

echo -----------------------make apache ------------------------------
make
echo -----------------------make install apache ------------------------------
sudo make install


