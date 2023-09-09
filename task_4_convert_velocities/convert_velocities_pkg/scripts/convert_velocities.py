#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import numpy as np 
import math
radius_wheel = 0.1
wheel_separation = 0.27
theta = 0
# delete raw for y becouse sin 0 = 0 and it is not important
coefficients = np.array([[(radius_wheel/2)* math.cos(theta),(radius_wheel/2)* math.cos(theta)],
                         [radius_wheel/wheel_separation,-radius_wheel/wheel_separation]])

def sub_vel():  
    rospy.init_node('sub_vel', anonymous=False)
    rospy.Subscriber('/cmd_vel', Twist, convert_vel_callback)
    rospy.spin()

def convert_vel_callback(vel):
    inv_coefficients = np.linalg.inv(coefficients)
    
    print(f'inverse the matrix coeffie : {inv_coefficients}')

    vel_array = np.array([[vel.linear.x],[vel.angular.z]])
    ang_vel_wheels = np.dot(inv_coefficients,vel_array)
    print(f'ang_vel_wheels : {ang_vel_wheels}')

if __name__ == '__main__':
    
    sub_vel()
 