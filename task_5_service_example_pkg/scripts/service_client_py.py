#!/usr/bin/env python3

import rospy

from service_example_pkg.srv import pose_contRequest, pose_cont
import sys


if __name__ == "__main__":
    # append argument to the list 
    # number 4 becouse the first argument is the name of the file 
    # and 3 other arguments are the x,y,z
    if len(sys.argv) == 4:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        z = float(sys.argv[3])
        print(f"Requesting the yaw angle of the vector [{x},{y},{z}]")
        # wait for the service to be available
        rospy.wait_for_service('simple_service')
        # create a handle to the service
        calc_yaw = rospy.ServiceProxy('simple_service', pose_cont)
        # send the request to the server
        yaw_angle = calc_yaw(x,y,z)
        print(f'service response is {yaw_angle}')
    else:
        print("Wrong number of arguments please enter 3 arguments x y z ") 
        # exit the program with error code -1 indecation error
        sys.exit(-1)
    