#!/bin/bash
#
#
#
#

sudo apt-key adv — keyserver hkp://keyserver.ubuntu.com:80 — recv 7F0CEB10

#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
#echo “deb http://repo.mongodb.org/apt/ubuntu “$(lsb_release -sc)”/mongodb-org/3.0 multiverse” | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

apt-get update
apt-get install -y mongodb-org


echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
