#!/bin/bash
apt-get update
apt-get upgrade -y 
apt-get install build-essential libssl-dev git npm nodejs python wget curl vim python-pip -y
pip install cqlsh
ln /usr/bin/nodejs /usr/bin/node

#install go-lang
wget https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
tar -C /usr/local -xzf  go1.9.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin



mkdir /var/www; cd /var/www/
git clone https://github.com/c9/core.git
git config --global user.email "shane.db.wiseman@gmail.com"
git config --global user.name "Shane Wiseman"

ln /usr/bin/nodejs /usr/bin/node
cd core/

scripts/install-sdk.sh

nodejs server.js -p 80 --listen 0.0.0.0 -a test:test -w /var/project/
