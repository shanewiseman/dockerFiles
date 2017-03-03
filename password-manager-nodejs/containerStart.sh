#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install build-essential libssl-dev git npm nodejs python -y
ln /usr/bin/nodejs /usr/bin/node

mkdir /var/www; cd /var/www/
git clone https://github.com/shanewiseman/password-manager-nodejs.git
cd password-manager-nodejs/

nodejs index.js
