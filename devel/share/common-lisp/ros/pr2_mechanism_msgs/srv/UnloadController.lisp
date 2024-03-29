; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_msgs-srv)


;//! \htmlinclude UnloadController-request.msg.html

(cl:defclass <UnloadController-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass UnloadController-request (<UnloadController-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnloadController-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnloadController-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<UnloadController-request> is deprecated: use pr2_mechanism_msgs-srv:UnloadController-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <UnloadController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_msgs-srv:name-val is deprecated.  Use pr2_mechanism_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnloadController-request>) ostream)
  "Serializes a message object of type '<UnloadController-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnloadController-request>) istream)
  "Deserializes a message object of type '<UnloadController-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnloadController-request>)))
  "Returns string type for a service object of type '<UnloadController-request>"
  "pr2_mechanism_msgs/UnloadControllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnloadController-request)))
  "Returns string type for a service object of type 'UnloadController-request"
  "pr2_mechanism_msgs/UnloadControllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnloadController-request>)))
  "Returns md5sum for a message object of type '<UnloadController-request>"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnloadController-request)))
  "Returns md5sum for a message object of type 'UnloadController-request"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnloadController-request>)))
  "Returns full string definition for message of type '<UnloadController-request>"
  (cl:format cl:nil "# The UnloadController service allows you to unload a single controller ~%# that is loaded in pr2_controller_manager. ~%~%# To unload a controller, specify the \"name\" of the controller. ~%# The return value \"ok\" indicates if the controller was unloaded or not.~%# There are three cases when unloadinng a controller will fail:~%#  * No controller with the specified name exists~%#  * The controller is still running~%#  * Another controller depends on the specified controller~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnloadController-request)))
  "Returns full string definition for message of type 'UnloadController-request"
  (cl:format cl:nil "# The UnloadController service allows you to unload a single controller ~%# that is loaded in pr2_controller_manager. ~%~%# To unload a controller, specify the \"name\" of the controller. ~%# The return value \"ok\" indicates if the controller was unloaded or not.~%# There are three cases when unloadinng a controller will fail:~%#  * No controller with the specified name exists~%#  * The controller is still running~%#  * Another controller depends on the specified controller~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnloadController-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnloadController-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UnloadController-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude UnloadController-response.msg.html

(cl:defclass <UnloadController-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UnloadController-response (<UnloadController-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnloadController-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnloadController-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<UnloadController-response> is deprecated: use pr2_mechanism_msgs-srv:UnloadController-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <UnloadController-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_msgs-srv:ok-val is deprecated.  Use pr2_mechanism_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnloadController-response>) ostream)
  "Serializes a message object of type '<UnloadController-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnloadController-response>) istream)
  "Deserializes a message object of type '<UnloadController-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnloadController-response>)))
  "Returns string type for a service object of type '<UnloadController-response>"
  "pr2_mechanism_msgs/UnloadControllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnloadController-response)))
  "Returns string type for a service object of type 'UnloadController-response"
  "pr2_mechanism_msgs/UnloadControllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnloadController-response>)))
  "Returns md5sum for a message object of type '<UnloadController-response>"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnloadController-response)))
  "Returns md5sum for a message object of type 'UnloadController-response"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnloadController-response>)))
  "Returns full string definition for message of type '<UnloadController-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnloadController-response)))
  "Returns full string definition for message of type 'UnloadController-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnloadController-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnloadController-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UnloadController-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UnloadController)))
  'UnloadController-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UnloadController)))
  'UnloadController-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnloadController)))
  "Returns string type for a service object of type '<UnloadController>"
  "pr2_mechanism_msgs/UnloadController")