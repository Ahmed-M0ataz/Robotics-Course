#include "ros/ros.h"
#include "service_example_pkg/pose_cont.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "control_rotation_client");
  if (argc != 4)
  {
    ROS_INFO("usage: control_rotation_client X Y Z");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<service_example_pkg::pose_cont>("control_rotation_service");
  service_example_pkg::pose_cont srv;
  srv.request.x = atoll(argv[1]);
  srv.request.y = atoll(argv[2]);
  srv.request.z = atoll(argv[3]);

  if (client.call(srv))
  {
    ROS_INFO("yaw angle is: %ld", (long int)srv.response.yaw_angle);
  }
  else
  {
    ROS_ERROR("Failed to call service control_rotation_service");
    return 1;
  }

  return 0;
}