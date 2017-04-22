#/bin/bash
echo -e "DO NOT USE THIS IF YOUR CONNECTION IS WORKING\n\n"
echo -e "\nWhat interface do you need to set up? (probably eth0) "
read interface
echo -e "\nWhat team are you? "
read team

echo "iface $interface inet static" > /etc/network/interfaces
echo "	address 192.168.$team.7" >> /etc/network/interfaces
echo "	netmask 255.255.255.0" >> /etc/network/interfaces
echo "	broadcast 255.255.255.255" >> /etc/network/interfaces
echo "	gateway 192.168.$team.1" >> /etc/network/interfaces


echo "setup complete"
