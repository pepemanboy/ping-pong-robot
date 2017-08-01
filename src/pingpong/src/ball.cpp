#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <moveit/move_group_interface/move_group.h>
#include <pingpong/Kinematics.h>

void ballCallback(const pingpong::Kinematics::ConstPtr& msg);

//Global variables
tf::Pose g_pose;
bool controlledBall = false;
bool newMessage = false;

//Constants
float fps = 100;

int main( int argc, char** argv )
{
  ros::init(argc, argv, "ball");
  ros::NodeHandle nh;
  ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>("visualization_marker", 1);

  /* This sleep is ONLY to allow Rviz to come up */
  sleep(10.0);

  //Marker
  visualization_msgs::Marker marker;

  //Frame id
  marker.header.frame_id = "root";

  //Namespace and id (to override past same objects)
  marker.ns = "ball";
  marker.id = 0;

  //Marker sphere
  marker.type = visualization_msgs::Marker::SPHERE;

  //Action is to add marker
  marker.action = visualization_msgs::Marker::ADD;

  //Size of the ping pong ball
  marker.scale.x = 0.04;
  marker.scale.y = 0.04;
  marker.scale.z = 0.04;

  //Ping pong ball yellow color
  marker.color.r = 1.0f;
  marker.color.g = 1.0f;
  marker.color.b = 0.0f;
  marker.color.a = 1.0;

  //Marker lifetime
  marker.lifetime = ros::Duration(1);

  //Initial pose
  g_pose.setOrigin(tf::Vector3(1,1,1));

  //Subscribe to messages
  ros::Subscriber sub = nh.subscribe("ballKinematics", 1, ballCallback);

  //Loop rate
  ros::Rate loop_rate(fps);

  //Ready to recieve ball info
  ROS_INFO("READY. SEND BALL POSES :)");
  while (ros::ok())
  {
    if(newMessage && controlledBall){
      //Update marker's position
      marker.pose.position.x = g_pose.getOrigin().getX();
      marker.pose.position.y = g_pose.getOrigin().getY();
      marker.pose.position.z = g_pose.getOrigin().getZ();

      //Marker header time stamp
      marker.header.stamp = ros::Time::now();
      //Publish marker
      marker_pub.publish(marker);
      newMessage = false;
    }

    //Check for messages
    ros::spinOnce();
    loop_rate.sleep();
  }
  ros::shutdown();
  return 0;
}

void ballCallback(const pingpong::Kinematics::ConstPtr& msg){
  g_pose.setOrigin(tf::Vector3(msg->position.x,msg->position.y,msg->position.z));
  controlledBall = msg->controlled;
  newMessage = true;
}
