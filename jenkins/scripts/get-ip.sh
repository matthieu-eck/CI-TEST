#!/usr/bin/env sh
ip=$(ifconfig  |  grep 'inet' | cut -d: -f1 | awk '{print $2}' | head -n 1)
echo "IP is $ip"
