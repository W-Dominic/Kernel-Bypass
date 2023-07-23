#!/bin/sh

# prevent iptables from interfering with packets during our experiment
# commands do not persist

# ensure packets are let through 
iptables -I INPUT 1 -p udp -dp 1337 -j ACCEPT
# prevents tracking for these packets
iptables -t raw -I PREROUTING 1 -p udp -dp 1337 -j NOTRACK 
