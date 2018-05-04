#!/usr/bin/env sh
ip=$(ifconfig  |  grep 'inet' | cut -d: -f1 | awk '{print $2}' | head -n 1)
sed "s/@@@@FQDN@@@@/$1/g;s/@@@@IP@@@@/$ip/g;s/@@@@PORT@@@@/$2/g;" /var/jenkins_home/nginx/template.conf | tee /var/jenkins_home/nginx/reverse.d/$1
