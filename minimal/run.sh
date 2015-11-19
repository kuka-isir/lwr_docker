#!/bin/bash
./stop.sh
xhost +
docker run \
	--name="lwr-minimal" \
	-it \
	--env="DISPLAY" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --device /dev/nvidia0:/dev/nvidia0 \
        --device /dev/nvidiactl:/dev/nvidiactl \
        --device /dev/bus/usb:/dev/bus/usb:rwm \
	kukaisir/lwr_docker:lwr-minimal
