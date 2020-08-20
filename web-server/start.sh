#!/bin/bash

# Default Route to PGW-SGW
ip route del default
ip route add default via 10.0.4.5
 
ethtool -K eth0 tso off
ethtool --offload eth0 rx off tx off

nginx -g "daemon off;"
