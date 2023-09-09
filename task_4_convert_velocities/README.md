# convert_velocities_pkg (Differential Drive Implementation)

This package converts twist messages to angular velocities for the wheels of a mobile robot with a differential drive configuration.

![rqt_graph](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_4_convert_velocities/media/rosgragh.svg)

### Package Overview

#### `pub_vel`: publish_twist_node

The `publish_twist.py` file contains a node named `pub_vel`. This node is responsible for publishing Twist messages to the `/cmd_vel` topic. It provides velocity commands to control the movement of the mobile robot.

#### `sub_vel`: convert_velocities_node

The `convert_velocities.py` file contains a node named `sub_vel`. This node subscribes to Twist messages on the `/cmd_vel` topic. It calculates the angular velocities for the left and right wheels of the mobile robot based on the provided equations. 

- `/left_wheel_controller/command`: This topic is used to control the velocity of the left wheel. The node publishes messages of type `float32` to control the left wheel's movement.

- `/right_wheel_controller/command`: This topic is used to control the velocity of the right wheel. Similar to the left wheel, it also publishes messages of type `float32` to control the right wheel's movement.

These published angular velocities control the motion of the mobile robot's wheels, allowing it to move in response to the received Twist messages.

## Equations Used

The angular velocity for the left and right wheels is calculated using the following equations:

![Differential Drive Equations](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_4_convert_velocities/media/diff_drive_equation.png)

## Demo

![Differential Drive for Mobile Robot](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_4_convert_velocities/media/output_ang_vel_wheel.gif)

## How to Use

1. Ensure that your mobile robot's wheelbase is correctly configured in the `convert_velocities.py` script.

2. Launch the package using one of the following methods:

   - Using a launch file:

     ```bash
     roslaunch convert_velocities_pkg convert_velocities.launch
     ```

3. The node will subscribe to `/cmd_vel`, calculate the angular velocities for the wheels, and print them to the console.

## Dependencies

- rospy
- geometry_msgs
