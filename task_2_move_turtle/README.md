# Task 5
### 1. Create a PKG and add suitable dependencies for running this code. 
You should run turtlesim node first then run the package, this code should run the turtlesim in X direction.
#### Instructions
    • rosrun turtlesim turtlesim_node
    • rosrun move_turtle_pkg pup_move_turtle.py

![Task 1 move turtlesim in x direction](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_2_move_turtle/move_turtlesim_hit_wall.gif)

# Task 6

Using the move_turtlesim.py code as a reference, create another node called input_user.py. The modification inside your input_user.py code will be:

1. Users can input a linear (x) velocity in the range [2,6] (floating point allowed). Means use terminal to add numbers from 2 to 6 to let the turtlesim move with value you added inside your terminal. 

2. Users can input an angular (z) velocity [1,3] (floating point allowed). Means the user can add angle components starting from 1 to 3 inside the terminal.

#### Instructions
    • rosrun turtlesim turtlesim_node
    • rosrun move_turtle_pkg input_user.py 

![Task 2 input user to move turtlesim in linear x and anguler z direction](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_2_move_turtle/input_user_move_turtle.gif)

# Task 7
#### write message nodes that publish Complex(real, imaginary) numbers in cpp.
    1- To Make sure that massege created.
    2- node that publish this complix number.
![task to create custom msg](https://github.com/Ahmed-M0ataz/Robotics-Course/blob/main/task_2_move_turtle/custom_msg.gif)

#### To more information about how to create custom msg visit:

[ROS Custom msg](http://wiki.ros.org/ROS/Tutorials/CreatingMsgAndSrv "Visit official wibsite")

  