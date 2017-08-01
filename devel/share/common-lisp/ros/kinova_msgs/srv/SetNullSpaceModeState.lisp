; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude SetNullSpaceModeState-request.msg.html

(cl:defclass <SetNullSpaceModeState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetNullSpaceModeState-request (<SetNullSpaceModeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNullSpaceModeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNullSpaceModeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetNullSpaceModeState-request> is deprecated: use kinova_msgs-srv:SetNullSpaceModeState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetNullSpaceModeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:state-val is deprecated.  Use kinova_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNullSpaceModeState-request>) ostream)
  "Serializes a message object of type '<SetNullSpaceModeState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNullSpaceModeState-request>) istream)
  "Deserializes a message object of type '<SetNullSpaceModeState-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNullSpaceModeState-request>)))
  "Returns string type for a service object of type '<SetNullSpaceModeState-request>"
  "kinova_msgs/SetNullSpaceModeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNullSpaceModeState-request)))
  "Returns string type for a service object of type 'SetNullSpaceModeState-request"
  "kinova_msgs/SetNullSpaceModeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNullSpaceModeState-request>)))
  "Returns md5sum for a message object of type '<SetNullSpaceModeState-request>"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNullSpaceModeState-request)))
  "Returns md5sum for a message object of type 'SetNullSpaceModeState-request"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNullSpaceModeState-request>)))
  "Returns full string definition for message of type '<SetNullSpaceModeState-request>"
  (cl:format cl:nil "uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNullSpaceModeState-request)))
  "Returns full string definition for message of type 'SetNullSpaceModeState-request"
  (cl:format cl:nil "uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNullSpaceModeState-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNullSpaceModeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNullSpaceModeState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetNullSpaceModeState-response.msg.html

(cl:defclass <SetNullSpaceModeState-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetNullSpaceModeState-response (<SetNullSpaceModeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNullSpaceModeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNullSpaceModeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetNullSpaceModeState-response> is deprecated: use kinova_msgs-srv:SetNullSpaceModeState-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNullSpaceModeState-response>) ostream)
  "Serializes a message object of type '<SetNullSpaceModeState-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNullSpaceModeState-response>) istream)
  "Deserializes a message object of type '<SetNullSpaceModeState-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNullSpaceModeState-response>)))
  "Returns string type for a service object of type '<SetNullSpaceModeState-response>"
  "kinova_msgs/SetNullSpaceModeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNullSpaceModeState-response)))
  "Returns string type for a service object of type 'SetNullSpaceModeState-response"
  "kinova_msgs/SetNullSpaceModeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNullSpaceModeState-response>)))
  "Returns md5sum for a message object of type '<SetNullSpaceModeState-response>"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNullSpaceModeState-response)))
  "Returns md5sum for a message object of type 'SetNullSpaceModeState-response"
  "891b541ef99af7889d0f22a062410be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNullSpaceModeState-response>)))
  "Returns full string definition for message of type '<SetNullSpaceModeState-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNullSpaceModeState-response)))
  "Returns full string definition for message of type 'SetNullSpaceModeState-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNullSpaceModeState-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNullSpaceModeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNullSpaceModeState-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNullSpaceModeState)))
  'SetNullSpaceModeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNullSpaceModeState)))
  'SetNullSpaceModeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNullSpaceModeState)))
  "Returns string type for a service object of type '<SetNullSpaceModeState>"
  "kinova_msgs/SetNullSpaceModeState")