#!/bin/bash

### CHANGE THIS
ROS_WORKSPACE=~/ros_workspaces/kinect_ws


# Tested on a blank install of Ubuntu 16.04 with only sublime, chrome, ros kinetic, and moveit installed

# Partially taken from https://www.20papercups.net/programming/kinect-on-ubuntu-with-openni/
# Partially taken from http://wiki.ros.org/openni_camera
# Partially taken from https://fivedots.coe.psu.ac.th/~ad/kinect/installation.html

## First install OpenNI

# Prereqs, uses Java 8 instead of 7, but seems to work
sudo apt-get install git build-essential python libusb-1.0-0-dev freeglut3-dev openjdk-8-jdk

# Optional, but the install breaks without them
sudo apt-get install doxygen graphviz mono-complete

# OpenNI 1.5.4
mkdir ~/KinectInstall
cd ~/KinectInstall
git clone https://github.com/OpenNI/OpenNI.git
cd OpenNI
git checkout Unstable-1.5.4.0
cd Platform/Linux/CreateRedist
chmod +x RedistMaker
./RedistMaker

# This might be wrong for your computer
cd ../Redist/OpenNI-Bin-Dev-Linux-x64-v1.5.4.0
sudo ./install.sh


# Install the Sensor Module

cd ~/KinectInstall
git clone https://github.com/avin2/SensorKinect.git

cd SensorKinect
cd Platform/Linux/CreateRedist
chmod +x RedistMaker
./RedistMaker
cd ../Redist/Sensor-Bin-Linux-x64-v5.1.2.1
sudo ./install.sh


# Install NITE
# Note that this is precompiled for Linux64.
# If you're using something else, there are links in this repo
cd ~/KinectInstall
git clone https://github.com/valmik/NITE-Kinect.git

cd NITE-Kinect/NITE-Bin-Dev-Linux-x64-v1.5.2.21
sudo ./install.sh


# Now start doing ROS
mkdir -p $ROS_WORKSPACE/src
cd $ROS_WORKSPACE/src
catkin_init_workspace

git clone https://github.com/ros-drivers/openni_camera.git
git clone https://github.com/ros-drivers/rgbd_launch.git
git clone https://github.com/ros-drivers/openni_tracker.git

cd ..
catkin_make


