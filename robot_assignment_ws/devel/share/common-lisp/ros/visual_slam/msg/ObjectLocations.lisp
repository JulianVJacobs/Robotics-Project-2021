; Auto-generated. Do not edit!


(cl:in-package visual_slam-msg)


;//! \htmlinclude ObjectLocations.msg.html

(cl:defclass <ObjectLocations> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obj_locations
    :reader obj_locations
    :initarg :obj_locations
    :type (cl:vector visual_slam-msg:ObjectLocation)
   :initform (cl:make-array 0 :element-type 'visual_slam-msg:ObjectLocation :initial-element (cl:make-instance 'visual_slam-msg:ObjectLocation))))
)

(cl:defclass ObjectLocations (<ObjectLocations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectLocations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectLocations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_slam-msg:<ObjectLocations> is deprecated: use visual_slam-msg:ObjectLocations instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectLocations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_slam-msg:header-val is deprecated.  Use visual_slam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obj_locations-val :lambda-list '(m))
(cl:defmethod obj_locations-val ((m <ObjectLocations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_slam-msg:obj_locations-val is deprecated.  Use visual_slam-msg:obj_locations instead.")
  (obj_locations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectLocations>) ostream)
  "Serializes a message object of type '<ObjectLocations>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obj_locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obj_locations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectLocations>) istream)
  "Deserializes a message object of type '<ObjectLocations>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obj_locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obj_locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'visual_slam-msg:ObjectLocation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectLocations>)))
  "Returns string type for a message object of type '<ObjectLocations>"
  "visual_slam/ObjectLocations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectLocations)))
  "Returns string type for a message object of type 'ObjectLocations"
  "visual_slam/ObjectLocations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectLocations>)))
  "Returns md5sum for a message object of type '<ObjectLocations>"
  "533ce4e4caf32ab36f93c6ef43fe3db1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectLocations)))
  "Returns md5sum for a message object of type 'ObjectLocations"
  "533ce4e4caf32ab36f93c6ef43fe3db1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectLocations>)))
  "Returns full string definition for message of type '<ObjectLocations>"
  (cl:format cl:nil "Header header~%ObjectLocation[] obj_locations~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: visual_slam/ObjectLocation~%string object_class~%float64 confidence~%sensor_msgs/LaserScan scan_data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectLocations)))
  "Returns full string definition for message of type 'ObjectLocations"
  (cl:format cl:nil "Header header~%ObjectLocation[] obj_locations~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: visual_slam/ObjectLocation~%string object_class~%float64 confidence~%sensor_msgs/LaserScan scan_data~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectLocations>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj_locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectLocations>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectLocations
    (cl:cons ':header (header msg))
    (cl:cons ':obj_locations (obj_locations msg))
))
