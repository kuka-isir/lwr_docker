#!/bin/bash
DOCK_ID=`docker ps | grep lwr-minimal | cut -f1 -d" "`
if test x"DOCK_ID" != x; then
	echo -n 'Stopping container ...'
	docker stop -t 1 $DOCK_ID
fi
DOCK_ID=`docker ps | grep lwr-minimal`
if test x"DOCK_ID" != x; then
	echo -n 'Removing container ...'
	docker rm $DOCK_ID
fi
