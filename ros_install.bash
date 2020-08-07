
# First install ros-melodic
echo "****************************** Installing ROS Melodic"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt-get update
sudo apt-get install ros-melodic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

# Install MoveIt
echo "****************************** Installing MoveIt"
sudo apt-get install ros-melodic-moveit

# Hopefully unneccesary
# Update assimp to 3.3 (for moveit)
# echo "****************************** Updating assimp to v3.3"
# mkdir ~/temp
# cd ~/temp
# wget https://github.com/assimp/assimp/archive/v3.3.zip
# unzip v3.3.zip
# cd assimp-3.3
# cmake CMakeLists.txt -G 'Unix Makefiles'
# make
# sudo make install
# cd port/PyAssimp/
# sudo python setup.py install

