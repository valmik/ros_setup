
# First install ros-kinetic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential


# Install MoveIt
sudo apt-get install ros-kinetic-moveit

# Update assimp to 3.3 (for moveit)
mkdir ~/temp
cd ~/temp
wget https://github.com/assimp/assimp/archive/v3.3.zip
unzip v3.3.zip
cd assimp-3.3
cmake CMakeLists.txt -G 'Unix Makefiles'
make
sudo make install
cd port/PyAssimp/
sudo python setup.py install

