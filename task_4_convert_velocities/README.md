# convert_velocities_pkg (diffrintial drive implementation)

this pakage convert twist msg to anglur velocity for wheels in mobile robot 
input :
there are node that publish twist msg name pub_vel in topic /cmd_vel

output :
node subscribe in topic /cmd_vel and name is sub_vel 

and calculate the anglur velecoty in  2 wheels acording to this equations 
 pic 
 (https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_2_move_turtle/media/diff_drive_eq.png)
 

output is 
![diff drive for mobile robot](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_2_move_turtle/media/diff_drive_mobile.gif)
