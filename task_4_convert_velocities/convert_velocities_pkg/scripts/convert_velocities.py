#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float32
import numpy as np 
import math
radius_wheel = 0.1
wheel_separation = 0.27
theta = 0
# delete raw for y becouse sin 0 = 0 and it is not important
coefficients = np.array([[(radius_wheel/2)* math.cos(theta),(radius_wheel/2)* math.cos(theta)],
                         [radius_wheel/wheel_separation,-radius_wheel/wheel_separation]])
rospy.init_node('sub_vel', anonymous=False)
pub_left = rospy.Publisher('/left_wheel_controller/command', Float32, queue_size=10)
pub_right = rospy.Publisher('/right_wheel_controller/command', Float32, queue_size=10)

def sub_vel():  
    rospy.Subscriber('/cmd_vel', Twist, convert_vel_callback)
    rospy.spin()

def convert_vel_callback(vel):
    left_wheel_rotational = Float32()
    right_wheel_rotational = Float32()
    inv_coefficients = np.linalg.inv(coefficients)
    
    print(f'inverse the matrix coeffie : {inv_coefficients}')

    vel_array = np.array([[vel.linear.x],[vel.angular.z]])
    ang_vel_wheels = np.dot(inv_coefficients,vel_array)
    right_wheel_rotational.data = ang_vel_wheels[0]
    left_wheel_rotational.data = ang_vel_wheels[1]
    
    print(f'right_rotational_vel : {right_wheel_rotational.data}')
    print(f'left_rotational_vel : {left_wheel_rotational.data}')
    pub_left.publish(left_wheel_rotational)
    pub_right.publish(right_wheel_rotational)

if __name__ == '__main__':
    
    sub_vel()
 