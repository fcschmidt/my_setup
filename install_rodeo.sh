#!/bin/bash
# Install Rodeo Python IDE for Data Science
# https://www.yhat.com/products/rodeo/downloads?linux-download=true
#
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 33D40BC6
sudo add-apt-repository "deb http://rodeo-deb.yhat.com/ rodeo main"
#
#### install rodeo and run it
sudo apt-get install rodeo
/opt/Rodeo/rodeo
