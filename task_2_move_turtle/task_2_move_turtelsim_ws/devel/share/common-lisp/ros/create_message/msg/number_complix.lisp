; Auto-generated. Do not edit!


(cl:in-package create_message-msg)


;//! \htmlinclude number_complix.msg.html

(cl:defclass <number_complix> (roslisp-msg-protocol:ros-message)
  ((reall
    :reader reall
    :initarg :reall
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (imaginee
    :reader imaginee
    :initarg :imaginee
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass number_complix (<number_complix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <number_complix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'number_complix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_message-msg:<number_complix> is deprecated: use create_message-msg:number_complix instead.")))

(cl:ensure-generic-function 'reall-val :lambda-list '(m))
(cl:defmethod reall-val ((m <number_complix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_message-msg:reall-val is deprecated.  Use create_message-msg:reall instead.")
  (reall m))

(cl:ensure-generic-function 'imaginee-val :lambda-list '(m))
(cl:defmethod imaginee-val ((m <number_complix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_message-msg:imaginee-val is deprecated.  Use create_message-msg:imaginee instead.")
  (imaginee m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <number_complix>) ostream)
  "Serializes a message object of type '<number_complix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reall) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imaginee) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <number_complix>) istream)
  "Deserializes a message object of type '<number_complix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reall) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imaginee) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<number_complix>)))
  "Returns string type for a message object of type '<number_complix>"
  "create_message/number_complix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'number_complix)))
  "Returns string type for a message object of type 'number_complix"
  "create_message/number_complix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<number_complix>)))
  "Returns md5sum for a message object of type '<number_complix>"
  "824870208b69eefe6aae44af86b3c2d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'number_complix)))
  "Returns md5sum for a message object of type 'number_complix"
  "824870208b69eefe6aae44af86b3c2d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<number_complix>)))
  "Returns full string definition for message of type '<number_complix>"
  (cl:format cl:nil "std_msgs/Float32 reall~%std_msgs/Float32 imaginee~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'number_complix)))
  "Returns full string definition for message of type 'number_complix"
  (cl:format cl:nil "std_msgs/Float32 reall~%std_msgs/Float32 imaginee~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <number_complix>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reall))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imaginee))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <number_complix>))
  "Converts a ROS message object to a list"
  (cl:list 'number_complix
    (cl:cons ':reall (reall msg))
    (cl:cons ':imaginee (imaginee msg))
))
