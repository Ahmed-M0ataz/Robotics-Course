#include "ros/ros.h"
#include "std_msgs/Float32.h"

void sub_callback(const std_msgs::Float32 &my_heading_angle)
{



    ROS_INFO("subscribe in heading angle tobic and value is %f \n", float(my_heading_angle.data));

}


int main(int argc, char **argv) {
    ros::init(argc,argv, "subscribe_heading_angle_node");

    ros::NodeHandle handle;
    
    ros::Subscriber sub_node = handle.subscribe("heading_angle",100, sub_callback);
    ros::spin();
    return 0;
}