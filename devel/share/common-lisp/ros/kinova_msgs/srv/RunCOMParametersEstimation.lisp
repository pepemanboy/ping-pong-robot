; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude RunCOMParametersEstimation-request.msg.html

(cl:defclass <RunCOMParametersEstimation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RunCOMParametersEstimation-request (<RunCOMParametersEstimation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunCOMParametersEstimation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunCOMParametersEstimation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<RunCOMParametersEstimation-request> is deprecated: use kinova_msgs-srv:RunCOMParametersEstimation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunCOMParametersEstimation-request>) ostream)
  "Serializes a message object of type '<RunCOMParametersEstimation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunCOMParametersEstimation-request>) istream)
  "Deserializes a message object of type '<RunCOMParametersEstimation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunCOMParametersEstimation-request>)))
  "Returns string type for a service object of type '<RunCOMParametersEstimation-request>"
  "kinova_msgs/RunCOMParametersEstimationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunCOMParametersEstimation-request)))
  "Returns string type for a service object of type 'RunCOMParametersEstimation-request"
  "kinova_msgs/RunCOMParametersEstimationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunCOMParametersEstimation-request>)))
  "Returns md5sum for a message object of type '<RunCOMParametersEstimation-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunCOMParametersEstimation-request)))
  "Returns md5sum for a message object of type 'RunCOMParametersEstimation-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunCOMParametersEstimation-request>)))
  "Returns full string definition for message of type '<RunCOMParametersEstimation-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunCOMParametersEstimation-request)))
  "Returns full string definition for message of type 'RunCOMParametersEstimation-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunCOMParametersEstimation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunCOMParametersEstimation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunCOMParametersEstimation-request
))
;//! \htmlinclude RunCOMParametersEstimation-response.msg.html

(cl:defclass <RunCOMParametersEstimation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass RunCOMParametersEstimation-response (<RunCOMParametersEstimation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunCOMParametersEstimation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunCOMParametersEstimation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<RunCOMParametersEstimation-response> is deprecated: use kinova_msgs-srv:RunCOMParametersEstimation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RunCOMParametersEstimation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:result-val is deprecated.  Use kinova_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunCOMParametersEstimation-response>) ostream)
  "Serializes a message object of type '<RunCOMParametersEstimation-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunCOMParametersEstimation-response>) istream)
  "Deserializes a message object of type '<RunCOMParametersEstimation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunCOMParametersEstimation-response>)))
  "Returns string type for a service object of type '<RunCOMParametersEstimation-response>"
  "kinova_msgs/RunCOMParametersEstimationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunCOMParametersEstimation-response)))
  "Returns string type for a service object of type 'RunCOMParametersEstimation-response"
  "kinova_msgs/RunCOMParametersEstimationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunCOMParametersEstimation-response>)))
  "Returns md5sum for a message object of type '<RunCOMParametersEstimation-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunCOMParametersEstimation-response)))
  "Returns md5sum for a message object of type 'RunCOMParametersEstimation-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunCOMParametersEstimation-response>)))
  "Returns full string definition for message of type '<RunCOMParametersEstimation-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunCOMParametersEstimation-response)))
  "Returns full string definition for message of type 'RunCOMParametersEstimation-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunCOMParametersEstimation-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunCOMParametersEstimation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunCOMParametersEstimation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunCOMParametersEstimation)))
  'RunCOMParametersEstimation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunCOMParametersEstimation)))
  'RunCOMParametersEstimation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunCOMParametersEstimation)))
  "Returns string type for a service object of type '<RunCOMParametersEstimation>"
  "kinova_msgs/RunCOMParametersEstimation")