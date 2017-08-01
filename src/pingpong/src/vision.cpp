#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <time.h>
#include <iomanip>
#include <sstream>
#include <math.h>
#include "ball.h"
#include "pingpong/Kinematics.h"

using namespace std;
using namespace cv;

//Tuning parameters
const int absenceTreshold = 24;
const int ballsBuffer = 100;
const int positionFilter = 8;
const int velocityFilter = 20;
const int accelerationFilter = 20;
const float scale = 0.25f;

//FPS of camera
const int fps = 24;

//Images
Mat img_bgr, img_bgr_rz, img_luv, img_diff, img_key;

int absences = 0;

//Function declarations
void CallBackFunc(int event, int x, int y, int flags, void* userdata);
SimpleBlobDetector::Params configBlobDetector();
Mat colorDifferenceImage(Mat orig, Scalar color);
Point3f averagePosition(deque<Ball> arr, int avFrames);
Point3f averageVelocity(deque<Ball> arr, int avFrames);
Point3f averageAcceleration(deque<Ball> arr, int avFrames);

int main(int argc, char** argv)
{
  //ROS init
  ros::init(argc, argv, "vision");
  ros::NodeHandle nh;

  /* This sleep is ONLY to allow Rviz to come up */
  sleep(10.0);

  //Create a publisher of pose
  ros::Publisher pub_ball = nh.advertise<pingpong::Kinematics>("ballKinematics",1);
  ROS_INFO("YA LISTO");

  //Initialize camera
  VideoCapture vc(0);
  if (!vc.isOpened()) {
    cout << "Could not open camera" << endl;
    return -1;
  }

  //Main window
  namedWindow("Frame1");
  namedWindow("Frame2");

  //Set the callback function for any mouse event
  setMouseCallback("Frame1", CallBackFunc, NULL);

  // Set up detector with params
  SimpleBlobDetector detector(configBlobDetector());

  // Storage for blobs
  vector<KeyPoint> keypoints;

  //Keyboard input
  char c;

  //String to show ball diameter
  string s;
  stringstream stream;

  //Current ball and balls buffer
  Ball ball;
  deque<Ball> balls(ballsBuffer,Ball());

  //Filtered values
  Point3f filteredVelocity;
  Point3f filteredAcceleration;
  Point3f filteredPosition;

  while (1) {
    //Capture keyboard
    if ((c = (char)waitKey(1)) == 27) break;

    //Capture image
    vc >> img_bgr; if (img_bgr.empty()) break;
    flip(img_bgr, img_bgr, 1); //Camera reads horizontally flipped image.
    resize(img_bgr, img_bgr_rz, Size((int)(img_bgr.cols*scale), (int)(img_bgr.rows*scale))); //To reduce procesing time.

    //Transform to color difference image
    cvtColor(img_bgr_rz, img_luv, COLOR_BGR2Luv); //Transform to luv colorspace
    img_diff = colorDifferenceImage(img_luv, Scalar(0, 100, 195));

    //Detect blobs
    detector.detect(img_diff, keypoints);
    if (keypoints.size() > 0) {
      //Update ball
      ball.setPixelPosition(Point3f(keypoints[0].pt.x*(1.f/scale),keypoints[0].pt.y*(1.f/scale), keypoints[0].size*(1.f/scale)));
      ball.setVelocity((ball.getPosition() - balls[balls.size() - 1].getPosition())*fps);
      ball.setAcceleration((ball.getVelocity() - balls[balls.size() - 1].getVelocity())*fps);
      ball.setControlled(true);
      //Resize keypoints to show only the first element
      if (keypoints.size() > 1) keypoints.resize(1);
      //The ball is not absent
      absences = 0;
      //Build string
      stringstream stream; stream << "X = " << fixed << setprecision(2) << ball.getVelocity().x << " Y = " << fixed << setprecision(2) << ball.getVelocity().y << " Z = " << fixed << setprecision(2) << ball.getVelocity().z; s = stream.str();
    }else if (absences ++ >= absenceTreshold) {
      //Update ball
      ball.setPosition(Point3f(0, 0,0));
      ball.setVelocity(Point3f(0, 0,0));
      ball.setAcceleration(Point3f(0, 0,0));
      ball.setControlled(false);
      //Build string
      s = "No ball found";
    }


    balls.push_back(ball);
    balls.pop_front();
    //Low pass filter velocity and acceleration
    filteredPosition = averagePosition(balls,positionFilter);
    filteredVelocity = averageVelocity(balls, velocityFilter);
    filteredAcceleration = averageAcceleration(balls, accelerationFilter);
    stringstream stream; stream << "X = " << fixed << setprecision(2) << filteredPosition.x << " Y = " << fixed << setprecision(2) << filteredPosition.y << " Z = " << fixed << setprecision(2) << filteredPosition.z; s = stream.str();

    drawKeypoints(img_diff, keypoints, img_key, Scalar(0, 0, 255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);


    //Draw center in bgr image
    circle(img_bgr, Point2f(ball.getPixelPosition().x,ball.getPixelPosition().y), 2, Scalar(0,0,255),2,4);

    //Draw text of diameter
    int fontFace = FONT_HERSHEY_SIMPLEX;
    double fontScale = 1;
    int thickness = 3;
    int baseline = 0;
    Size textSize = getTextSize(s, fontFace,	fontScale, thickness, &baseline);
    baseline += thickness;
    Point textOrg(10 , img_bgr.rows - textSize.height - 10);
    putText(img_bgr, s, textOrg, fontFace, fontScale, Scalar::all(255), thickness, 8);

    //Display images
    imshow("Frame1", img_bgr);

    //Send ros message
    //Build message
    pingpong::Kinematics ball_msg;
    ball_msg.position.x = -filteredPosition.x;
    ball_msg.position.y = filteredPosition.z+0.2;
    ball_msg.position.z = filteredPosition.y+0.26;
    ball_msg.velocity.x = -filteredVelocity.x;
    ball_msg.velocity.y = filteredVelocity.z;
    ball_msg.velocity.z = filteredVelocity.y;
    ball_msg.acceleration.x = 0;
    ball_msg.acceleration.y = 0;
    ball_msg.acceleration.z = 0;
    ball_msg.controlled = ball.getControlled();
    //Publish message
    pub_ball.publish(ball_msg);
    //Thread once to publish the message
    ros::spinOnce();

  }


  //End
  vc.release();
  destroyAllWindows();

  ros::shutdown();
  return 0;
}

//Configuration for blob detector
SimpleBlobDetector::Params configBlobDetector() {
  // Setup SimpleBlobDetector parameters.
  SimpleBlobDetector::Params params;

  // Change thresholds
  params.minThreshold = 10;
  params.maxThreshold = 60;
  params.thresholdStep = 10;

  // Filter by Area.
  params.filterByArea = true;
  params.minArea = 30;
  params.maxArea = 500;

  // Filter by Circularity
  params.filterByCircularity = true;
  params.minCircularity = 0.4f;

  // Filter by Convexity
  params.filterByConvexity = true;
  params.minConvexity = 0.87f;

  // Filter by Inertia
  params.filterByInertia = true;
  params.minInertiaRatio = 0.3f;

  //Repeatability
  params.minRepeatability = 2;

  return params;
}

//Display on console values of xy pixel
void CallBackFunc(int event, int x, int y, int flags, void* userdata) {
  if (event == EVENT_LBUTTONDOWN) {
    //cout << "Position (" << x << ", " << y << ")" << endl;
    cout << "Luv = (" << (int)(img_luv.at<Vec3b>(y, x)[0]);
    cout << ", " << (int)(img_luv.at<Vec3b>(y, x)[1]);
    cout << ", " << (int)(img_luv.at<Vec3b>(y, x)[2]) << ")." << endl;
  }
}


//Return a color difference grayscale image
Mat colorDifferenceImage(Mat orig, Scalar color) {
  Mat img_difference;
  absdiff(orig, color, img_difference); //Absolute value of subtraction of color and the original image
  img_difference.convertTo(img_difference, CV_32F); //Convert to float
  Mat luv[3]; split(img_difference, luv); //Split to three channels
  for(int i = 1; i < 3; i ++) multiply(luv[i], luv[i], luv[i]);
  Mat dist = luv[1] + luv[2]; sqrt(dist, dist); // Euclidean distance to color
  dist.convertTo(dist, CV_8U); //Back to int
  return dist;
}

//Return the average position of x frames
Point3f averagePosition(deque<Ball> arr, int avFrames) {
  Point3f pt(0,0,0);
  for (int i = (int)arr.size()-avFrames; i < arr.size(); i++) {
    pt += arr[i].getPosition();
  }
  pt *= 1.f/avFrames;
  return pt;
}

//Return the average velocity of x frames
Point3f averageVelocity(deque<Ball> arr, int avFrames) {
  Point3f pt(0,0,0);
  for (int i = (int)arr.size()-avFrames; i < arr.size(); i++) {
    pt += arr[i].getVelocity();
  }
  pt *= 1.f/avFrames;
  if (sqrt(pt.x*pt.x + pt.y*pt.y + pt.z*pt.z)< 0.05) return Point3f(0, 0,0);
  return pt;
}

//Return the average acceleration of avFrames frames
Point3f averageAcceleration(deque<Ball> arr, int avFrames) {
  Point3f pt(0,0,0);
  for (int i = (int)arr.size() - avFrames; i < arr.size(); i++) {
    pt += arr[i].getAcceleration();
  }
  pt *= 1.f/avFrames;
  if (pt.x*pt.x + pt.y*pt.y + pt.z*pt.z< 0.5) return Point3f(0, 0,0);
  return pt;
}
