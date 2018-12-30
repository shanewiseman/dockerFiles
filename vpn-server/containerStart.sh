#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install rsyslog openvpn vim iptables net-tools -y
service rsyslog start

mv ~/conf/ta.key /etc/openvpn/
mv ~/conf/dh.key /etc/openvpn/
mv ~/conf/vpn-server.key.pem /etc/openvpn/
mv ~/conf/vpn-server.cert.pem /etc/openvpn/
mv ~/conf/ca-chain.cert.pem /etc/openvpn/
mv ~/conf/server.conf /etc/openvpn/



echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -I POSTROUTING -s 10.8.0.0/8 -o eth0 -j MASQUERADE
/etc/init.d/openvpn start
tail -F /var/log/syslog | grep ovpn-server 
