
(cl:in-package :asdf)

(defsystem "visual_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectLocation" :depends-on ("_package_ObjectLocation"))
    (:file "_package_ObjectLocation" :depends-on ("_package"))
    (:file "ObjectLocations" :depends-on ("_package_ObjectLocations"))
    (:file "_package_ObjectLocations" :depends-on ("_package"))
  ))