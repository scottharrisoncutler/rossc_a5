#!/bin/bash
# Go to (5,0) and turn
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.7, right: 0.7}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.6, right: 0.6}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.4, right: 0.4}'

# Go to (5,5) and turn
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.7, right: 0.7}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.6, right: 0.6}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.4, right: 0.4}'

# Go to (0,5) and turn
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.7, right: 0.7}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.6, right: 0.6}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.4, right: 0.4}'

# Go to (0,0)
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.7, right: 0.7}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.5, right: 0.5}'
