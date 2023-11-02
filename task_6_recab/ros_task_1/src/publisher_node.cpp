
#include "ros/ros.h"

#include "std_msgs/Float32.h"



int main(int argc, char **argv) {

    ros::init(argc, argv, "pub_heading_angle_node");

    ros::NodeHandle handle;
    ros::Publisher publisher_heading = handle.advertise<std_msgs::Float32>("heading_angle",100);
    std_msgs::Float32 heading_angle_inc;
    heading_angle_inc.data = 0.0;
//    rate hz
    ros::Rate loop_rate(1);
    
    while(ros::ok()){
        
        heading_angle_inc.data += 0.1;
        
        publisher_heading.publish(heading_angle_inc);
        ROS_INFO("the heading angle that publish is %f \n",float(heading_angle_inc.data));

        loop_rate.sleep();


    }

    return 0;
}




