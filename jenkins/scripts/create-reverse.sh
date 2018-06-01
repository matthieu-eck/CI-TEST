#!/usr/bin/env sh
ip=$(ip a s |grep eth0| grep 'inet' | cut -d: -f1 | awk '{print $2}' | head -n 1 | cut -d'/' -f1)
container_hostname=$(hostname)
sed "s/@@@@IP@@@@/$ip/g;s/@@@@FQDN@@@@/$1/g;s/@@@@IP@@@@/$ip/g;s/@@@@PORT@@@@/$2/g;" /var/jenkins_home/nginx/template.conf | tee /var/jenkins_home/nginx/reverse.d/$1
