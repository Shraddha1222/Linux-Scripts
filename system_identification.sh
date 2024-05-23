#!/bin/bash

# Get the current hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# Get the IP address of the system
ip_address=$(ip -o -4 addr show | grep -E 'scope global' | awk '{print $4}' | sed 's/\/.*//')
echo "IP Address: $ip_address"

# Get the gateway IP address
gateway_ip=$(ip route | grep default | awk '{print $3}')
echo "Gateway IP: $gateway_ip"
