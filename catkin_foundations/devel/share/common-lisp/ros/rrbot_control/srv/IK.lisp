; Auto-generated. Do not edit!


(cl:in-package rrbot_control-srv)


;//! \htmlinclude IK-request.msg.html

(cl:defclass <IK-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:float
    :initform 0.0)
   (beta
    :reader beta
    :initarg :beta
    :type cl:float
    :initform 0.0)
   (gamma
    :reader gamma
    :initarg :gamma
    :type cl:float
    :initform 0.0))
)

(cl:defclass IK-request (<IK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrbot_control-srv:<IK-request> is deprecated: use rrbot_control-srv:IK-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:x-val is deprecated.  Use rrbot_control-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:y-val is deprecated.  Use rrbot_control-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:z-val is deprecated.  Use rrbot_control-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:alpha-val is deprecated.  Use rrbot_control-srv:alpha instead.")
  (alpha m))

(cl:ensure-generic-function 'beta-val :lambda-list '(m))
(cl:defmethod beta-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:beta-val is deprecated.  Use rrbot_control-srv:beta instead.")
  (beta m))

(cl:ensure-generic-function 'gamma-val :lambda-list '(m))
(cl:defmethod gamma-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:gamma-val is deprecated.  Use rrbot_control-srv:gamma instead.")
  (gamma m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-request>) ostream)
  "Serializes a message object of type '<IK-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-request>) istream)
  "Deserializes a message object of type '<IK-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gamma) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-request>)))
  "Returns string type for a service object of type '<IK-request>"
  "rrbot_control/IKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-request)))
  "Returns string type for a service object of type 'IK-request"
  "rrbot_control/IKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-request>)))
  "Returns md5sum for a message object of type '<IK-request>"
  "d1d12092c54e7725284bed2d4e255885")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-request)))
  "Returns md5sum for a message object of type 'IK-request"
  "d1d12092c54e7725284bed2d4e255885")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-request>)))
  "Returns full string definition for message of type '<IK-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 alpha~%float32 beta~%float32 gamma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-request)))
  "Returns full string definition for message of type 'IK-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 alpha~%float32 beta~%float32 gamma~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':alpha (alpha msg))
    (cl:cons ':beta (beta msg))
    (cl:cons ':gamma (gamma msg))
))
;//! \htmlinclude IK-response.msg.html

(cl:defclass <IK-response> (roslisp-msg-protocol:ros-message)
  ((q1
    :reader q1
    :initarg :q1
    :type cl:float
    :initform 0.0)
   (q2
    :reader q2
    :initarg :q2
    :type cl:float
    :initform 0.0)
   (q3
    :reader q3
    :initarg :q3
    :type cl:float
    :initform 0.0))
)

(cl:defclass IK-response (<IK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrbot_control-srv:<IK-response> is deprecated: use rrbot_control-srv:IK-response instead.")))

(cl:ensure-generic-function 'q1-val :lambda-list '(m))
(cl:defmethod q1-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:q1-val is deprecated.  Use rrbot_control-srv:q1 instead.")
  (q1 m))

(cl:ensure-generic-function 'q2-val :lambda-list '(m))
(cl:defmethod q2-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:q2-val is deprecated.  Use rrbot_control-srv:q2 instead.")
  (q2 m))

(cl:ensure-generic-function 'q3-val :lambda-list '(m))
(cl:defmethod q3-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrbot_control-srv:q3-val is deprecated.  Use rrbot_control-srv:q3 instead.")
  (q3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-response>) ostream)
  "Serializes a message object of type '<IK-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-response>) istream)
  "Deserializes a message object of type '<IK-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-response>)))
  "Returns string type for a service object of type '<IK-response>"
  "rrbot_control/IKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-response)))
  "Returns string type for a service object of type 'IK-response"
  "rrbot_control/IKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-response>)))
  "Returns md5sum for a message object of type '<IK-response>"
  "d1d12092c54e7725284bed2d4e255885")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-response)))
  "Returns md5sum for a message object of type 'IK-response"
  "d1d12092c54e7725284bed2d4e255885")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-response>)))
  "Returns full string definition for message of type '<IK-response>"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-response)))
  "Returns full string definition for message of type 'IK-response"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-response
    (cl:cons ':q1 (q1 msg))
    (cl:cons ':q2 (q2 msg))
    (cl:cons ':q3 (q3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IK)))
  'IK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IK)))
  'IK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK)))
  "Returns string type for a service object of type '<IK>"
  "rrbot_control/IK")