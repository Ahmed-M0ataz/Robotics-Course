# ROS Package - `ros_task_1`

This ROS package consists of two main nodes:

1. **`publisher_node.cpp`**
    - Description: This node is responsible for publishing the heading angle topic with an increment of 0.1 radians every one second.
    - File: `publisher_node.cpp`

2. **`subscribe_node.cpp`**
    - Description: This node subscribes to the heading angle topic and prints the received messages to the console.
    - File: `subscribe_node.cpp`

## Running the Package

![pub sub](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_6_recab/media/heading_angle.gif)

To run this ROS package, use the following command:

```bash
roslaunch ros_task_1 heading_angle.launch 
```

## create urdf file :
1- Make the model consist of only a rectangle with dimentions 10 (length) cm x 10 (width) cm x5 (height) cm

2- create a semisphere on top of the rectangle in the middle with  a radius of 2.5 cm

![urdf file](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_6_recab/media/urdf_file.png)
