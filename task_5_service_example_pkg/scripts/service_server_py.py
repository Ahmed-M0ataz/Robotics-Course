#!/usr/bin/env python3

import rospy

from service_example_pkg.srv import pose_cont, pose_contResponse

def handle_simple_service(req):
    rospy.loginfo("Returning [x is %f \n y is %f \n z is %f \n"%(req.x, req.y,req.z))
    
    return pose_contResponse(req.z)



if __name__ == '__main__':
    rospy.init_node('simple_service_server')
    
    service = rospy.Service('simple_service', pose_cont, handle_simple_service)
    rospy.loginfo("Service is ready to culculate the yaw angle.")
    rospy.spin()