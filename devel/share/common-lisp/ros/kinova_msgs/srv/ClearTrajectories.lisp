; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude ClearTrajectories-request.msg.html

(cl:defclass <ClearTrajectories-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearTrajectories-request (<ClearTrajectories-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearTrajectories-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearTrajectories-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<ClearTrajectories-request> is deprecated: use kinova_msgs-srv:ClearTrajectories-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearTrajectories-request>) ostream)
  "Serializes a message object of type '<ClearTrajectories-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearTrajectories-request>) istream)
  "Deserializes a message object of type '<ClearTrajectories-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearTrajectories-request>)))
  "Returns string type for a service object of type '<ClearTrajectories-request>"
  "kinova_msgs/ClearTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearTrajectories-request)))
  "Returns string type for a service object of type 'ClearTrajectories-request"
  "kinova_msgs/ClearTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearTrajectories-request>)))
  "Returns md5sum for a message object of type '<ClearTrajectories-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearTrajectories-request)))
  "Returns md5sum for a message object of type 'ClearTrajectories-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearTrajectories-request>)))
  "Returns full string definition for message of type '<ClearTrajectories-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearTrajectories-request)))
  "Returns full string definition for message of type 'ClearTrajectories-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearTrajectories-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearTrajectories-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearTrajectories-request
))
;//! \htmlinclude ClearTrajectories-response.msg.html

(cl:defclass <ClearTrajectories-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass ClearTrajectories-response (<ClearTrajectories-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearTrajectories-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearTrajectories-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<ClearTrajectories-response> is deprecated: use kinova_msgs-srv:ClearTrajectories-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ClearTrajectories-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:result-val is deprecated.  Use kinova_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearTrajectories-response>) ostream)
  "Serializes a message object of type '<ClearTrajectories-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearTrajectories-response>) istream)
  "Deserializes a message object of type '<ClearTrajectories-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearTrajectories-response>)))
  "Returns string type for a service object of type '<ClearTrajectories-response>"
  "kinova_msgs/ClearTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearTrajectories-response)))
  "Returns string type for a service object of type 'ClearTrajectories-response"
  "kinova_msgs/ClearTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearTrajectories-response>)))
  "Returns md5sum for a message object of type '<ClearTrajectories-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearTrajectories-response)))
  "Returns md5sum for a message object of type 'ClearTrajectories-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearTrajectories-response>)))
  "Returns full string definition for message of type '<ClearTrajectories-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearTrajectories-response)))
  "Returns full string definition for message of type 'ClearTrajectories-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearTrajectories-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearTrajectories-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearTrajectories-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearTrajectories)))
  'ClearTrajectories-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearTrajectories)))
  'ClearTrajectories-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearTrajectories)))
  "Returns string type for a service object of type '<ClearTrajectories>"
  "kinova_msgs/ClearTrajectories")