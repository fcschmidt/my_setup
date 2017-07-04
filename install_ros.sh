#!/bin/bash
# Install ROS for Ubuntu
# more information on http://wiki.ros.org/
ROS_VERSION="indigo"

# Ubuntu apt repository
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# Add apt-keys
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# Update the ROS packages
apt-get update

# Install full ROS indigo version, for Ubuntu 14.04
# check the setting for other versions and other distros 
apt-get install ros-$ROS_VERSION-desktop-full

# Compiler run code components in ROS
rosdep init

rosdep update

# Add ROS variable to .bashrc
echo "source /opt/ros/$ROS_VERSION/setup.bash" >> ~/.bashrc

# Generate the change in the current shell
source ~/.bashrc

# Download many source trees for the ROS package
apt-get install python-rosinstall

# Update
apt-get update