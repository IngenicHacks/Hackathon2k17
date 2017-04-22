#/bin/bash
echo "DO NOT USE THIS IF YOUR CONNECTION IS WORKING\n\n"
echo "What interface do you need to set up? (probably eth0) "
read interface
echo "What IP address do you need? "
read ipaddr
echo "What team are you? "
read team

echo "iface $interface inet static" > /etc/network/interfaces
echo "	address $ipaddr" >> /etc/network/interfaces
echo "	netmask 255.255.255.0" >> /etc/network/interfaces
echo "	broadcast 255.255.255.255" >> /etc/network/interfaces
echo "	gateway 192.168.$team.1" >> /etc/network/interfaces


echo "setup complete"
