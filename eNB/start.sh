#!/bin/bash

ip route del default

# Set MTU of S1-U interface to allow for GTP headers
ifconfig eth1 mtu 1600

# Don't respond destination-unreachable (we will route these packets via the GTP tunnel)
iptables -I OUTPUT -p icmp --icmp-type destination-unreachable -j DROP

# gtp-tunnel --peer 10.0.1.5 --o_teid 12345678 --i_teid 87654321 --filter 'src 10.0.0.2'
gtp-tunnel --peer 10.0.1.5 --o_teid 12345678 --i_teid 87654321 --src_ip 10.0.0.2 --interface eth2

# Sleep 
sleep infinity
