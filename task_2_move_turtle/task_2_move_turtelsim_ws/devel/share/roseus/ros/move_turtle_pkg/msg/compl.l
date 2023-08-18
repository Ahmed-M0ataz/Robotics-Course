;; Auto-generated. Do not edit!


(when (boundp 'move_turtle_pkg::compl)
  (if (not (find-package "MOVE_TURTLE_PKG"))
    (make-package "MOVE_TURTLE_PKG"))
  (shadow 'compl (find-package "MOVE_TURTLE_PKG")))
(unless (find-package "MOVE_TURTLE_PKG::COMPL")
  (make-package "MOVE_TURTLE_PKG::COMPL"))

(in-package "ROS")
;;//! \htmlinclude compl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass move_turtle_pkg::compl
  :super ros::object
  :slots (_real _imagine ))

(defmethod move_turtle_pkg::compl
  (:init
   (&key
    ((:real __real) (instance std_msgs::Float32 :init))
    ((:imagine __imagine) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _real __real)
   (setq _imagine __imagine)
   self)
  (:real
   (&rest __real)
   (if (keywordp (car __real))
       (send* _real __real)
     (progn
       (if __real (setq _real (car __real)))
       _real)))
  (:imagine
   (&rest __imagine)
   (if (keywordp (car __imagine))
       (send* _imagine __imagine)
     (progn
       (if __imagine (setq _imagine (car __imagine)))
       _imagine)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _real
    (send _real :serialization-length)
    ;; std_msgs/Float32 _imagine
    (send _imagine :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _real
       (send _real :serialize s)
     ;; std_msgs/Float32 _imagine
       (send _imagine :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _real
     (send _real :deserialize buf ptr-) (incf ptr- (send _real :serialization-length))
   ;; std_msgs/Float32 _imagine
     (send _imagine :deserialize buf ptr-) (incf ptr- (send _imagine :serialization-length))
   ;;
   self)
  )

(setf (get move_turtle_pkg::compl :md5sum-) "d6037b8259193f89f4a2a86bd6aab0df")
(setf (get move_turtle_pkg::compl :datatype-) "move_turtle_pkg/compl")
(setf (get move_turtle_pkg::compl :definition-)
      "std_msgs/Float32 real
std_msgs/Float32 imagine 
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :move_turtle_pkg/compl "d6037b8259193f89f4a2a86bd6aab0df")


