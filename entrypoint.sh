#!/bin/bash

source /opt/ros/noetic/setup.bash
source /home/catkin_ws/devel/setup.bash

export TURTLEBOT3_MODEL=waffle
roslaunch isar_turtlebot simulation.launch
roslaunch isar_turtlebot our_house.launch

roslaunch isar_turtlebot teleop.launch
rosrun joy joy_node dev:=/dev/input/js0
roslaunch teleop_twist_joy teleop.launch
roslaunch turtlebot_3_teleop turtlebot_3_teleop_key.launch
