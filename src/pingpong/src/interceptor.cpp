#include "ros/ros.h"
#include <moveit/move_group_interface/move_group.h>
#include <kinova_driver/kinova_ros_types.h>
#include "std_msgs/String.h"
#include "opencv2/opencv.hpp"
#include "pingpong/Kinematics.h"
#include "ball.h"
#include <math.h>
#include "std_msgs/Bool.h"

//Global variables
tf::Pose robotPose;
tf::Pose fakeRobot;
Ball ball;

//Function declarations
void robotPoseCallback(const geometry_msgs::Pose::ConstPtr& msg);
void ballKinematicsCallback(const pingpong::Kinematics::ConstPtr& msg);
void fakeRobotCallback(const geometry_msgs::Pose::ConstPtr& msg);
tf::Vector3 predictPosition(float t);
float advantage(tf::Vector3 r, float v, float t);
tf::Vector3 intercept(tf::Vector3 r, float v);
tf::Quaternion heading2Quaternion(tf::Vector3 v);
bool poseInRange(tf::Vector3 p);
bool ballCatched();

//Constants
const float robotMinReach = 0.5;
const float robotMaxReach = 0.9;
const tf::Vector3 robotOrigin(0,0,0.26);

using namespace std;

int main(int argc, char **argv)
{

  //Initialize ros
  ros::init(argc, argv, "interceptor");
  ros::NodeHandle nh;
  ros::AsyncSpinner spinner(1);
  spinner.start();

  /* This sleep is ONLY to allow Rviz to come up */
  sleep(10.0);

  //Subscribers
  ros::Subscriber sub_robot = nh.subscribe("currentRobotPose",1,robotPoseCallback);
  ros::Subscriber sub_ball = nh.subscribe("ballKinematics",1,ballKinematicsCallback);
  ros::Subscriber sub_fakeRobot = nh.subscribe("fakeRobotPose",1,fakeRobotCallback);
  //Publishers
  ros::Publisher pub_intercept = nh.advertise<geometry_msgs::Pose>("goalRobotPose",1);
  ros::Publisher pub_gripper = nh.advertise<std_msgs::Bool>("goalGripper",1);


  ROS_INFO("READY TO INTERCEPT");
  //Loop rate
  ros::Rate loop_rate(24);

  //Home pose
  tf::Pose home;
  home.setOrigin(tf::Vector3(0, 0.5, 0.26));
  home.setRotation(heading2Quaternion(tf::Vector3(0,1,0)));

  //Pose where the robot needs to be to intercept the ball
  geometry_msgs::Pose target_pose;

  //Initialize
  fakeRobot.setOrigin(home.getOrigin());
  fakeRobot.setRotation(home.getRotation());

  robotPose.setOrigin(home.getOrigin());
  robotPose.setRotation(home.getRotation());

  ball.setPosition(cv::Point3f(0, 0.5, 0.26));
  ball.setVelocity(cv::Point3f(0,0,0));
  ball.setAcceleration(cv::Point3f(0,0,0));
  ball.setControlled(false);

  //Interceptions
  deque<tf::Vector3> interceptions(3,home.getOrigin());
  tf::Vector3 interception;

  while(ros::ok()){

    tf::Pose interceptPose;

    if(ball.getControlled()){
      //Interception
      interception = intercept(robotPose.getOrigin(),0.02f);
      if (!isnan(interception.x()) && !isnan(interception.y()) && !isnan(interception.z()) && !isinf(interception.x()) && !isinf(interception.y()) && !isinf(interception.z()) && poseInRange(interception)) {
        interceptions.push_back(interception);
        interceptions.pop_front();
      }
      //Low pass filter for interception point
      tf::Vector3 interceptionAverage(0,0,0);
      for(int i = 0; i < interceptions.size(); i ++){
        interceptionAverage += interceptions[i];
      }
      interceptionAverage /= (float)interceptions.size();
      interceptPose.setOrigin(interceptionAverage);
      interceptPose.setRotation(home.getRotation());
      if(ballCatched()){
        std_msgs::Bool g;
        g.data = true;
        pub_gripper.publish(g);
      }
    }else{
      interceptPose.setOrigin(home.getOrigin());
      interceptPose.setRotation(home.getRotation());
      interceptions.push_back(home.getOrigin());
      interceptions.pop_front();
    }


    //Send message
    tf::poseTFToMsg(interceptPose, target_pose);
    pub_intercept.publish(target_pose);

    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::shutdown();
  return 0;
}

//Predict where will the ball be at time t according to its present kinematics
tf::Vector3 predictPosition(float t){
  float xf = ball.getPosition().x + ball.getVelocity().x*t + 1.f/2.f*ball.getAcceleration().x*pow(t, 2);
  float yf = ball.getPosition().y + ball.getVelocity().y*t + 1.f/2.f*ball.getAcceleration().y*pow(t, 2);
  float zf = ball.getPosition().z + ball.getVelocity().z*t + 1.f/2.f*ball.getAcceleration().z*pow(t, 2);
  return tf::Vector3(xf,yf,zf);
}

//Compute the advantage of the robot r with velocity v at time t in comparisson of the ball
float advantage(tf::Vector3 r, float v, float t){
  tf::Vector3 p = predictPosition(t);
  float distance = sqrt(pow(p.x()-r.x(),2) + pow(p.y()-r.y(),2) + pow(p.z()-r.z(),2));
  return t-distance/v;
}

//Intercept the ball from the robot r with a given velocity v
tf::Vector3 intercept(tf::Vector3 r, float v){
  float ti = 1;
  float ti_minus1 = 0;
  float ti_plus1 = 0;
  float error = 1;
  int maxIter = 20;

  while(error>0.1 && maxIter > 0){
    ti_plus1 = ti - advantage(r,v,ti)*(ti_minus1-ti)/(advantage(r,v,ti_minus1)-advantage(r,v,ti));
    ti_minus1 = ti;
    ti = ti_plus1;
    error = (ti-ti_minus1)/ti * 100;
    maxIter--;
  }

  tf::Vector3 prediction = predictPosition(ti);
  return prediction;
}

//Recieve robot arm current pose
void robotPoseCallback(const geometry_msgs::Pose::ConstPtr& msg){
  robotPose.setOrigin(tf::Vector3(msg->position.x,msg->position.y,msg->position.z));
  robotPose.setRotation(tf::Quaternion(msg->orientation.x, msg->orientation.y, msg->orientation.z, msg->orientation.w));
}

//Recieve current fake robot current pose
void fakeRobotCallback(const geometry_msgs::Pose::ConstPtr& msg){
  fakeRobot.setOrigin(tf::Vector3(msg->position.x,msg->position.y,msg->position.z));
}

//Recieve current ball position, velocity and acceleration
void ballKinematicsCallback(const pingpong::Kinematics::ConstPtr& msg){
  ball.setPosition(cv::Point3f(msg->position.x,msg->position.y,msg->position.z));
  ball.setVelocity(cv::Point3f(msg->velocity.x, msg->velocity.y, msg -> velocity.z));
  ball.setAcceleration(cv::Point3f(msg->acceleration.x, msg->acceleration.y, msg->acceleration.z));
  ball.setControlled(msg->controlled);
}

//Determine euler angles according to heading vector. Third angle does not matter.
tf::Vector3 heading2Euler(float x, float y, float z){
  float eulerX = atan2(-y,z);
  float eulerY = asin(x);
  return tf::Vector3(eulerX,eulerY,0);
}

//Determine quaternion according to heading vector.
tf::Quaternion heading2Quaternion(tf::Vector3 v){
  tf::Vector3 e = heading2Euler(v.getX(),v.getY(),v.getZ());
  return kinova::EulerXYZ2Quaternion(e.getX(), e.getY(), e.getZ());
}

//Determine if the ball is in range
bool poseInRange(tf::Vector3 p){
  float dx = p.getX() - robotOrigin.getX();
  float dy = p.getY() - robotOrigin.getY();
  float dz = p.getZ()- robotOrigin.getZ();
  float d = sqrt(dx*dx+dy*dy+dz*dz);
  return d<robotMaxReach && d>robotMinReach;
}

//Determine if the robot has catched the ball
bool ballCatched(){
  float dx = ball.getPosition().x - robotPose.getOrigin().getX();
  float dy = ball.getPosition().y - robotPose.getOrigin().getY();
  float dz = ball.getPosition().z - robotPose.getOrigin().getZ();
  float d = sqrt(dx*dx+dy*dy+dz*dz);
  return d < 0.05;
}
