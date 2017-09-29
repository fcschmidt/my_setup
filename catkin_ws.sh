#!/bin/bash
# Create an ROS catkin new workspace
# Using cpp or python client library for ROS
# more information on http://wiki.ros.org/
#
DIR=
LIBRARY=
#
# Create a parent directory 
rm -rf $DIR
mkdir -p ~/$DIR/catkin_ws/src
#
# Enter the folder 
cd ~/$DIR/catkin_ws/src
#
# Initialize the catkin workspace
catkin_init_workspace
#
# Enter the folder (~/catkin_ws) and build the package (even if there is no source file)
cd ..
catkin_make
#
# Creating an ROS package
cd ~/$DIR/catkin_ws/src
#
# Create a hello_world package with  std_msgs dependencies
# Using default library the cpp (C++) client for ROS or 
# rospy is the Python client library for ROS
catkin_create_pkg hello_world std_msgs $LIBRARY
#
# Added the current ROS workspace path in all terminal so that we can
# access the ROS packages inside this workspace
cd ..
source devel/setup.bash
echo "# ROS workspace"
echo "source ~/$DIR/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
