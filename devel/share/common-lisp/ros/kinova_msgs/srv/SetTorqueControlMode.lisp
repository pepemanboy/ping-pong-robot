; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude SetTorqueControlMode-request.msg.html

(cl:defclass <SetTorqueControlMode-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTorqueControlMode-request (<SetTorqueControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetTorqueControlMode-request> is deprecated: use kinova_msgs-srv:SetTorqueControlMode-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetTorqueControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:state-val is deprecated.  Use kinova_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueControlMode-request>) ostream)
  "Serializes a message object of type '<SetTorqueControlMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueControlMode-request>) istream)
  "Deserializes a message object of type '<SetTorqueControlMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueControlMode-request>)))
  "Returns string type for a service object of type '<SetTorqueControlMode-request>"
  "kinova_msgs/SetTorqueControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlMode-request)))
  "Returns string type for a service object of type 'SetTorqueControlMode-request"
  "kinova_msgs/SetTorqueControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueControlMode-request>)))
  "Returns md5sum for a message object of type '<SetTorqueControlMode-request>"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueControlMode-request)))
  "Returns md5sum for a message object of type 'SetTorqueControlMode-request"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueControlMode-request>)))
  "Returns full string definition for message of type '<SetTorqueControlMode-request>"
  (cl:format cl:nil "uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueControlMode-request)))
  "Returns full string definition for message of type 'SetTorqueControlMode-request"
  (cl:format cl:nil "uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueControlMode-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueControlMode-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetTorqueControlMode-response.msg.html

(cl:defclass <SetTorqueControlMode-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTorqueControlMode-response (<SetTorqueControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetTorqueControlMode-response> is deprecated: use kinova_msgs-srv:SetTorqueControlMode-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueControlMode-response>) ostream)
  "Serializes a message object of type '<SetTorqueControlMode-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueControlMode-response>) istream)
  "Deserializes a message object of type '<SetTorqueControlMode-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueControlMode-response>)))
  "Returns string type for a service object of type '<SetTorqueControlMode-response>"
  "kinova_msgs/SetTorqueControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlMode-response)))
  "Returns string type for a service object of type 'SetTorqueControlMode-response"
  "kinova_msgs/SetTorqueControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueControlMode-response>)))
  "Returns md5sum for a message object of type '<SetTorqueControlMode-response>"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueControlMode-response)))
  "Returns md5sum for a message object of type 'SetTorqueControlMode-response"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueControlMode-response>)))
  "Returns full string definition for message of type '<SetTorqueControlMode-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueControlMode-response)))
  "Returns full string definition for message of type 'SetTorqueControlMode-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueControlMode-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueControlMode-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTorqueControlMode)))
  'SetTorqueControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTorqueControlMode)))
  'SetTorqueControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueControlMode)))
  "Returns string type for a service object of type '<SetTorqueControlMode>"
  "kinova_msgs/SetTorqueControlMode")