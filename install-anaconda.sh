#!/bin/bash
# Install and Configure Anaconda
# Install: https://docs.anaconda.com/anaconda/install/linux
#
#
curl -O https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
#
# Verify data integrity, using MD5 or SHA-256
# md5sum Anaconda3-5.1.0-Linux-x86_64.sh
sha256sum Anaconda3-5.1.0-Linux-x86_64.sh
#
# Install Anaconda
bash Anaconda3-5.1.0-Linux-x86_64.sh
#
# Activate the installation
souce ~/.bashrc
#
# Update Conda
conda update -n base conda
#
# Verify Installation
conda list


