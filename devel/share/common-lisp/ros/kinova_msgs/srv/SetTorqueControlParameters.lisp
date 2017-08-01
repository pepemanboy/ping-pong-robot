; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude SetTorqueControlParameters-request.msg.html

(cl:defclass <SetTorqueControlParameters-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTorqueControlParameters-request (<SetTorqueControlParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueControlParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueControlParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetTorqueControlParameters-request> is deprecated: use kinova_msgs-srv:SetTorqueControlParameters-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueControlParameters-request>) ostream)
  "Serializes a message object of type '<SetTorqueControlParameters-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueControlParameters-request>) istream)
  "Deserializes a message object of type '<SetTorqueControlParameters-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueControlParameters-request>)))
  "Returns string type for a service object of type '<SetTorqueControlParameters-request>"
  "kinova_msgs/SetTorqueControlParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlParameters-request)))
  "Returns string type for a service object of type 'SetTorqueControlParameters-request"
  "kinova_msgs/SetTorqueControlParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueControlParameters-request>)))
  "Returns md5sum for a message object of type '<SetTorqueControlParameters-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueControlParameters-request)))
  "Returns md5sum for a message object of type 'SetTorqueControlParameters-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueControlParameters-request>)))
  "Returns full string definition for message of type '<SetTorqueControlParameters-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueControlParameters-request)))
  "Returns full string definition for message of type 'SetTorqueControlParameters-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueControlParameters-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueControlParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueControlParameters-request
))
;//! \htmlinclude SetTorqueControlParameters-response.msg.html

(cl:defclass <SetTorqueControlParameters-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SetTorqueControlParameters-response (<SetTorqueControlParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueControlParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueControlParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetTorqueControlParameters-response> is deprecated: use kinova_msgs-srv:SetTorqueControlParameters-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetTorqueControlParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:result-val is deprecated.  Use kinova_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueControlParameters-response>) ostream)
  "Serializes a message object of type '<SetTorqueControlParameters-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueControlParameters-response>) istream)
  "Deserializes a message object of type '<SetTorqueControlParameters-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueControlParameters-response>)))
  "Returns string type for a service object of type '<SetTorqueControlParameters-response>"
  "kinova_msgs/SetTorqueControlParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlParameters-response)))
  "Returns string type for a service object of type 'SetTorqueControlParameters-response"
  "kinova_msgs/SetTorqueControlParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueControlParameters-response>)))
  "Returns md5sum for a message object of type '<SetTorqueControlParameters-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueControlParameters-response)))
  "Returns md5sum for a message object of type 'SetTorqueControlParameters-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueControlParameters-response>)))
  "Returns full string definition for message of type '<SetTorqueControlParameters-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueControlParameters-response)))
  "Returns full string definition for message of type 'SetTorqueControlParameters-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueControlParameters-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueControlParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueControlParameters-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTorqueControlParameters)))
  'SetTorqueControlParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTorqueControlParameters)))
  'SetTorqueControlParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlParameters)))
  "Returns string type for a service object of type '<SetTorqueControlParameters>"
  "kinova_msgs/SetTorqueControlParameters")