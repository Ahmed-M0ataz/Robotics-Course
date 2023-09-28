#include "ros/ros.h"
#include "service_example_pkg/AddTwoInts.h"

bool add(service_example_pkg::AddTwoInts::Request  &req,
         service_example_pkg::AddTwoInts::Response &res)
{
  res.Sum = req.A + req.B;
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.A, (long int)req.B);
  ROS_INFO("sending back response: [%ld]", (long int)res.Sum);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_two_ints_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("add_two_ints", add);
  ROS_INFO("Ready to add two ints.");
  ros::spin();

  return 0;
}