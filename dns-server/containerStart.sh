#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install dnsutils rsyslog bind9 bind9utils bind9-doc -y
service rsyslog start
mkdir /etc/bind/zones/
cp /root/zones/* /etc/bind/zones/
cp /root/config/* /etc/bind/
/etc/init.d/bind9 restart
rndc querylog
tail -F /var/log/syslog | grep named 
