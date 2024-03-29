; Auto-generated. Do not edit!


(cl:in-package pr2_mechanism_msgs-srv)


;//! \htmlinclude ListControllerTypes-request.msg.html

(cl:defclass <ListControllerTypes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListControllerTypes-request (<ListControllerTypes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListControllerTypes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListControllerTypes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<ListControllerTypes-request> is deprecated: use pr2_mechanism_msgs-srv:ListControllerTypes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListControllerTypes-request>) ostream)
  "Serializes a message object of type '<ListControllerTypes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListControllerTypes-request>) istream)
  "Deserializes a message object of type '<ListControllerTypes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListControllerTypes-request>)))
  "Returns string type for a service object of type '<ListControllerTypes-request>"
  "pr2_mechanism_msgs/ListControllerTypesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllerTypes-request)))
  "Returns string type for a service object of type 'ListControllerTypes-request"
  "pr2_mechanism_msgs/ListControllerTypesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListControllerTypes-request>)))
  "Returns md5sum for a message object of type '<ListControllerTypes-request>"
  "80aee506387f88339842e9a93044c959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListControllerTypes-request)))
  "Returns md5sum for a message object of type 'ListControllerTypes-request"
  "80aee506387f88339842e9a93044c959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListControllerTypes-request>)))
  "Returns full string definition for message of type '<ListControllerTypes-request>"
  (cl:format cl:nil "# The ListControllers service returns a list of controller types that are known~%# to pr2_mechanism_control. ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListControllerTypes-request)))
  "Returns full string definition for message of type 'ListControllerTypes-request"
  (cl:format cl:nil "# The ListControllers service returns a list of controller types that are known~%# to pr2_mechanism_control. ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListControllerTypes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListControllerTypes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListControllerTypes-request
))
;//! \htmlinclude ListControllerTypes-response.msg.html

(cl:defclass <ListControllerTypes-response> (roslisp-msg-protocol:ros-message)
  ((types
    :reader types
    :initarg :types
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListControllerTypes-response (<ListControllerTypes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListControllerTypes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListControllerTypes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_mechanism_msgs-srv:<ListControllerTypes-response> is deprecated: use pr2_mechanism_msgs-srv:ListControllerTypes-response instead.")))

(cl:ensure-generic-function 'types-val :lambda-list '(m))
(cl:defmethod types-val ((m <ListControllerTypes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_mechanism_msgs-srv:types-val is deprecated.  Use pr2_mechanism_msgs-srv:types instead.")
  (types m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListControllerTypes-response>) ostream)
  "Serializes a message object of type '<ListControllerTypes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'types))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListControllerTypes-response>) istream)
  "Deserializes a message object of type '<ListControllerTypes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListControllerTypes-response>)))
  "Returns string type for a service object of type '<ListControllerTypes-response>"
  "pr2_mechanism_msgs/ListControllerTypesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllerTypes-response)))
  "Returns string type for a service object of type 'ListControllerTypes-response"
  "pr2_mechanism_msgs/ListControllerTypesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListControllerTypes-response>)))
  "Returns md5sum for a message object of type '<ListControllerTypes-response>"
  "80aee506387f88339842e9a93044c959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListControllerTypes-response)))
  "Returns md5sum for a message object of type 'ListControllerTypes-response"
  "80aee506387f88339842e9a93044c959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListControllerTypes-response>)))
  "Returns full string definition for message of type '<ListControllerTypes-response>"
  (cl:format cl:nil "string[] types~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListControllerTypes-response)))
  "Returns full string definition for message of type 'ListControllerTypes-response"
  (cl:format cl:nil "string[] types~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListControllerTypes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListControllerTypes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListControllerTypes-response
    (cl:cons ':types (types msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListControllerTypes)))
  'ListControllerTypes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListControllerTypes)))
  'ListControllerTypes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllerTypes)))
  "Returns string type for a service object of type '<ListControllerTypes>"
  "pr2_mechanism_msgs/ListControllerTypes")