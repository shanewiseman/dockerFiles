#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install build-essential libssl-dev git apache2 -y

/etc/init.d/apache2 stop
cd /tmp/
git clone https://github.com/shanewiseman/password-manager-web.git

rm -fr /var/www/html/
mv ./password-manager-web/var/www/html/ /var/www/

rm -fr /etc/apache2/sites-enabled/
mv ./password-manager-web/etc/apache2/sites-enabled/ /etc/apache2/

/etc/init.d/apache2 start
tail -f /var/log/apache2/access.log 