# lwr_docker
Docker images for the applications developed for the Kuka LWR4+

https://hub.docker.com/r/kukaisir/lwr_docker/

## With Nvidia GPU (nvidia-352)
#### lwr-minimal [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_minimal)](https://travis-ci.org/kuka-isir/lwr_docker)
#### kinect-vision [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_kinect_vision)](https://travis-ci.org/kuka-isir/lwr_docker)
#### kinect2-vision [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_kinect2_vision)](https://travis-ci.org/kuka-isir/lwr_docker)

## With Intel GPU
#### lwr-minimal-no-gpu [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_minimal_no_gpu)](https://travis-ci.org/kuka-isir/lwr_docker)
#### kinect-vision-no-gpu [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_kinect_vision_no_gpu)](https://travis-ci.org/kuka-isir/lwr_docker)
#### kinect2-vision-no-gpu [![Build Status](https://travis-ci.org/kuka-isir/lwr_docker.svg?branch=build_kinect2_vision_no_gpu)](https://travis-ci.org/kuka-isir/lwr_docker)

## What is this ?
The build_minimal (build_minimal_no_gpu) branch contains all the current development for the KUKA LWR4+ made in our lab

The build_kinect_vision (build_kinect_vision_no_gpu) branch extends the build_minimal branch. It contains also all the perception code developped for our applications using the LWR4+

The build_kinect2_vision (build_kinect2_vision_no_gpu) also installs libfreenect2 to be able to use the Microsoft KinectV2

## How to use the docker images ?
First make sure you installed docker properly, and created a docker group with sudo permissions. If not follow this tutorial: https://docs.docker.com/engine/installation/ubuntulinux/

Choose which branch you need, go to its specific folder, and simply do: `./run.sh`

You can make some changes to the `Dockerfile` if you want. Then you just have to launch `./build.sh` to try build your new container
