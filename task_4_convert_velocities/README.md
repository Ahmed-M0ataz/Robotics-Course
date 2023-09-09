# convert_velocities_pkg (Differential Drive Implementation)

This package converts twist messages to angular velocities for the wheels of a mobile robot with a differential drive configuration.

## Package Overview
- **pub_vel**: publish_twist_node

- **sub_vel**: convert_velocities_node
- **/cmd_vel**: /cmd_vel (Twist messages)

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
