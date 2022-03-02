FROM ros:galactic-ros-core

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
    ros-$ROS_DISTRO-rviz2 \
    ros-$ROS_DISTRO-nav2-rviz-plugins \
    rm -rf /var/lib/apt/lists/*

WORKDIR /ros2_ws

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]