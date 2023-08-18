#include "ros/ros.h"
#include "create_message/number_complix.h"


int main(int argc, char **argv) {

    ros::init(argc,argv,"publish_direction");

    // publish in a topic
    ros::NodeHandle handle;
    ros::Publisher comp_num = handle.advertise<create_message::number_complix>("/comp_num",100);
    create_message::number_complix x;
    x.reall.data = 2;
    x.imaginee.data = 3;
    ros::Rate rate(2);
    while(ros::ok())
    {   
        ROS_INFO("complix number is %f + %f j",x.reall.data,x.imaginee.data);
        comp_num.publish(x);
        rate.sleep();


    }
    return 0;
}