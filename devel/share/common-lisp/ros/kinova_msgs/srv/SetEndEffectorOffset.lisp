; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude SetEndEffectorOffset-request.msg.html

(cl:defclass <SetEndEffectorOffset-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SetEndEffectorOffset-request (<SetEndEffectorOffset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorOffset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorOffset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetEndEffectorOffset-request> is deprecated: use kinova_msgs-srv:SetEndEffectorOffset-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetEndEffectorOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:status-val is deprecated.  Use kinova_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SetEndEffectorOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:offset-val is deprecated.  Use kinova_msgs-srv:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorOffset-request>) ostream)
  "Serializes a message object of type '<SetEndEffectorOffset-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorOffset-request>) istream)
  "Deserializes a message object of type '<SetEndEffectorOffset-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorOffset-request>)))
  "Returns string type for a service object of type '<SetEndEffectorOffset-request>"
  "kinova_msgs/SetEndEffectorOffsetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorOffset-request)))
  "Returns string type for a service object of type 'SetEndEffectorOffset-request"
  "kinova_msgs/SetEndEffectorOffsetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorOffset-request>)))
  "Returns md5sum for a message object of type '<SetEndEffectorOffset-request>"
  "7a5c04366489f137e01b31118dcce900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorOffset-request)))
  "Returns md5sum for a message object of type 'SetEndEffectorOffset-request"
  "7a5c04366489f137e01b31118dcce900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorOffset-request>)))
  "Returns full string definition for message of type '<SetEndEffectorOffset-request>"
  (cl:format cl:nil "uint16 status~%geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorOffset-request)))
  "Returns full string definition for message of type 'SetEndEffectorOffset-request"
  (cl:format cl:nil "uint16 status~%geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorOffset-request>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorOffset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorOffset-request
    (cl:cons ':status (status msg))
    (cl:cons ':offset (offset msg))
))
;//! \htmlinclude SetEndEffectorOffset-response.msg.html

(cl:defclass <SetEndEffectorOffset-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetEndEffectorOffset-response (<SetEndEffectorOffset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorOffset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorOffset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetEndEffectorOffset-response> is deprecated: use kinova_msgs-srv:SetEndEffectorOffset-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorOffset-response>) ostream)
  "Serializes a message object of type '<SetEndEffectorOffset-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorOffset-response>) istream)
  "Deserializes a message object of type '<SetEndEffectorOffset-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorOffset-response>)))
  "Returns string type for a service object of type '<SetEndEffectorOffset-response>"
  "kinova_msgs/SetEndEffectorOffsetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorOffset-response)))
  "Returns string type for a service object of type 'SetEndEffectorOffset-response"
  "kinova_msgs/SetEndEffectorOffsetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorOffset-response>)))
  "Returns md5sum for a message object of type '<SetEndEffectorOffset-response>"
  "7a5c04366489f137e01b31118dcce900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorOffset-response)))
  "Returns md5sum for a message object of type 'SetEndEffectorOffset-response"
  "7a5c04366489f137e01b31118dcce900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorOffset-response>)))
  "Returns full string definition for message of type '<SetEndEffectorOffset-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorOffset-response)))
  "Returns full string definition for message of type 'SetEndEffectorOffset-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorOffset-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorOffset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorOffset-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEndEffectorOffset)))
  'SetEndEffectorOffset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEndEffectorOffset)))
  'SetEndEffectorOffset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorOffset)))
  "Returns string type for a service object of type '<SetEndEffectorOffset>"
  "kinova_msgs/SetEndEffectorOffset")