#!/bin/bash
xhost -
export DOCK_ID=`docker ps -l | grep lwr-minimal-no-gpu | cut -f1 -d" "`
if [ "$DOCK_ID" != "" ]; then
	echo -n 'Stopping container ...'
	docker stop -t 1 $DOCK_ID
fi

export DOCK_ID=`docker ps -l | grep lwr-minimal-no-gpu`
if [ "$DOCK_ID" != "" ]; then
	echo -n 'Removing container ...'
	docker rm lwr-minimal-no-gpu
fi
