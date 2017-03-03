#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install build-essential libapache2-mod-proxy-html libxml2-dev libssl-dev git apache2 -y

a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html

/etc/init.d/apache2 stop
cd /tmp/
git clone https://github.com/shanewiseman/password-manager-web.git

rm -fr /var/www/html/
mv ./password-manager-web/var/www/html/ /var/www/

rm -fr /etc/apache2/sites-enabled/
mv ./password-manager-web/etc/apache2/sites-enabled/ /etc/apache2/

/etc/init.d/apache2 start
tail -f /var/log/apache2/error.log 
