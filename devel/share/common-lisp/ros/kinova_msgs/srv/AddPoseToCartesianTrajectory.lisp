; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude AddPoseToCartesianTrajectory-request.msg.html

(cl:defclass <AddPoseToCartesianTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0)
   (Z
    :reader Z
    :initarg :Z
    :type cl:float
    :initform 0.0)
   (ThetaX
    :reader ThetaX
    :initarg :ThetaX
    :type cl:float
    :initform 0.0)
   (ThetaY
    :reader ThetaY
    :initarg :ThetaY
    :type cl:float
    :initform 0.0)
   (ThetaZ
    :reader ThetaZ
    :initarg :ThetaZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddPoseToCartesianTrajectory-request (<AddPoseToCartesianTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPoseToCartesianTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPoseToCartesianTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<AddPoseToCartesianTrajectory-request> is deprecated: use kinova_msgs-srv:AddPoseToCartesianTrajectory-request instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:X-val is deprecated.  Use kinova_msgs-srv:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:Y-val is deprecated.  Use kinova_msgs-srv:Y instead.")
  (Y m))

(cl:ensure-generic-function 'Z-val :lambda-list '(m))
(cl:defmethod Z-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:Z-val is deprecated.  Use kinova_msgs-srv:Z instead.")
  (Z m))

(cl:ensure-generic-function 'ThetaX-val :lambda-list '(m))
(cl:defmethod ThetaX-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:ThetaX-val is deprecated.  Use kinova_msgs-srv:ThetaX instead.")
  (ThetaX m))

(cl:ensure-generic-function 'ThetaY-val :lambda-list '(m))
(cl:defmethod ThetaY-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:ThetaY-val is deprecated.  Use kinova_msgs-srv:ThetaY instead.")
  (ThetaY m))

(cl:ensure-generic-function 'ThetaZ-val :lambda-list '(m))
(cl:defmethod ThetaZ-val ((m <AddPoseToCartesianTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:ThetaZ-val is deprecated.  Use kinova_msgs-srv:ThetaZ instead.")
  (ThetaZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPoseToCartesianTrajectory-request>) ostream)
  "Serializes a message object of type '<AddPoseToCartesianTrajectory-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ThetaX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ThetaY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ThetaZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPoseToCartesianTrajectory-request>) istream)
  "Deserializes a message object of type '<AddPoseToCartesianTrajectory-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ThetaX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ThetaY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ThetaZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPoseToCartesianTrajectory-request>)))
  "Returns string type for a service object of type '<AddPoseToCartesianTrajectory-request>"
  "kinova_msgs/AddPoseToCartesianTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPoseToCartesianTrajectory-request)))
  "Returns string type for a service object of type 'AddPoseToCartesianTrajectory-request"
  "kinova_msgs/AddPoseToCartesianTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPoseToCartesianTrajectory-request>)))
  "Returns md5sum for a message object of type '<AddPoseToCartesianTrajectory-request>"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPoseToCartesianTrajectory-request)))
  "Returns md5sum for a message object of type 'AddPoseToCartesianTrajectory-request"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPoseToCartesianTrajectory-request>)))
  "Returns full string definition for message of type '<AddPoseToCartesianTrajectory-request>"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%float32 ThetaX~%float32 ThetaY~%float32 ThetaZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPoseToCartesianTrajectory-request)))
  "Returns full string definition for message of type 'AddPoseToCartesianTrajectory-request"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%float32 ThetaX~%float32 ThetaY~%float32 ThetaZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPoseToCartesianTrajectory-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPoseToCartesianTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPoseToCartesianTrajectory-request
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':Z (Z msg))
    (cl:cons ':ThetaX (ThetaX msg))
    (cl:cons ':ThetaY (ThetaY msg))
    (cl:cons ':ThetaZ (ThetaZ msg))
))
;//! \htmlinclude AddPoseToCartesianTrajectory-response.msg.html

(cl:defclass <AddPoseToCartesianTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddPoseToCartesianTrajectory-response (<AddPoseToCartesianTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPoseToCartesianTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPoseToCartesianTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<AddPoseToCartesianTrajectory-response> is deprecated: use kinova_msgs-srv:AddPoseToCartesianTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPoseToCartesianTrajectory-response>) ostream)
  "Serializes a message object of type '<AddPoseToCartesianTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPoseToCartesianTrajectory-response>) istream)
  "Deserializes a message object of type '<AddPoseToCartesianTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPoseToCartesianTrajectory-response>)))
  "Returns string type for a service object of type '<AddPoseToCartesianTrajectory-response>"
  "kinova_msgs/AddPoseToCartesianTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPoseToCartesianTrajectory-response)))
  "Returns string type for a service object of type 'AddPoseToCartesianTrajectory-response"
  "kinova_msgs/AddPoseToCartesianTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPoseToCartesianTrajectory-response>)))
  "Returns md5sum for a message object of type '<AddPoseToCartesianTrajectory-response>"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPoseToCartesianTrajectory-response)))
  "Returns md5sum for a message object of type 'AddPoseToCartesianTrajectory-response"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPoseToCartesianTrajectory-response>)))
  "Returns full string definition for message of type '<AddPoseToCartesianTrajectory-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPoseToCartesianTrajectory-response)))
  "Returns full string definition for message of type 'AddPoseToCartesianTrajectory-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPoseToCartesianTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPoseToCartesianTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPoseToCartesianTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddPoseToCartesianTrajectory)))
  'AddPoseToCartesianTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddPoseToCartesianTrajectory)))
  'AddPoseToCartesianTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPoseToCartesianTrajectory)))
  "Returns string type for a service object of type '<AddPoseToCartesianTrajectory>"
  "kinova_msgs/AddPoseToCartesianTrajectory")