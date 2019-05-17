#!/bin/bash
#
#  Install Python and Config Setup
#
sudo apt-get install python3-pip
pip install -U pip
pip3 install --upgrade pip
#
# Install Virtualenv
pip3 install virtualenv
#
# Install Jupyter
python3 -m pip install jupyter
#pip3 install jupyter
#pip3 install -U jupyter
