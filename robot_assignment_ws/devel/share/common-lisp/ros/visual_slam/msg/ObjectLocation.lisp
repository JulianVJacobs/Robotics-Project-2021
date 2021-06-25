; Auto-generated. Do not edit!


(cl:in-package visual_slam-msg)


;//! \htmlinclude ObjectLocation.msg.html

(cl:defclass <ObjectLocation> (roslisp-msg-protocol:ros-message)
  ((object_class
    :reader object_class
    :initarg :object_class
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (scan_data
    :reader scan_data
    :initarg :scan_data
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan)))
)

(cl:defclass ObjectLocation (<ObjectLocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectLocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectLocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_slam-msg:<ObjectLocation> is deprecated: use visual_slam-msg:ObjectLocation instead.")))

(cl:ensure-generic-function 'object_class-val :lambda-list '(m))
(cl:defmethod object_class-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_slam-msg:object_class-val is deprecated.  Use visual_slam-msg:object_class instead.")
  (object_class m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_slam-msg:confidence-val is deprecated.  Use visual_slam-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'scan_data-val :lambda-list '(m))
(cl:defmethod scan_data-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_slam-msg:scan_data-val is deprecated.  Use visual_slam-msg:scan_data instead.")
  (scan_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectLocation>) ostream)
  "Serializes a message object of type '<ObjectLocation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_class))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scan_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectLocation>) istream)
  "Deserializes a message object of type '<ObjectLocation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scan_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectLocation>)))
  "Returns string type for a message object of type '<ObjectLocation>"
  "visual_slam/ObjectLocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectLocation)))
  "Returns string type for a message object of type 'ObjectLocation"
  "visual_slam/ObjectLocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectLocation>)))
  "Returns md5sum for a message object of type '<ObjectLocation>"
  "8d6a12f63bbcb856ea4f2379e70ec5ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectLocation)))
  "Returns md5sum for a message object of type 'ObjectLocation"
  "8d6a12f63bbcb856ea4f2379e70ec5ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectLocation>)))
  "Returns full string definition for message of type '<ObjectLocation>"
  (cl:format cl:nil "string object_class~%float64 confidence~%sensor_msgs/LaserScan scan_data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectLocation)))
  "Returns full string definition for message of type 'ObjectLocation"
  (cl:format cl:nil "string object_class~%float64 confidence~%sensor_msgs/LaserScan scan_data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectLocation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_class))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scan_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectLocation>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectLocation
    (cl:cons ':object_class (object_class msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':scan_data (scan_data msg))
))
