#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

def pub_vel():
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    rospy.init_node('pub_vel', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        vel = Twist()
        vel.linear.x = 0.5
        vel.linear.y = 0
        vel.linear.z = 0
        vel.angular.x = 0
        vel.angular.y = 0
        vel.angular.z = 0.5
        pub.publish(vel)
        print('now publish vel in x:0.5, z:0.5')
        
        rate.sleep()
if __name__ == '__main__':
    try:
        pub_vel()
    except rospy.ROSInterruptException:
        pass