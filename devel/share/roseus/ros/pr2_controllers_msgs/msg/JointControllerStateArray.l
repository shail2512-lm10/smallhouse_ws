;; Auto-generated. Do not edit!


(when (boundp 'pr2_controllers_msgs::JointControllerStateArray)
  (if (not (find-package "PR2_CONTROLLERS_MSGS"))
    (make-package "PR2_CONTROLLERS_MSGS"))
  (shadow 'JointControllerStateArray (find-package "PR2_CONTROLLERS_MSGS")))
(unless (find-package "PR2_CONTROLLERS_MSGS::JOINTCONTROLLERSTATEARRAY")
  (make-package "PR2_CONTROLLERS_MSGS::JOINTCONTROLLERSTATEARRAY"))

(in-package "ROS")
;;//! \htmlinclude JointControllerStateArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pr2_controllers_msgs::JointControllerStateArray
  :super ros::object
  :slots (_header _controllestate ))

(defmethod pr2_controllers_msgs::JointControllerStateArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controllestate __controllestate) (let (r) (dotimes (i 0) (push (instance pr2_controllers_msgs::JointControllerState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _controllestate __controllestate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controllestate
   (&rest __controllestate)
   (if (keywordp (car __controllestate))
       (send* _controllestate __controllestate)
     (progn
       (if __controllestate (setq _controllestate (car __controllestate)))
       _controllestate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pr2_controllers_msgs/JointControllerState[] _controllestate
    (apply #'+ (send-all _controllestate :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pr2_controllers_msgs/JointControllerState[] _controllestate
     (write-long (length _controllestate) s)
     (dolist (elem _controllestate)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pr2_controllers_msgs/JointControllerState[] _controllestate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controllestate (let (r) (dotimes (i n) (push (instance pr2_controllers_msgs::JointControllerState :init) r)) r))
     (dolist (elem- _controllestate)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pr2_controllers_msgs::JointControllerStateArray :md5sum-) "c47bacaf87f2bc9b8921b0761fb4177e")
(setf (get pr2_controllers_msgs::JointControllerStateArray :datatype-) "pr2_controllers_msgs/JointControllerStateArray")
(setf (get pr2_controllers_msgs::JointControllerStateArray :definition-)
      "Header header
JointControllerState[] controllestate

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pr2_controllers_msgs/JointControllerState
Header header
float64 set_point
float64 process_value
float64 process_value_dot
float64 error
float64 time_step
float64 command
float64 p
float64 i
float64 d
float64 i_clamp


")



(provide :pr2_controllers_msgs/JointControllerStateArray "c47bacaf87f2bc9b8921b0761fb4177e")


