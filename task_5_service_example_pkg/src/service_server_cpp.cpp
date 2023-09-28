#include "ros/ros.h"
#include "service_example_pkg/pose_cont.h"

bool calc_control(service_example_pkg::pose_cont::Request  &req,
         service_example_pkg::pose_cont::Response &res)
{
  res.yaw_angle = req.z;
  ROS_INFO("request: x=%ld, y=%ld, z = %f", (long int)req.x, (long int)req.y,req.z);
  ROS_INFO("sending back response: [%ld]", (long int)res.yaw_angle);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "control_rotation_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("control_rotation_service", calc_control);
  ROS_INFO("Ready to calc control.");
  ros::spin();

  return 0;
}