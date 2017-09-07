#!/bin/bash
# Go to starting point

# Turn 180 degrees
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.8, right: 0.8}'

# Drive forward sufficiently to pass the bouys
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'

# Turn right
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.4, right: -0.4}'

# Drive to center of bouys (but still behind line)
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'

# Turn right (now facing the travel path)
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.4, right: -0.4}'

# Back up to ensure we hit top speed before starting line
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1, right: -1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1, right: -1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1, right: -1}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1, right: -1}'

# Zoom forward with full speed without stopping after 3 seconds
rostopic pub -r 10 \cmd_drive kingfisher_msgs/Drive  '{left: 1, right: 1}'


