; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-msg)


;//! \htmlinclude KinovaPose.msg.html

(cl:defclass <KinovaPose> (roslisp-msg-protocol:ros-message)
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

(cl:defclass KinovaPose (<KinovaPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinovaPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinovaPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-msg:<KinovaPose> is deprecated: use kinova_msgs-msg:KinovaPose instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:X-val is deprecated.  Use kinova_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:Y-val is deprecated.  Use kinova_msgs-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'Z-val :lambda-list '(m))
(cl:defmethod Z-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:Z-val is deprecated.  Use kinova_msgs-msg:Z instead.")
  (Z m))

(cl:ensure-generic-function 'ThetaX-val :lambda-list '(m))
(cl:defmethod ThetaX-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:ThetaX-val is deprecated.  Use kinova_msgs-msg:ThetaX instead.")
  (ThetaX m))

(cl:ensure-generic-function 'ThetaY-val :lambda-list '(m))
(cl:defmethod ThetaY-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:ThetaY-val is deprecated.  Use kinova_msgs-msg:ThetaY instead.")
  (ThetaY m))

(cl:ensure-generic-function 'ThetaZ-val :lambda-list '(m))
(cl:defmethod ThetaZ-val ((m <KinovaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:ThetaZ-val is deprecated.  Use kinova_msgs-msg:ThetaZ instead.")
  (ThetaZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinovaPose>) ostream)
  "Serializes a message object of type '<KinovaPose>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinovaPose>) istream)
  "Deserializes a message object of type '<KinovaPose>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinovaPose>)))
  "Returns string type for a message object of type '<KinovaPose>"
  "kinova_msgs/KinovaPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinovaPose)))
  "Returns string type for a message object of type 'KinovaPose"
  "kinova_msgs/KinovaPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinovaPose>)))
  "Returns md5sum for a message object of type '<KinovaPose>"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinovaPose)))
  "Returns md5sum for a message object of type 'KinovaPose"
  "e831d993faea563f6fe69d7db9b384c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinovaPose>)))
  "Returns full string definition for message of type '<KinovaPose>"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%float32 ThetaX~%float32 ThetaY~%float32 ThetaZ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinovaPose)))
  "Returns full string definition for message of type 'KinovaPose"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%float32 ThetaX~%float32 ThetaY~%float32 ThetaZ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinovaPose>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinovaPose>))
  "Converts a ROS message object to a list"
  (cl:list 'KinovaPose
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':Z (Z msg))
    (cl:cons ':ThetaX (ThetaX msg))
    (cl:cons ':ThetaY (ThetaY msg))
    (cl:cons ':ThetaZ (ThetaZ msg))
))
