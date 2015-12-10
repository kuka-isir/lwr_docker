#!/bin/bash
./stop.sh
xhost +
docker run \
	--name="lwr-kinect-vision-no-gpu" \
	-it \
	--env="DISPLAY" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --device /dev/bus/usb:/dev/bus/usb:rwm \
        --device /dev/dri:/dev/dri:rwm \
	kukaisir/lwr_docker:kinect-vision-no-gpu
