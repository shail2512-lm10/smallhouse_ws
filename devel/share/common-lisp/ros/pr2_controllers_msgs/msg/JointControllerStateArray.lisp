; Auto-generated. Do not edit!


(cl:in-package pr2_controllers_msgs-msg)


;//! \htmlinclude JointControllerStateArray.msg.html

(cl:defclass <JointControllerStateArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controllestate
    :reader controllestate
    :initarg :controllestate
    :type (cl:vector pr2_controllers_msgs-msg:JointControllerState)
   :initform (cl:make-array 0 :element-type 'pr2_controllers_msgs-msg:JointControllerState :initial-element (cl:make-instance 'pr2_controllers_msgs-msg:JointControllerState))))
)

(cl:defclass JointControllerStateArray (<JointControllerStateArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControllerStateArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControllerStateArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_controllers_msgs-msg:<JointControllerStateArray> is deprecated: use pr2_controllers_msgs-msg:JointControllerStateArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointControllerStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_controllers_msgs-msg:header-val is deprecated.  Use pr2_controllers_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controllestate-val :lambda-list '(m))
(cl:defmethod controllestate-val ((m <JointControllerStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_controllers_msgs-msg:controllestate-val is deprecated.  Use pr2_controllers_msgs-msg:controllestate instead.")
  (controllestate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControllerStateArray>) ostream)
  "Serializes a message object of type '<JointControllerStateArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllestate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controllestate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControllerStateArray>) istream)
  "Deserializes a message object of type '<JointControllerStateArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllestate) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllestate)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pr2_controllers_msgs-msg:JointControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControllerStateArray>)))
  "Returns string type for a message object of type '<JointControllerStateArray>"
  "pr2_controllers_msgs/JointControllerStateArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControllerStateArray)))
  "Returns string type for a message object of type 'JointControllerStateArray"
  "pr2_controllers_msgs/JointControllerStateArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControllerStateArray>)))
  "Returns md5sum for a message object of type '<JointControllerStateArray>"
  "c47bacaf87f2bc9b8921b0761fb4177e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControllerStateArray)))
  "Returns md5sum for a message object of type 'JointControllerStateArray"
  "c47bacaf87f2bc9b8921b0761fb4177e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControllerStateArray>)))
  "Returns full string definition for message of type '<JointControllerStateArray>"
  (cl:format cl:nil "Header header~%JointControllerState[] controllestate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pr2_controllers_msgs/JointControllerState~%Header header~%float64 set_point~%float64 process_value~%float64 process_value_dot~%float64 error~%float64 time_step~%float64 command~%float64 p~%float64 i~%float64 d~%float64 i_clamp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControllerStateArray)))
  "Returns full string definition for message of type 'JointControllerStateArray"
  (cl:format cl:nil "Header header~%JointControllerState[] controllestate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pr2_controllers_msgs/JointControllerState~%Header header~%float64 set_point~%float64 process_value~%float64 process_value_dot~%float64 error~%float64 time_step~%float64 command~%float64 p~%float64 i~%float64 d~%float64 i_clamp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControllerStateArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllestate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControllerStateArray>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControllerStateArray
    (cl:cons ':header (header msg))
    (cl:cons ':controllestate (controllestate msg))
))
