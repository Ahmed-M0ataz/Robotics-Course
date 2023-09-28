#!/usr/bin/env python3

import rospy

def timer_callback(event = None):
    rospy.loginfo("Timer called at" + str(event.current_real))



if __name__=="__main__":
    rospy.init_node("simple_timer_node", anonymous=False)
    timer_duration = rospy.Duration(1.0)
    rospy.Timer(timer_duration, timer_callback)
    rospy.spin()