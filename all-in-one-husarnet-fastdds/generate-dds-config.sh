#!/bin/bash

CONFIG_PATH="./secret"
mkdir -p $CONFIG_PATH

# generate Husarnet ID files
docker run --rm -it husarnet/husarnet:latest husarnet genid > $CONFIG_PATH/id_rosbot
docker run --rm -it husarnet/husarnet:latest husarnet genid > $CONFIG_PATH/id_rviz

# generate dds-config.xml
cp dds-config.template.xml $CONFIG_PATH/dds-config.xml
sed -i "s/rosbot/$(sed -r 's/([a-f0-9:]*)\s.*/\1/g' $CONFIG_PATH/id_rosbot)/g" $CONFIG_PATH/dds-config.xml
sed -i "s/rviz/$(sed -r 's/([a-f0-9:]*)\s.*/\1/g' $CONFIG_PATH/id_rviz)/g" $CONFIG_PATH/dds-config.xml