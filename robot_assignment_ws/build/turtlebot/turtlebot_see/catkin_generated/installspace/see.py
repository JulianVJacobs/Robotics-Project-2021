#!/usr/bin/env python2
# Import ROS libraries and messages
import rospy
from sensor_msgs.msg import Image
from darknet_ros_msgs.msg import BoundingBoxes
from visual_slam.msg import ObjectLocations

# Import OpenCV libraries and tools
import cv2
from cv_bridge import CvBridge, CvBridgeError

# Print "Hello!" to terminal
# print "Hello!"

# Initialize the ROS Node named 'opencv_example', allow multiple nodes to be run with this name
rospy.init_node('opencv_example', anonymous=True)

# Print "Hello ROS!" to the Terminal and to a ROS Log file located in ~/.ros/log/loghash/*.log

# Initialize the CvBridge class
bridge = CvBridge()

# Define a function to show the image in an OpenCV Window
def show_image(img):
    cv2.imshow("Image Window", img)
    cv2.waitKey(3)

# Define a callback for the Image message
def image_callback(img_msg):
    # log some info about the image topic
    # rospy.loginfo(img_msg.header)

    # Try to convert the ROS Image message to a CV2 Image
    try:
        cv_image = bridge.imgmsg_to_cv2(img_msg, "passthrough")
    except CvBridgeError, e:
        rospy.logerr("CvBridge Error: {0}".format(e))

    # Flip the image 90deg
    # cv_image = cv2.transpose(cv_image)
    # cv_image = cv2.flip(cv_image,1)

    # Show the converted image
    show_image(cv_image)

def check_boxes(boxes):
    rospy.loginfo("check_boxes()")

def lidar_callback(data):
    rospy.loginfo("lidar_callback()")

# Initalize a subscriber to the "/camera/rgb/image_raw" topic with the function "image_callback" as a callback
subscribe_to = {
    # "/camera/rgb/image_raw": rospy.Subscriber("/camera/rgb/image_raw", Image, image_callback),
    "/darknet_ros/bounding_boxes": rospy.Subscriber("/darknet_ros/bounding_boxes",BoundingBoxes,check_boxes),
    "/segmented_lidar_data": rospy.Subscriber("/segmented_lidar_data", ObjectLocations, lidar_callback)
}

# Initialize an OpenCV Window named "Image Window"
# cv2.namedWindow("Image Window", 1)

# Loop to keep the program from shutting down unless ROS is shut down, or CTRL+C is pressed
while not rospy.is_shutdown():
    rospy.spin()