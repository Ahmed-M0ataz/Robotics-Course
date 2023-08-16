#!/usr/bin/env python3

# imports
import rospy
from geometry_msgs.msg import Twist

#main function

def publisher():
    
    # publisher that publish in topic /turtle1/cmd_vel 
    # to make the turtle move to hit the wall 
    pub_move_turtle = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size= 10)
    
    rospy.init_node('pub_move_turtle_node', anonymous= False)
    
    # this rate make the publisher send 5 msg in 1 second that is (Hz)
    
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        twist_msg = Twist()
        twist_msg.linear.x = 2
        pub_move_turtle.publish(twist_msg)
        rospy.loginfo("now turtle move in x direction by %f step" % twist_msg.linear.x)
        
    
if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass
