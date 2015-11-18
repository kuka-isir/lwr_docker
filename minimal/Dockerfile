FROM osrf/ros:indigo-desktop-full
MAINTAINER Jimmy Da Silva jimmy.dasilva@isir.upmc.fr

# Install additionnal useful packages
RUN apt-get update && apt-get install -y \
    bash-completion \
    build-essential \
    git \
    python-rosinstall \
    tmux \
    vim \
    wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Now create the ros user itself
RUN adduser --gecos "ROS User" --disabled-password ros
RUN usermod -a -G dialout ros
ADD 99_aptget /etc/sudoers.d/99_aptget
RUN chmod 0440 /etc/sudoers.d/99_aptget && chown root:root /etc/sudoers.d/99_aptget

# Choose to run as user
USER ros

# Change HOME environment variable
ENV HOME=/home/ros

# Installation script
COPY lwr_setup /sbin/lwr_install
RUN sudo chmod +x /sbin/lwr_install ; sudo chown ros /sbin/lwr_install ; sync ; sudo -H -u ros bash -c /sbin/lwr_install ; sudo rm /sbin/lwr_install

# Change .bashrc
COPY update_bashrc /sbin/update_bashrc
RUN sudo chmod +x /sbin/update_bashrc ; sudo chown ros /sbin/update_bashrc ; sync ; /bin/bash -c /sbin/update_bashrc ; sudo rm /sbin/update_bashrc

# Change entrypoint to source ~/.bashrc and start in ~
COPY entrypoint.sh /ros_entrypoint.sh
RUN sudo chmod +x /ros_entrypoint.sh ; sudo chown ros /ros_entrypoint.sh ; 

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
