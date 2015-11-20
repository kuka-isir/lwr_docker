#!/bin/bash
xhost -
export DOCK_ID=`docker ps -l | grep kinect-vision | cut -f1 -d" "`
if [ "$DOCK_ID" != "" ]; then
	echo -n 'Stopping container ...'
	docker stop -t 1 $DOCK_ID
fi

export DOCK_ID=`docker ps -l | grep kinect-vision`
#if test x"DOCK_ID" != x; then
if [ "$DOCK_ID" != "" ]; then
	echo -n 'Removing container ...'
	docker rm lwr-kinect-vision
fi
