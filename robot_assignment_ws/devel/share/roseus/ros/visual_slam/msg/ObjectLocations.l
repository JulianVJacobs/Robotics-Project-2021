;; Auto-generated. Do not edit!


(when (boundp 'visual_slam::ObjectLocations)
  (if (not (find-package "VISUAL_SLAM"))
    (make-package "VISUAL_SLAM"))
  (shadow 'ObjectLocations (find-package "VISUAL_SLAM")))
(unless (find-package "VISUAL_SLAM::OBJECTLOCATIONS")
  (make-package "VISUAL_SLAM::OBJECTLOCATIONS"))

(in-package "ROS")
;;//! \htmlinclude ObjectLocations.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visual_slam::ObjectLocations
  :super ros::object
  :slots (_header _obj_locations ))

(defmethod visual_slam::ObjectLocations
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obj_locations __obj_locations) (let (r) (dotimes (i 0) (push (instance visual_slam::ObjectLocation :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obj_locations __obj_locations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obj_locations
   (&rest __obj_locations)
   (if (keywordp (car __obj_locations))
       (send* _obj_locations __obj_locations)
     (progn
       (if __obj_locations (setq _obj_locations (car __obj_locations)))
       _obj_locations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; visual_slam/ObjectLocation[] _obj_locations
    (apply #'+ (send-all _obj_locations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; visual_slam/ObjectLocation[] _obj_locations
     (write-long (length _obj_locations) s)
     (dolist (elem _obj_locations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; visual_slam/ObjectLocation[] _obj_locations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obj_locations (let (r) (dotimes (i n) (push (instance visual_slam::ObjectLocation :init) r)) r))
     (dolist (elem- _obj_locations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visual_slam::ObjectLocations :md5sum-) "533ce4e4caf32ab36f93c6ef43fe3db1")
(setf (get visual_slam::ObjectLocations :datatype-) "visual_slam/ObjectLocations")
(setf (get visual_slam::ObjectLocations :definition-)
      "Header header
ObjectLocation[] obj_locations
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: visual_slam/ObjectLocation
string object_class
float64 confidence
sensor_msgs/LaserScan scan_data

================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

")



(provide :visual_slam/ObjectLocations "533ce4e4caf32ab36f93c6ef43fe3db1")


