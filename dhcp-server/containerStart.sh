#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install isc-dhcp-server rsyslog wget -y
service rsyslog start
cp /root/dhcpd.conf /etc/dhcp/dhcpd.conf
/etc/init.d/isc-dhcp-server start
wget http://standards.ieee.org/develop/regauth/oui/oui.txt -O /usr/local/etc/oui.txt 
tail -F /var/log/syslog 
