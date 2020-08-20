#!/bin/bash

#  Default route to eNB
ip route del default
ip route add default via 10.0.0.3

ethtool -K eth0 tso off
ethtool --offload eth0 rx off tx off

curl web-server/100MB.file --output 100MB.file

# Sleep 
sleep infinity
