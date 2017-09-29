#!/bin/bash
# Install ROS for Ubuntu
# more information on http://wiki.ros.org/
# source: http://wiki.ros.org/kinetic/Installation/Ubuntu

ROS_VERSION="indigo"

# Ubuntu apt repository
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# Add apt-keys
sudo wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# Update the ROS packages
sudo apt-get update

# Install full ROS indigo version, for Ubuntu 14.04
# check the setting for other versions and other distros 
sudo apt-get install ros-$ROS_VERSION-desktop-full

# Compiler run code components in ROS
sudo rosdep init

sudo rosdep update

# Add ROS variable to .bashrc
echo "source /opt/ros/$ROS_VERSION/setup.bash" >> ~/.bashrc

# Generate the change in the current shell
source ~/.bashrc

# Download many source trees for the ROS package
sudo apt-get install python-rosinstall

# Update
sudo apt-get update
