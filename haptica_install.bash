#!/bin/bash

# Ros install
chmod +x ros_install.bash
# ./ros_install.bash

# Create catkin workspace
source /opt/ros/kinetic/setup.bash

mkdir -p ~/ros_workspaces/kinova_ws/src
cd ~/ros_workspaces/kinova_ws/src
catkin_init_workspace
cd ..
catkin_make

