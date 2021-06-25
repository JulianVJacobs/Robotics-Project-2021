;; Auto-generated. Do not edit!


(when (boundp 'visual_slam::ObjectLocation)
  (if (not (find-package "VISUAL_SLAM"))
    (make-package "VISUAL_SLAM"))
  (shadow 'ObjectLocation (find-package "VISUAL_SLAM")))
(unless (find-package "VISUAL_SLAM::OBJECTLOCATION")
  (make-package "VISUAL_SLAM::OBJECTLOCATION"))

(in-package "ROS")
;;//! \htmlinclude ObjectLocation.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass visual_slam::ObjectLocation
  :super ros::object
  :slots (_object_class _confidence _scan_data ))

(defmethod visual_slam::ObjectLocation
  (:init
   (&key
    ((:object_class __object_class) "")
    ((:confidence __confidence) 0.0)
    ((:scan_data __scan_data) (instance sensor_msgs::LaserScan :init))
    )
   (send-super :init)
   (setq _object_class (string __object_class))
   (setq _confidence (float __confidence))
   (setq _scan_data __scan_data)
   self)
  (:object_class
   (&optional __object_class)
   (if __object_class (setq _object_class __object_class)) _object_class)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:scan_data
   (&rest __scan_data)
   (if (keywordp (car __scan_data))
       (send* _scan_data __scan_data)
     (progn
       (if __scan_data (setq _scan_data (car __scan_data)))
       _scan_data)))
  (:serialization-length
   ()
   (+
    ;; string _object_class
    4 (length _object_class)
    ;; float64 _confidence
    8
    ;; sensor_msgs/LaserScan _scan_data
    (send _scan_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_class
       (write-long (length _object_class) s) (princ _object_class s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; sensor_msgs/LaserScan _scan_data
       (send _scan_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; sensor_msgs/LaserScan _scan_data
     (send _scan_data :deserialize buf ptr-) (incf ptr- (send _scan_data :serialization-length))
   ;;
   self)
  )

(setf (get visual_slam::ObjectLocation :md5sum-) "8d6a12f63bbcb856ea4f2379e70ec5ab")
(setf (get visual_slam::ObjectLocation :datatype-) "visual_slam/ObjectLocation")
(setf (get visual_slam::ObjectLocation :definition-)
      "string object_class
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

")



(provide :visual_slam/ObjectLocation "8d6a12f63bbcb856ea4f2379e70ec5ab")


