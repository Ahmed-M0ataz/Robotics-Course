# ROS Service Example

## Overview

This example demonstrates a simple ROS service using Python and C++. The service calculates the sum of two integers and computes the yaw angle from a 3D vector.

**Note: If you want to use this package, remove `task_5_` from the folder name before using it. The correct folder name should be `service_example_pkg`.**

## File Structure

### C++ Nodes

#### 1. `client.cpp`
- This node sends a service request to add two integers.

#### 2. `serv.cpp`
- This node provides a service to add two integers.

#### 1. `service_client_cpp.cpp`
- This node requests the yaw angle from a 3D vector.

#### 2. `service_server_cpp.cpp`
- This node provides a service to send yaw angle.

### Python Nodes

#### 1. `service_client_py.py`
- This Python node requests the yaw angle from a 3D vector.

#### 2. `service_server_py.py`
- This Python node provides a service to compute the yaw angle from a 3D vector.

## ROS Service Definitions

### 1. `AddTwoInts.srv`
- Request:
  - int64 A
  - int64 B
- Response:
  - int64 Sum

### 2. `pose_cont.srv`
- Request:
  - float64 x
  - float64 y
  - float64 z
- Response:
  - float64 yaw_angle

## Running the Example

1. Build the ROS packages: `catkin_make`.

2. Launch the ROS master node: `roscore`.

3. Run the server nodes:
   - `rosrun service_example_pkg add_two_ints_server_ex`
   - `rosrun service_example_pkg service_server_node`
   - `rosrun service_example_pkg service_server_py.py`

4. Run the client nodes:
   - `rosrun service_example_pkg add_two_ints_client_ex 3 4`
   - `rosrun service_example_pkg service_client_node 3 4 2`
   - `rosrun service_example_pkg service_client_py.py 1 1 0`

## Notes

- Ensure that the service names in the client nodes match the actual service names in the server nodes. Also, ensure that the service types in the Python client node match the actual service types.
