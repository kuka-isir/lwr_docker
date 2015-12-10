FROM kukaisir/lwr_docker:lwr-minimal-no-gpu
MAINTAINER Jimmy Da Silva jimmy.dasilva@isir.upmc.fr

# Installation script
COPY vision_setup /sbin/vision_install
RUN sudo chmod +x /sbin/vision_install ; sudo chown ros /sbin/vision_install ; sync ; sudo -H -u ros bash -c /sbin/vision_install ; sudo rm /sbin/vision_install

# Change .bashrc
COPY update_bashrc /sbin/update_bashrc
RUN sudo chmod +x /sbin/update_bashrc ; sudo chown ros /sbin/update_bashrc ; sync ; /bin/bash -c /sbin/update_bashrc ; sudo rm /sbin/update_bashrc

# Change entrypoint to source ~/.bashrc and start in ~
COPY entrypoint.sh /ros_entrypoint.sh
RUN sudo chmod +x /ros_entrypoint.sh ; sudo chown ros /ros_entrypoint.sh ; 

# Clean image
RUN sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
