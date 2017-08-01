#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <kinova_driver/kinova_ros_types.h>
#include <math.h>
#include "std_msgs/Bool.h"

tf::Vector3 heading2Euler(double x, double y, double z);
void robotPoseCallback(const geometry_msgs::Pose::ConstPtr& msg);
void moveToGoal(geometry_msgs::Pose p, moveit::planning_interface::MoveGroup &g);
void gripperCallback(const std_msgs::Bool::ConstPtr& msg);
tf::Quaternion heading2Quaternion(tf::Vector3 v);
bool robotInPosition(tf::Vector3 p);

//Global variables;
tf::Pose g_pose;
tf::Pose currentPose;
tf::Pose previousGoal;
bool newRobotMessage = false;
bool newGripperMessage = false;
bool gripperClosedTarget = false;
bool gripperClosedCurrent = false;

int main(int argc, char **argv)
{

  //Initialize ROS
  ros::init(argc, argv, "robot");
  ros::NodeHandle nh;
  ros::AsyncSpinner spinner(1);
  spinner.start();

  /* This sleep is ONLY to allow Rviz to come up */
  sleep(10.0);

  //Subscribe to messages
  ros::Subscriber sub = nh.subscribe("goalRobotPose", 1, robotPoseCallback);
  ros::Subscriber sub_gripper = nh.subscribe("goalGripper", 1, gripperCallback);
  ros::Publisher pose_pub = nh.advertise<geometry_msgs::Pose>("currentRobotPose",1);

  //Moveit group arm configuration
  moveit::planning_interface::MoveGroup group("arm");
  group.setNumPlanningAttempts(10);

  //Moveit fingers
  moveit::planning_interface::MoveGroup group_fingers("gripper");

  //Home pose
  tf::Pose home;
  home.setOrigin(tf::Vector3(0, 0.5, 0.26));
  home.setRotation(heading2Quaternion(tf::Vector3(0,1,0)));

  //Initialize global variable pose
  g_pose.setOrigin(home.getOrigin());
  g_pose.setRotation(home.getRotation());
  currentPose.setOrigin(home.getOrigin());
  currentPose.setRotation(home.getRotation());

  //Target pose
  geometry_msgs::Pose target_pose;
  tf::poseTFToMsg(g_pose, target_pose);

  //Sleep
  sleep(1);

  //Move to home
  group.setPoseTarget(target_pose);
  group.move();

  //Open fingers
  group_fingers.setNamedTarget("Open");
  group_fingers.move();

  //Loop rate
  ros::Rate loop_rate(1);

  //Ready to recieve a pose
  ROS_INFO("READY. SEND POSES :)");

  while(ros::ok()){
    //When a new message arrives
    if(newRobotMessage){
      //Move to new place
      tf::poseTFToMsg(g_pose, target_pose);
      moveToGoal(target_pose,group);
      //No new message
      newRobotMessage = false;
    }

    //When a new gripper message arrives
    if(newGripperMessage){
      if(gripperClosedTarget && !gripperClosedCurrent){
        group_fingers.setNamedTarget("Close");
        gripperClosedCurrent = true;
        group_fingers.move();

        tf::poseTFToMsg(home,target_pose);
        group.setPoseTarget(target_pose);
        group.move();
      }
      newGripperMessage = false;
    }

    //Check if the robot is in home to open gripper
    if(robotInPosition(home.getOrigin()) && gripperClosedCurrent){
      group_fingers.setNamedTarget("Open");
      group_fingers.move();
      gripperClosedCurrent = false;
    }

    //Current robot pose
    tf::poseMsgToTF(group.getCurrentPose().pose, currentPose);

    //Publish current robot pose
    pose_pub.publish(group.getCurrentPose().pose);

    //Check for messages
    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::shutdown();
  return 0;
}

//Determine euler angles according to heading vector. Third angle does not matter.
tf::Vector3 heading2Euler(double x, double y, double z){
  double eulerX = atan2(-y,z);
  double eulerY = asin(x);
  return tf::Vector3(eulerX,eulerY,0);
}

//Determine quaternion according to heading vector.
tf::Quaternion heading2Quaternion(tf::Vector3 v){
  tf::Vector3 e = heading2Euler(v.getX(),v.getY(),v.getZ());
  return kinova::EulerXYZ2Quaternion(e.getX(), e.getY(), e.getZ());
}

//Move to a pose goal
void moveToGoal(geometry_msgs::Pose p, moveit::planning_interface::MoveGroup &g){
  g.setPoseTarget(p);
  //g.stop();
  g.asyncMove();
}

//What to do when a message is recieved
void robotPoseCallback(const geometry_msgs::Pose::ConstPtr& msg){
  previousGoal = g_pose;
  g_pose.setOrigin(tf::Vector3(msg->position.x,msg->position.y,msg->position.z));
  g_pose.setRotation(tf::Quaternion(msg->orientation.x, msg->orientation.y, msg->orientation.z, msg->orientation.w));
  newRobotMessage = true;
}

//What to do when gripper message is recieved
void gripperCallback(const std_msgs::Bool::ConstPtr& msg){
  gripperClosedTarget = msg->data;
  newGripperMessage = true;
}

//Check if robot is at some place
bool robotInPosition(tf::Vector3 p){
  float dx = currentPose.getOrigin().getX() - p.getX();
  float dy = currentPose.getOrigin().getY() - p.getY();
  float dz = currentPose.getOrigin().getZ() - p.getZ();
  float d = sqrt(dx*dx + dy*dy + dz*dz);
  return d < 0.05;
}
