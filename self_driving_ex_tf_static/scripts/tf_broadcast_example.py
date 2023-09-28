#!/usr/bin/env python3

import rospy
from tf2_ros import StaticTransformBroadcaster, TransformBroadcaster
from geometry_msgs.msg import TransformStamped

class TfStaticExample(object):
    def __init__(self):
        self.StaticTransformBroadcoater_ = StaticTransformBroadcaster()
        self.DynamicTransformBroadcaster_ = TransformBroadcaster()
        self.TransformStamped_ = TransformStamped() 
        self.DynamicTransformStamped_ = TransformStamped() 
        self.x_increment_ = 0.05
        self.x_last= 0.0
        rospy.Timer(rospy.Duration(0.1),self.TimerCallback)
        
        self.TransformStamped_.header.stamp = rospy.Time.now()
        self.TransformStamped_.header.frame_id = "robot_base"
        self.TransformStamped_.child_frame_id = "top_base"
        
        self.TransformStamped_.transform.translation.x = 0.0
        self.TransformStamped_.transform.translation.y = 0.0
        self.TransformStamped_.transform.translation.z = 0.22
        
        self.TransformStamped_.transform.rotation.x = 0.0
        self.TransformStamped_.transform.rotation.y = 0.0
        self.TransformStamped_.transform.rotation.z = 0.0
        self.TransformStamped_.transform.rotation.w = 1.0
        
        self.StaticTransformBroadcoater_.sendTransform(self.TransformStamped_)
        
        rospy.loginfo("Published static transform from %s  to %s",self.TransformStamped_.header.frame_id,
                      self.TransformStamped_.child_frame_id)

    def TimerCallback(self,event):
        self.DynamicTransformStamped_.header.stamp = rospy.Time.now()
        self.DynamicTransformStamped_.header.frame_id = "odom"
        self.DynamicTransformStamped_.child_frame_id = "robot_base"
        
        self.DynamicTransformStamped_.transform.translation.x = self.x_last  + self.x_increment_
        self.DynamicTransformStamped_.transform.translation.y = 0.0
        self.DynamicTransformStamped_.transform.translation.z = 0.0
        
        self.DynamicTransformStamped_.transform.rotation.x = 0.0
        self.DynamicTransformStamped_.transform.rotation.y = 0.0
        self.DynamicTransformStamped_.transform.rotation.z = 0.0
        self.DynamicTransformStamped_.transform.rotation.w = 1.0
        
        self.DynamicTransformBroadcaster_.sendTransform(self.DynamicTransformStamped_)
        self.x_last = self.DynamicTransformStamped_.transform.translation.x
        
        
        
        pass
if __name__=="__main__":
    rospy.init_node("tf_static_example_node", anonymous=False)
    tf_example= TfStaticExample()
    rospy.spin()