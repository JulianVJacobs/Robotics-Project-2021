# accept software packages from packages.ros.org
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# accept software packages from packages.osrfoundation.org
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

# get keys for packages.ros.org
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# get keys for packages.osrfoundation.org
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

# update package index
sudo apt-get update

# install ros melodic
sudo apt-get install ros-melodic-desktop-full -y

# install ignition fuel
sudo apt-get install libignition-fuel-tools5-dev -y

# source melodic environment
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

# ensure ignition is pointing to the correct config path
echo "export IGN_CONFIG_PATH=/usr/share/ignition" >> ~/.bashrc

source ~/.bashrc

# install dependencies
sudo apt-get install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential git cmake pkg-config python ruby-ronn libignition-cmake2-dev libignition-common3-dev libignition-msgs5-dev libignition-tools-dev libzip-dev libjsoncpp-dev libcurl4-openssl-dev libyaml-dev xdotool -y
# initialise rosdep
sudo rosdep init
rosdep update

# get the assignment workspace
wget https://lamp.ms.wits.ac.za/robotics/robot_assignment_ws.tar.gz
tar zxvf robot_assignment_ws.tar.gz
rm -r robot_assignment_ws.tar.gz
cd robot_assignment_ws
rm -r build devel
catkin_make

# get turtlebot2 on melodic
curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_all.sh | bash
sudo apt-get install ros-melodic-joy ros-melodic-move-base ros-melodic-slam-gmapping -y
catkin_make

# source workspace
source devel/setup.bash

# make directory for dino's maps
mkdir maps

# create package for blind navigation
cd src/turtlebot
catkin_create_pkg turtlebot_blind_navigation rospy geometry_msgs move_base_msgs nav_msgs
cd ../..
catkin_make

# setup the screen for xserv
echo "export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=0" >> ~/.bashrc
echo "export GAZEBO_MASTER_URI=http://localhost:11345" >> ~/.bashrc
echo "export GAZEBO_MODEL_DATABASE_URI=http://models.gazebosim.org/" >> ~/.bashrc
echo "export GAZEBO_RESOURCE_PATH=/usr/share/gazebo-9:${GAZEBO_RESOURCE_PATH}" >> ~/.bashrc
echo "export GAZEBO_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/gazebo-9/plugins:${GAZEBO_PLUGIN_PATH}" >> ~/.bashrc
echo "export GAZEBO_MODEL_PATH=/usr/share/gazebo-9/models:${GAZEBO_MODEL_PATH}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib/x86_64-linux-gnu/gazebo-9/plugins" >> ~/.bashrc
echo "export OGRE_RESOURCE_PATH=/usr/lib/x86_64-linux-gnu/OGRE-1.9.0" >> ~/.bashrc
source ~/.bashrc