; Auto-generated. Do not edit!


(cl:in-package move_turtle_pkg-msg)


;//! \htmlinclude complix_number.msg.html

(cl:defclass <complix_number> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (imagine
    :reader imagine
    :initarg :imagine
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass complix_number (<complix_number>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <complix_number>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'complix_number)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_turtle_pkg-msg:<complix_number> is deprecated: use move_turtle_pkg-msg:complix_number instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <complix_number>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_turtle_pkg-msg:real-val is deprecated.  Use move_turtle_pkg-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imagine-val :lambda-list '(m))
(cl:defmethod imagine-val ((m <complix_number>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_turtle_pkg-msg:imagine-val is deprecated.  Use move_turtle_pkg-msg:imagine instead.")
  (imagine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <complix_number>) ostream)
  "Serializes a message object of type '<complix_number>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imagine) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <complix_number>) istream)
  "Deserializes a message object of type '<complix_number>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imagine) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<complix_number>)))
  "Returns string type for a message object of type '<complix_number>"
  "move_turtle_pkg/complix_number")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'complix_number)))
  "Returns string type for a message object of type 'complix_number"
  "move_turtle_pkg/complix_number")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<complix_number>)))
  "Returns md5sum for a message object of type '<complix_number>"
  "d6037b8259193f89f4a2a86bd6aab0df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'complix_number)))
  "Returns md5sum for a message object of type 'complix_number"
  "d6037b8259193f89f4a2a86bd6aab0df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<complix_number>)))
  "Returns full string definition for message of type '<complix_number>"
  (cl:format cl:nil "std_msgs/Float32 real~%std_msgs/Float32 imagine ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'complix_number)))
  "Returns full string definition for message of type 'complix_number"
  (cl:format cl:nil "std_msgs/Float32 real~%std_msgs/Float32 imagine ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <complix_number>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imagine))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <complix_number>))
  "Converts a ROS message object to a list"
  (cl:list 'complix_number
    (cl:cons ':real (real msg))
    (cl:cons ':imagine (imagine msg))
))
