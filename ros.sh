#!/bin/bash
# Install ROS for Ubuntu
# More information on http://wiki.ros.org/
# source: http://wiki.ros.org/kinetic/Installation/Ubuntu
#
if ["$DISTRIB_RELEASE"  == "16.04"]; then
	# Ubuntu apt repository
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	
	# Add apt-keys
	sudo wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
	
	# Update the ROS packages
	sudo apt-get update
	
	# Full instalation (Recommended)
	sudo apt-get install ros-kinetic-desktop-full
	
	# Compiler run code components in ROS
	sudo rosdep init
	rosdep update
	
	# Enviroment setup
	# Add ROS variable to .bashrc
	echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
	
	# Generate the change in the current shell
	source ~/.bashrc
	source /opt/ros/kinetic/setup.bash
	
	# If you use zsh instead of bash you need to run the following commands to set up your shell:
	echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc
	source ~/.zshrc
	LINE="source /opt/ros/kinetic/setup.zsh"
	FILE=~/.zshrc
	grep -q "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
	
	# Getting rosinstall
	# To install this tool on Ubuntu, run:
	# Download many source trees for the ROS package
	sudo apt-get install python-rosinstall
fi
