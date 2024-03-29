; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_msgs-srv)


;//! \htmlinclude ReloadControllerLibraries-request.msg.html

(cl:defclass <ReloadControllerLibraries-request> (roslisp-msg-protocol:ros-message)
  ((force_kill
    :reader force_kill
    :initarg :force_kill
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReloadControllerLibraries-request (<ReloadControllerLibraries-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadControllerLibraries-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadControllerLibraries-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<ReloadControllerLibraries-request> is deprecated: use pr2_mechanism_msgs-srv:ReloadControllerLibraries-request instead.")))

(cl:ensure-generic-function 'force_kill-val :lambda-list '(m))
(cl:defmethod force_kill-val ((m <ReloadControllerLibraries-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_msgs-srv:force_kill-val is deprecated.  Use pr2_mechanism_msgs-srv:force_kill instead.")
  (force_kill m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadControllerLibraries-request>) ostream)
  "Serializes a message object of type '<ReloadControllerLibraries-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'force_kill) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadControllerLibraries-request>) istream)
  "Deserializes a message object of type '<ReloadControllerLibraries-request>"
    (cl:setf (cl:slot-value msg 'force_kill) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadControllerLibraries-request>)))
  "Returns string type for a service object of type '<ReloadControllerLibraries-request>"
  "pr2_mechanism_msgs/ReloadControllerLibrariesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadControllerLibraries-request)))
  "Returns string type for a service object of type 'ReloadControllerLibraries-request"
  "pr2_mechanism_msgs/ReloadControllerLibrariesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadControllerLibraries-request>)))
  "Returns md5sum for a message object of type '<ReloadControllerLibraries-request>"
  "40e8c411fd1797d2e2c486018f846040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadControllerLibraries-request)))
  "Returns md5sum for a message object of type 'ReloadControllerLibraries-request"
  "40e8c411fd1797d2e2c486018f846040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadControllerLibraries-request>)))
  "Returns full string definition for message of type '<ReloadControllerLibraries-request>"
  (cl:format cl:nil "# The ReloadControllerLibraries service will reload all controllers that are available in~%# the system as plugins~%~%~%# Reloading libraries only works if there are no controllers loaded. If there~%# are still some controllers loaded, the reloading will fail.~%# If this bool is set to true, all loaded controllers will get~%# killed automatically, and the reloading can succeed.~%bool force_kill~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadControllerLibraries-request)))
  "Returns full string definition for message of type 'ReloadControllerLibraries-request"
  (cl:format cl:nil "# The ReloadControllerLibraries service will reload all controllers that are available in~%# the system as plugins~%~%~%# Reloading libraries only works if there are no controllers loaded. If there~%# are still some controllers loaded, the reloading will fail.~%# If this bool is set to true, all loaded controllers will get~%# killed automatically, and the reloading can succeed.~%bool force_kill~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadControllerLibraries-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadControllerLibraries-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadControllerLibraries-request
    (cl:cons ':force_kill (force_kill msg))
))
;//! \htmlinclude ReloadControllerLibraries-response.msg.html

(cl:defclass <ReloadControllerLibraries-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReloadControllerLibraries-response (<ReloadControllerLibraries-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReloadControllerLibraries-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReloadControllerLibraries-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<ReloadControllerLibraries-response> is deprecated: use pr2_mechanism_msgs-srv:ReloadControllerLibraries-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ReloadControllerLibraries-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_msgs-srv:ok-val is deprecated.  Use pr2_mechanism_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReloadControllerLibraries-response>) ostream)
  "Serializes a message object of type '<ReloadControllerLibraries-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReloadControllerLibraries-response>) istream)
  "Deserializes a message object of type '<ReloadControllerLibraries-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReloadControllerLibraries-response>)))
  "Returns string type for a service object of type '<ReloadControllerLibraries-response>"
  "pr2_mechanism_msgs/ReloadControllerLibrariesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadControllerLibraries-response)))
  "Returns string type for a service object of type 'ReloadControllerLibraries-response"
  "pr2_mechanism_msgs/ReloadControllerLibrariesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReloadControllerLibraries-response>)))
  "Returns md5sum for a message object of type '<ReloadControllerLibraries-response>"
  "40e8c411fd1797d2e2c486018f846040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReloadControllerLibraries-response)))
  "Returns md5sum for a message object of type 'ReloadControllerLibraries-response"
  "40e8c411fd1797d2e2c486018f846040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReloadControllerLibraries-response>)))
  "Returns full string definition for message of type '<ReloadControllerLibraries-response>"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReloadControllerLibraries-response)))
  "Returns full string definition for message of type 'ReloadControllerLibraries-response"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReloadControllerLibraries-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReloadControllerLibraries-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReloadControllerLibraries-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReloadControllerLibraries)))
  'ReloadControllerLibraries-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReloadControllerLibraries)))
  'ReloadControllerLibraries-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReloadControllerLibraries)))
  "Returns string type for a service object of type '<ReloadControllerLibraries>"
  "pr2_mechanism_msgs/ReloadControllerLibraries")