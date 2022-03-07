#!/bin/bash

echo "Waiting for \"rosbot\" host to be available in /etc/hosts"

while [[ $(grep 'rosbot' /etc/hosts | wc -l) -eq 0 ]]; do 
    sleep 1
done

sleep 2

echo "\"rosbot\" present in /etc/hosts:"

# print the IPv6 address of the Discovery Server
grep 'rosbot' /etc/hosts

echo "Ready to launch ROS 2 nodes"