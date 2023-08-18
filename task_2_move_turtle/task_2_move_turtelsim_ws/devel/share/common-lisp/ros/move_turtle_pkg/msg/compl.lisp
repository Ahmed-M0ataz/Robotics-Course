; Auto-generated. Do not edit!


(cl:in-package move_turtle_pkg-msg)


;//! \htmlinclude compl.msg.html

(cl:defclass <compl> (roslisp-msg-protocol:ros-message)
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

(cl:defclass compl (<compl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <compl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'compl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_turtle_pkg-msg:<compl> is deprecated: use move_turtle_pkg-msg:compl instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <compl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_turtle_pkg-msg:real-val is deprecated.  Use move_turtle_pkg-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imagine-val :lambda-list '(m))
(cl:defmethod imagine-val ((m <compl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_turtle_pkg-msg:imagine-val is deprecated.  Use move_turtle_pkg-msg:imagine instead.")
  (imagine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <compl>) ostream)
  "Serializes a message object of type '<compl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imagine) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <compl>) istream)
  "Deserializes a message object of type '<compl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imagine) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<compl>)))
  "Returns string type for a message object of type '<compl>"
  "move_turtle_pkg/compl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'compl)))
  "Returns string type for a message object of type 'compl"
  "move_turtle_pkg/compl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<compl>)))
  "Returns md5sum for a message object of type '<compl>"
  "d6037b8259193f89f4a2a86bd6aab0df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'compl)))
  "Returns md5sum for a message object of type 'compl"
  "d6037b8259193f89f4a2a86bd6aab0df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<compl>)))
  "Returns full string definition for message of type '<compl>"
  (cl:format cl:nil "std_msgs/Float32 real~%std_msgs/Float32 imagine ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'compl)))
  "Returns full string definition for message of type 'compl"
  (cl:format cl:nil "std_msgs/Float32 real~%std_msgs/Float32 imagine ~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <compl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imagine))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <compl>))
  "Converts a ROS message object to a list"
  (cl:list 'compl
    (cl:cons ':real (real msg))
    (cl:cons ':imagine (imagine msg))
))
