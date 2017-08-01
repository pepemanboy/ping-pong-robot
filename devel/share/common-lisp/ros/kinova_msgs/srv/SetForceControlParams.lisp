; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-srv)


;//! \htmlinclude SetForceControlParams-request.msg.html

(cl:defclass <SetForceControlParams-request> (roslisp-msg-protocol:ros-message)
  ((inertia_linear
    :reader inertia_linear
    :initarg :inertia_linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (inertia_angular
    :reader inertia_angular
    :initarg :inertia_angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (damping_linear
    :reader damping_linear
    :initarg :damping_linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (damping_angular
    :reader damping_angular
    :initarg :damping_angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force_min_linear
    :reader force_min_linear
    :initarg :force_min_linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force_min_angular
    :reader force_min_angular
    :initarg :force_min_angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force_max_linear
    :reader force_max_linear
    :initarg :force_max_linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force_max_angular
    :reader force_max_angular
    :initarg :force_max_angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SetForceControlParams-request (<SetForceControlParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetForceControlParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetForceControlParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetForceControlParams-request> is deprecated: use kinova_msgs-srv:SetForceControlParams-request instead.")))

(cl:ensure-generic-function 'inertia_linear-val :lambda-list '(m))
(cl:defmethod inertia_linear-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:inertia_linear-val is deprecated.  Use kinova_msgs-srv:inertia_linear instead.")
  (inertia_linear m))

(cl:ensure-generic-function 'inertia_angular-val :lambda-list '(m))
(cl:defmethod inertia_angular-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:inertia_angular-val is deprecated.  Use kinova_msgs-srv:inertia_angular instead.")
  (inertia_angular m))

(cl:ensure-generic-function 'damping_linear-val :lambda-list '(m))
(cl:defmethod damping_linear-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:damping_linear-val is deprecated.  Use kinova_msgs-srv:damping_linear instead.")
  (damping_linear m))

(cl:ensure-generic-function 'damping_angular-val :lambda-list '(m))
(cl:defmethod damping_angular-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:damping_angular-val is deprecated.  Use kinova_msgs-srv:damping_angular instead.")
  (damping_angular m))

(cl:ensure-generic-function 'force_min_linear-val :lambda-list '(m))
(cl:defmethod force_min_linear-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:force_min_linear-val is deprecated.  Use kinova_msgs-srv:force_min_linear instead.")
  (force_min_linear m))

(cl:ensure-generic-function 'force_min_angular-val :lambda-list '(m))
(cl:defmethod force_min_angular-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:force_min_angular-val is deprecated.  Use kinova_msgs-srv:force_min_angular instead.")
  (force_min_angular m))

(cl:ensure-generic-function 'force_max_linear-val :lambda-list '(m))
(cl:defmethod force_max_linear-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:force_max_linear-val is deprecated.  Use kinova_msgs-srv:force_max_linear instead.")
  (force_max_linear m))

(cl:ensure-generic-function 'force_max_angular-val :lambda-list '(m))
(cl:defmethod force_max_angular-val ((m <SetForceControlParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-srv:force_max_angular-val is deprecated.  Use kinova_msgs-srv:force_max_angular instead.")
  (force_max_angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetForceControlParams-request>) ostream)
  "Serializes a message object of type '<SetForceControlParams-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inertia_linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inertia_angular) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'damping_linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'damping_angular) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force_min_linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force_min_angular) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force_max_linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force_max_angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetForceControlParams-request>) istream)
  "Deserializes a message object of type '<SetForceControlParams-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inertia_linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inertia_angular) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'damping_linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'damping_angular) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force_min_linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force_min_angular) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force_max_linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force_max_angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetForceControlParams-request>)))
  "Returns string type for a service object of type '<SetForceControlParams-request>"
  "kinova_msgs/SetForceControlParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetForceControlParams-request)))
  "Returns string type for a service object of type 'SetForceControlParams-request"
  "kinova_msgs/SetForceControlParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetForceControlParams-request>)))
  "Returns md5sum for a message object of type '<SetForceControlParams-request>"
  "5c0999be3d1c60dba47ea0b2fd08231e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetForceControlParams-request)))
  "Returns md5sum for a message object of type 'SetForceControlParams-request"
  "5c0999be3d1c60dba47ea0b2fd08231e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetForceControlParams-request>)))
  "Returns full string definition for message of type '<SetForceControlParams-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 inertia_linear~%geometry_msgs/Vector3 inertia_angular~%geometry_msgs/Vector3 damping_linear~%geometry_msgs/Vector3 damping_angular~%geometry_msgs/Vector3 force_min_linear~%geometry_msgs/Vector3 force_min_angular~%geometry_msgs/Vector3 force_max_linear~%geometry_msgs/Vector3 force_max_angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetForceControlParams-request)))
  "Returns full string definition for message of type 'SetForceControlParams-request"
  (cl:format cl:nil "geometry_msgs/Vector3 inertia_linear~%geometry_msgs/Vector3 inertia_angular~%geometry_msgs/Vector3 damping_linear~%geometry_msgs/Vector3 damping_angular~%geometry_msgs/Vector3 force_min_linear~%geometry_msgs/Vector3 force_min_angular~%geometry_msgs/Vector3 force_max_linear~%geometry_msgs/Vector3 force_max_angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetForceControlParams-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inertia_linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inertia_angular))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'damping_linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'damping_angular))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force_min_linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force_min_angular))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force_max_linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force_max_angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetForceControlParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetForceControlParams-request
    (cl:cons ':inertia_linear (inertia_linear msg))
    (cl:cons ':inertia_angular (inertia_angular msg))
    (cl:cons ':damping_linear (damping_linear msg))
    (cl:cons ':damping_angular (damping_angular msg))
    (cl:cons ':force_min_linear (force_min_linear msg))
    (cl:cons ':force_min_angular (force_min_angular msg))
    (cl:cons ':force_max_linear (force_max_linear msg))
    (cl:cons ':force_max_angular (force_max_angular msg))
))
;//! \htmlinclude SetForceControlParams-response.msg.html

(cl:defclass <SetForceControlParams-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetForceControlParams-response (<SetForceControlParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetForceControlParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetForceControlParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-srv:<SetForceControlParams-response> is deprecated: use kinova_msgs-srv:SetForceControlParams-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetForceControlParams-response>) ostream)
  "Serializes a message object of type '<SetForceControlParams-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetForceControlParams-response>) istream)
  "Deserializes a message object of type '<SetForceControlParams-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetForceControlParams-response>)))
  "Returns string type for a service object of type '<SetForceControlParams-response>"
  "kinova_msgs/SetForceControlParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetForceControlParams-response)))
  "Returns string type for a service object of type 'SetForceControlParams-response"
  "kinova_msgs/SetForceControlParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetForceControlParams-response>)))
  "Returns md5sum for a message object of type '<SetForceControlParams-response>"
  "5c0999be3d1c60dba47ea0b2fd08231e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetForceControlParams-response)))
  "Returns md5sum for a message object of type 'SetForceControlParams-response"
  "5c0999be3d1c60dba47ea0b2fd08231e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetForceControlParams-response>)))
  "Returns full string definition for message of type '<SetForceControlParams-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetForceControlParams-response)))
  "Returns full string definition for message of type 'SetForceControlParams-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetForceControlParams-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetForceControlParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetForceControlParams-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetForceControlParams)))
  'SetForceControlParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetForceControlParams)))
  'SetForceControlParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetForceControlParams)))
  "Returns string type for a service object of type '<SetForceControlParams>"
  "kinova_msgs/SetForceControlParams")