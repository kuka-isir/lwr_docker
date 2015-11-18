#!/bin/bash
./stop.sh
docker run --name="lwr-minimal" -it kukaisir/lwr_docker:lwr-minimal
