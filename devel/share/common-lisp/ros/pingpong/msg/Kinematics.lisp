; Auto-generated. Do not edit!


(cl:in-package pingpong-msg)


;//! \htmlinclude Kinematics.msg.html

(cl:defclass <Kinematics> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (controlled
    :reader controlled
    :initarg :controlled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Kinematics (<Kinematics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kinematics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kinematics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pingpong-msg:<Kinematics> is deprecated: use pingpong-msg:Kinematics instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pingpong-msg:position-val is deprecated.  Use pingpong-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pingpong-msg:velocity-val is deprecated.  Use pingpong-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pingpong-msg:acceleration-val is deprecated.  Use pingpong-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'controlled-val :lambda-list '(m))
(cl:defmethod controlled-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pingpong-msg:controlled-val is deprecated.  Use pingpong-msg:controlled instead.")
  (controlled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kinematics>) ostream)
  "Serializes a message object of type '<Kinematics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controlled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kinematics>) istream)
  "Deserializes a message object of type '<Kinematics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:setf (cl:slot-value msg 'controlled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kinematics>)))
  "Returns string type for a message object of type '<Kinematics>"
  "pingpong/Kinematics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kinematics)))
  "Returns string type for a message object of type 'Kinematics"
  "pingpong/Kinematics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kinematics>)))
  "Returns md5sum for a message object of type '<Kinematics>"
  "2f605c13c499160cdf7517a158ac14b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kinematics)))
  "Returns md5sum for a message object of type 'Kinematics"
  "2f605c13c499160cdf7517a158ac14b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kinematics>)))
  "Returns full string definition for message of type '<Kinematics>"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%bool controlled~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kinematics)))
  "Returns full string definition for message of type 'Kinematics"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%bool controlled~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kinematics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kinematics>))
  "Converts a ROS message object to a list"
  (cl:list 'Kinematics
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':controlled (controlled msg))
))
