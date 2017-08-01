; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-msg)


;//! \htmlinclude FingerPosition.msg.html

(cl:defclass <FingerPosition> (roslisp-msg-protocol:ros-message)
  ((finger1
    :reader finger1
    :initarg :finger1
    :type cl:float
    :initform 0.0)
   (finger2
    :reader finger2
    :initarg :finger2
    :type cl:float
    :initform 0.0)
   (finger3
    :reader finger3
    :initarg :finger3
    :type cl:float
    :initform 0.0))
)

(cl:defclass FingerPosition (<FingerPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FingerPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FingerPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-msg:<FingerPosition> is deprecated: use kinova_msgs-msg:FingerPosition instead.")))

(cl:ensure-generic-function 'finger1-val :lambda-list '(m))
(cl:defmethod finger1-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger1-val is deprecated.  Use kinova_msgs-msg:finger1 instead.")
  (finger1 m))

(cl:ensure-generic-function 'finger2-val :lambda-list '(m))
(cl:defmethod finger2-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger2-val is deprecated.  Use kinova_msgs-msg:finger2 instead.")
  (finger2 m))

(cl:ensure-generic-function 'finger3-val :lambda-list '(m))
(cl:defmethod finger3-val ((m <FingerPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:finger3-val is deprecated.  Use kinova_msgs-msg:finger3 instead.")
  (finger3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FingerPosition>) ostream)
  "Serializes a message object of type '<FingerPosition>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'finger3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FingerPosition>) istream)
  "Deserializes a message object of type '<FingerPosition>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FingerPosition>)))
  "Returns string type for a message object of type '<FingerPosition>"
  "kinova_msgs/FingerPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FingerPosition)))
  "Returns string type for a message object of type 'FingerPosition"
  "kinova_msgs/FingerPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FingerPosition>)))
  "Returns md5sum for a message object of type '<FingerPosition>"
  "f56891e5dcd1900989f764a9b845c8e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FingerPosition)))
  "Returns md5sum for a message object of type 'FingerPosition"
  "f56891e5dcd1900989f764a9b845c8e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FingerPosition>)))
  "Returns full string definition for message of type '<FingerPosition>"
  (cl:format cl:nil "float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FingerPosition)))
  "Returns full string definition for message of type 'FingerPosition"
  (cl:format cl:nil "float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FingerPosition>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FingerPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'FingerPosition
    (cl:cons ':finger1 (finger1 msg))
    (cl:cons ':finger2 (finger2 msg))
    (cl:cons ':finger3 (finger3 msg))
))
