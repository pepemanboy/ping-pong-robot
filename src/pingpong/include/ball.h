#ifndef BALL_H
#define BALL_H

/**
Ball class
**/

#include <opencv2/opencv.hpp>

const float focalLength = 272;
const float ballDiameter = 0.04;
const int res_width = 640;
const int res_height = 480;

class Ball {
  cv::Point3f position;
  cv::Point3f pixelPosition;
  cv::Point3f velocity;
  cv::Point3f acceleration;
  bool controlled;
public:
  Ball(void);
  Ball(cv::Point3f);
  Ball(cv::Point3f, cv::Point3f);
  Ball(cv::Point3f, cv::Point3f, cv::Point3f);
  cv::Point3f getPosition();
  cv::Point3f getPixelPosition();
  cv::Point3f getVelocity();
  cv::Point3f getAcceleration();
  bool getControlled();
  void setPosition(cv::Point3f);
  void setVelocity(cv::Point3f);
  void setAcceleration(cv::Point3f);
  void setPixelPosition(cv::Point3f);
  void setControlled(bool c);
  void pixelToXYZ();
  void XYZToPixel();
};

Ball::Ball(void) {
  position = cv::Point3f(0, 0,0);
  velocity = cv::Point3f(0, 0,0);
  acceleration = cv::Point3f(0, 0, 0);
  pixelPosition = cv::Point3f(0,0,0);
  controlled = false;
}

Ball::Ball(cv::Point3f p) {
  position = p;
  velocity = cv::Point3f(0, 0,0);
  acceleration = cv::Point3f(0,0,0);
  pixelPosition = cv::Point3f(0,0,0);
  controlled = false;
}

Ball::Ball(cv::Point3f p, cv::Point3f v) {
  position = p;
  velocity = v;
  acceleration = cv::Point3f(0, 0,0);
  pixelPosition = cv::Point3f(0,0,0);
  controlled = false;
}

Ball::Ball(cv::Point3f p, cv::Point3f v, cv::Point3f a) {
  position = p;
  velocity = v;
  acceleration = a;
  pixelPosition = cv::Point3f(0,0,0);
  controlled = false;
}

cv::Point3f Ball::getPosition() {
  return position;
}

cv::Point3f Ball::getVelocity() {
  return velocity;
}

cv::Point3f Ball::getAcceleration() {
  return acceleration;
}

cv::Point3f Ball::getPixelPosition(){
  return pixelPosition;
}

void Ball::setPosition(cv::Point3f p) {
  position = p;
  XYZToPixel();
}

void Ball::setVelocity(cv::Point3f v) {
  velocity = v;
}

void Ball::setAcceleration(cv::Point3f a) {
  acceleration = a;
}

void Ball::setPixelPosition(cv::Point3f p){
  pixelPosition = p;
  pixelToXYZ();
}

void Ball::setControlled(bool c){
  controlled = c;
}

bool Ball::getControlled(){
  return controlled;
}

void Ball::pixelToXYZ(){
  if(pixelPosition.z < 3) pixelPosition.z = 3;
  float z = ballDiameter*focalLength/pixelPosition.z;
  float x = z*(pixelPosition.x-res_width/2)/focalLength;
  float y = -z*(pixelPosition.y-res_height/2)/focalLength;
  position = cv::Point3f(x,y,z);
}

void Ball::XYZToPixel(){
  float px = (position.x*focalLength)/position.z + res_width/2;
  float py = res_height/2 - (position.y*focalLength)/position.z;
  pixelPosition = cv::Point3f(px,py,1);
}

#endif // BALL_H
