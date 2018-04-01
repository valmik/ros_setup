#!/bin/bash
# From docs.ros.org/kinetic/api/moveit_tutorials/html/doc/pr2_tutorials/planning/src/doc/move_group_interface_tutorial.html

echo "****************************** Installing PR2 Moveit Tutorials"
source /opt/ros/kinetic/setup.bash

mkdir -p ~/ros_workspaces/moveit_practice_ws/src
cd ~/ros_workspaces/moveit_practice_ws/src
catkin_init_workspace

git clone https://github.com/ros-planning/moveit_tutorials.git
git clone https://github.com/PR2/pr2_common.git -b kinetic-devel
git clone https://github.com/davetcoleman/pr2_moveit_config.git

rosdep install --from-paths . --ignore-src --rosdistro kinetic
cd ..
catkin config --extend /opt/ros/kinetic --cmake-args -DCMAKE_BUILD_TYPE=Release

catkin_make