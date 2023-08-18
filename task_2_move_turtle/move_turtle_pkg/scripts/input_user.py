#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

def publisher():
    pub_move_turtle = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rospy.init_node('pub_move_turtle_node', anonymous=False)
    rate = rospy.Rate(5)
    flag = 1
    while not rospy.is_shutdown():
        try:
            linear_x = float(input("Enter a linear x value between 2 and 6: "))
            
            if 2 <= linear_x <= 6:
                while(flag):
                    anglar_z = float(input("Enter a anguler z value between 1 and 3: "))
                    if 1 <= anglar_z <= 3:
                        twist_msg = Twist()
                        twist_msg.linear.x = linear_x
                        twist_msg.angular.z = anglar_z
                        pub_move_turtle.publish(twist_msg)
                        rospy.loginfo("Turtle moving in x direction by %f and angular z by %f" % (twist_msg.linear.x,twist_msg.angular.z))
                        flag = 0
                    else:
                        rospy.logwarn("Input angular z must be between 1 and 3.")           
            else:
                rospy.logwarn("Input linear x must be between 2 and 6.")
            flag = 1
        except ValueError:
            rospy.logwarn("Invalid input. Please enter a valid number.")

        rate.sleep()

if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass