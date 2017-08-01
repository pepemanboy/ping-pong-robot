; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude ZeroTorques-request.msg.html

(cl:defclass <ZeroTorques-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ZeroTorques-request (<ZeroTorques-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZeroTorques-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZeroTorques-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<ZeroTorques-request> is deprecated: use kinova_msgs-srv:ZeroTorques-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZeroTorques-request>) ostream)
  "Serializes a message object of type '<ZeroTorques-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZeroTorques-request>) istream)
  "Deserializes a message object of type '<ZeroTorques-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZeroTorques-request>)))
  "Returns string type for a service object of type '<ZeroTorques-request>"
  "kinova_msgs/ZeroTorquesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZeroTorques-request)))
  "Returns string type for a service object of type 'ZeroTorques-request"
  "kinova_msgs/ZeroTorquesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZeroTorques-request>)))
  "Returns md5sum for a message object of type '<ZeroTorques-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZeroTorques-request)))
  "Returns md5sum for a message object of type 'ZeroTorques-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZeroTorques-request>)))
  "Returns full string definition for message of type '<ZeroTorques-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZeroTorques-request)))
  "Returns full string definition for message of type 'ZeroTorques-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZeroTorques-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZeroTorques-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ZeroTorques-request
))
;//! \htmlinclude ZeroTorques-response.msg.html

(cl:defclass <ZeroTorques-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass ZeroTorques-response (<ZeroTorques-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZeroTorques-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZeroTorques-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<ZeroTorques-response> is deprecated: use kinova_msgs-srv:ZeroTorques-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ZeroTorques-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:result-val is deprecated.  Use kinova_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZeroTorques-response>) ostream)
  "Serializes a message object of type '<ZeroTorques-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZeroTorques-response>) istream)
  "Deserializes a message object of type '<ZeroTorques-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZeroTorques-response>)))
  "Returns string type for a service object of type '<ZeroTorques-response>"
  "kinova_msgs/ZeroTorquesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZeroTorques-response)))
  "Returns string type for a service object of type 'ZeroTorques-response"
  "kinova_msgs/ZeroTorquesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZeroTorques-response>)))
  "Returns md5sum for a message object of type '<ZeroTorques-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZeroTorques-response)))
  "Returns md5sum for a message object of type 'ZeroTorques-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZeroTorques-response>)))
  "Returns full string definition for message of type '<ZeroTorques-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZeroTorques-response)))
  "Returns full string definition for message of type 'ZeroTorques-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZeroTorques-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZeroTorques-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ZeroTorques-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ZeroTorques)))
  'ZeroTorques-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ZeroTorques)))
  'ZeroTorques-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZeroTorques)))
  "Returns string type for a service object of type '<ZeroTorques>"
  "kinova_msgs/ZeroTorques")