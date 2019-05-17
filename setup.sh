
#!/bin/bash
# My setup for Ubuntu
# Install and config
#

TOKEN = 1d7913dafab24921896610b1a03be971
# Install snap suport
apt-get install snapd

# Enable live kernel
snap install canonical-livepatch $TOKEN

# Install Proprietary Nvidia GPU Drivers On Ubuntu
# 16.04 / 17.10 / 18.04
#
# Add the official Nvidia PPA to Ubuntu
add-apt-repository ppa:graphics-drivers/ppa
#
# Update and Install Nvidia Drivers
# install the current latest drivers for system.
apt update
apt install nvidia-387
