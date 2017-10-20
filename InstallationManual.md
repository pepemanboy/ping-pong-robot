**Development tools installation manual**

This manual contains information on how to install and setup Ubuntu, ROS, and other libraries on a computer, needed for the project. I have tested this guide in a new computer after writing it and it worked well. Alongside some elements, I put a link to the tutorial that I used to learn how to use that. It is not mandatory to follow them for a proper installation.

**1. Install Ubuntu**

Download Ubuntu 14.04 Trusty 32 bits (it needs to be 14.04). [https://www.ubuntu.com/download/desktop](https://www.ubuntu.com/download/desktop).

For Windows, follow this guide to install alongside [https://www.tecmint.com/install-ubuntu-16-04-alongside-with-windows-10-or-8-in-dual-boot/](https://www.tecmint.com/install-ubuntu-16-04-alongside-with-windows-10-or-8-in-dual-boot/)

For Mac, follow this guide [https://www.howtogeek.com/187410/how-to-install-and-dual-boot-linux-on-a-mac/](https://www.howtogeek.com/187410/how-to-install-and-dual-boot-linux-on-a-mac/)

Only if you are at Polytechnique Montreal, or any institute with eduroam, you will not be able to connect to the internet during the installation. It&#39;s ok. After installation, using other PC, follow this guide to connect to eduroam on your new Ubuntu installation. [http://www.polymtl.ca/si/service/portables/accesReseau/doc/Ubuntu12\_04\_eduroam\_g2.pdf](http://www.polymtl.ca/si/service/portables/accesReseau/doc/Ubuntu12_04_eduroam_g2.pdf)

Open the terminal and run to install the updates that weren&#39;t installed during installation.
```
sudo apt-get update

sudo apt-get upgrade
```
If you do not know how to use Linux command line, follow this tutorial (from 1:20:00 to 2:30:00)_ [_https://www.youtube.com/watch?v=wBp0Rb-ZJak_](https://www.youtube.com/watch?v=wBp0Rb-ZJak)

**2. Install latest version of CMake (to build ROS packages)**
```
sudo apt-get install software-properties-common

sudo add-apt-repository ppa:george-edison55/cmake-3.x

sudo apt-get update

sudo apt-get install cmake

sudo apt-get upgrade
```
**3. Install Catkin (to build ROS packages)**
```
sudo apt-get install python-catkin-tools
```
**4. Install git (for version control and to obtain projects on github)**
```
sudo apt-get update

sudo apt-get install git
```
**5. Install ROS Indigo (it needs to be Indigo)**

Use this installation guide [http://wiki.ros.org/indigo/Installation/Ubuntu](http://wiki.ros.org/indigo/Installation/Ubuntu)

_Follow this tutorials to learn ROS:_ [_http://wiki.ros.org/ROS/Tutorials_](http://wiki.ros.org/ROS/Tutorials)


**6. Install gcc 4.9**

Run the following lines on command line:

```
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-4.9 g++-4.9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9
```
**7. Install Qt and Qt Creator (IDE) and plugins for ROS**

Download the latest source of Qt from here:

[https://www.qt.io/download-open-source/](https://www.qt.io/download-open-source/)

Be careful, there are many options. Be sure to select this one (Qt offline installer)

(image)

Move the .tar.xz that you just downloaded to /tmp/ folder.

Extract it using this line (change the .tar.gz name appropriately)
```
tar xf the-thing-that-you-downloaded.tar.gz
```
Configure the installation using this lines:
```
cd /tmp/the-thing-that-you-downloaded

./configure
```
Create library using this lines:
```
make -j8

make install
```
Edit environment variables:

Go to home folder (cd ~) and edit .profile (nano .profile)

At the bottom of the file, add these lines (change the qt version for the one you installed):
```
PATH=/usr/local/Qt-VERSION/bin:$PATH

export PATH
```
Go to home folder (cd ~) and edit .bashrc (nano .bashrc)

At the bottom of the file, add these lines (change the qt version for the one you installed):
```
PATH=/usr/local/Qt-VERSION/bin:$PATH

export PATH
```
Close the current terminal and open a new one.

Change your current folder to git (cd ~/git) or create it if it is not there (mkdir ~/git) and then change it.

Follow this installation manual for qt creator: [https://wiki.qt.io/Building\_Qt\_Creator\_from\_Git](https://wiki.qt.io/Building_Qt_Creator_from_Git) (just at the end, use sudo: sudo make install INSTALL\_ROOT=$INSTALL\_DIRECTORY)

Every time you run qtcreator, make sure to run it from the terminal, so that environment variables are loaded. If you want to launch it from the desktop icon, follow these instructions: [http://wiki.ros.org/IDEs#QtCreator](http://wiki.ros.org/IDEs#QtCreator)

To install qtcreator plugins for ROS, follow this manual, including section 1.5 [https://github.com/ros-industrial/ros\_qtc\_plugin/wiki/1.-How-to-Install-(Users)](https://github.com/ros-industrial/ros_qtc_plugin/wiki/1.-How-to-Install-(Users))

**8. Install Gazebo**

Run the following commands on Ubuntu terminal.
```
sudo apt-get install ros-indigo-gazebo-ros\*

sudo apt-get install ros-indigo-gazebo-ros-control
sudo apt-get install ros-indigo-ros-controllers\*
```
_Tutorials of Gazebo available here:_ [_http://gazebosim.org/tutorials/browse_](http://gazebosim.org/tutorials/browse)

_Tutorials of Gazebo integration with ROS available here:_ [_http://gazebosim.org/tutorials?cat=connect\_ros_](http://gazebosim.org/tutorials?cat=connect_ros)

**9. Install MoveIt! for inverse kinematics solving.**

Run the following commands on Ubuntu terminal:
```
sudo apt-get install ros-indigo-moveit

sudo apt-get install ros-indigo-trac-ik
```
_Follow these tutorials to learn how to use MoveIt:_

[_http://docs.ros.org/indigo/api/moveit\_tutorials/html/doc/setup\_assistant/setup\_assistant\_tutorial.html_](http://docs.ros.org/indigo/api/moveit_tutorials/html/doc/setup_assistant/setup_assistant_tutorial.html)

**10. Install opencv for ROS**
```
sudo apt-get install ros-indigo-cv-bridge
```
**11. Get project**

I put all the necessary files to run the project on a github repo

[https://github.com/pepemanboy/ping-pong-robot.git](https://github.com/pepemanboy/ping-pong-robot.git)

Run the following lines
```
cd ~
mkdir /melendez_ws
cd melendez_ws
git clone [https://github.com/pepemanboy/ping-pong-robot.git](https://github.com/pepemanboy/ping-pong-robot.git)
```

**12. Setup your workspace**
IMPORTANT HERE. The folder you downloaded contains build and devel folders, as well as other makefiles that are specific to my system. (Will bring them down the github repo when i back them up somewhere else) So, the only folder that concerns you is melendez_ws/src.

Go to your home directory and create a folder with your name that will be your workspace. For example: ~/catherine_ws

Move melendez_ws/src to ~/catherine_ws/src

Now you have your sources set in a ros workspace called catherine_ws.

Open a terminal and cd to catherine_ws.

Now, type

```
catkin_make
```

This should build the sources. It takes like 2-5 minutes.

Now the package is correctly setup.

***13. Running demo***
For ROS to be able to locate your workspace, everytime you want to work with it, open a terminal and type:

```
source ~/catherine_ws/devel/setup.bash
```

This will make your package available only for the current session (terminal). More on that on ROS tutorials.

Now you can ```rospack find pingpong```, and will print the location of the project.

Finally, to run the demo, run ```roslaunch pingpong demo.launch```

-------
Dont hesitate to contact me! pepe_ciro@hotmail.com

