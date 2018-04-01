#!/bin/bash

# Ros install
chmod +x ros_install.bash
./ros_install.bash

echo "****************************** Installing Dependencies"
# Install AR Track Alvar
sudo apt-get install ros-kinetic-ar-track-alvar

# Install autolab core and perception
sudo apt install python-pip
pip install autolab_core

mkdir ~/temp
cd ~/temp
git clone https://github.com/BerkeleyAutomation/perception.git
cd perception
pip install -e .


# Install opencv 2.4. https://gist.github.com/arthurbeggs/06df46af94af7f261513934e56103b30

# Create catkin workspace
echo "****************************** Creating a Catkin Workspace"
source /opt/ros/kinetic/setup.bash

mkdir -p ~/ros_workspaces/kinova_ws/src
cd ~/ros_workspaces/kinova_ws/src
catkin_init_workspace
cd ..
catkin_make

