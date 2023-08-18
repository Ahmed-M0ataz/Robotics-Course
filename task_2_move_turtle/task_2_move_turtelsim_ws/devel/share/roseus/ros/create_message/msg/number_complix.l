;; Auto-generated. Do not edit!


(when (boundp 'create_message::number_complix)
  (if (not (find-package "CREATE_MESSAGE"))
    (make-package "CREATE_MESSAGE"))
  (shadow 'number_complix (find-package "CREATE_MESSAGE")))
(unless (find-package "CREATE_MESSAGE::NUMBER_COMPLIX")
  (make-package "CREATE_MESSAGE::NUMBER_COMPLIX"))

(in-package "ROS")
;;//! \htmlinclude number_complix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass create_message::number_complix
  :super ros::object
  :slots (_reall _imaginee ))

(defmethod create_message::number_complix
  (:init
   (&key
    ((:reall __reall) (instance std_msgs::Float32 :init))
    ((:imaginee __imaginee) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _reall __reall)
   (setq _imaginee __imaginee)
   self)
  (:reall
   (&rest __reall)
   (if (keywordp (car __reall))
       (send* _reall __reall)
     (progn
       (if __reall (setq _reall (car __reall)))
       _reall)))
  (:imaginee
   (&rest __imaginee)
   (if (keywordp (car __imaginee))
       (send* _imaginee __imaginee)
     (progn
       (if __imaginee (setq _imaginee (car __imaginee)))
       _imaginee)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _reall
    (send _reall :serialization-length)
    ;; std_msgs/Float32 _imaginee
    (send _imaginee :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _reall
       (send _reall :serialize s)
     ;; std_msgs/Float32 _imaginee
       (send _imaginee :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _reall
     (send _reall :deserialize buf ptr-) (incf ptr- (send _reall :serialization-length))
   ;; std_msgs/Float32 _imaginee
     (send _imaginee :deserialize buf ptr-) (incf ptr- (send _imaginee :serialization-length))
   ;;
   self)
  )

(setf (get create_message::number_complix :md5sum-) "824870208b69eefe6aae44af86b3c2d1")
(setf (get create_message::number_complix :datatype-) "create_message/number_complix")
(setf (get create_message::number_complix :definition-)
      "std_msgs/Float32 reall
std_msgs/Float32 imaginee

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :create_message/number_complix "824870208b69eefe6aae44af86b3c2d1")


