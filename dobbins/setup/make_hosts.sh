touch hosts
rm -r hosts

echo "127.0.0.1       localhost" >> hosts
#127.0.1.1       r431f01
echo "127.0.1.1"    $HOSTNAME >> hosts

#echo "127.0.1.1       r431f01" > hosts_list

echo "# The following lines are desirable for IPv6 capable hosts" >> hosts
echo "::1     ip6-localhost ip6-loopback" >> hosts
echo "fe00::0 ip6-localnet" >> hosts 
echo "ff00::0 ip6-mcastprefix" >> hosts
echo "ff02::1 ip6-allnodes" >> hosts
echo "ff02::2 ip6-allrouters" >> hosts

#sudo cp hosts /etc/hosts

