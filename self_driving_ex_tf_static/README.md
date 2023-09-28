# TF Massage (Transform Broadcasters) Example

## Overview

This repository provides a simple example of using the `tf2_ros` library in Python to broadcast static and dynamic transforms within the ROS (Robot Operating System) environment. Transforms are fundamental in robotics for representing the relationship between different frames of reference, such as the position and orientation of a robot or its sensors.

## Features

### 1. Static Transform

The example includes a static transform broadcasted from the "robot_base" frame to the "top_base" frame. This static transform remains constant over time and is commonly used to represent a fixed relationship between two frames.

### 2. Dynamic Transform

A dynamic transform is also broadcasted, changing its translation in the x-axis incrementally over time. This dynamic transform represents a moving component, such as a robot's position in the "odom" frame.

## Structure

The Python script (`tf_broadcast_example.py`) is structured as follows:

- Initialization of broadcasters and transforms
- Callback function (`TimerCallback`) to update the dynamic transform

## Dependencies

- ROS (Robot Operating System)
- Python 3
- `tf2_ros` library

