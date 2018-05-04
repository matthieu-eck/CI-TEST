#!/usr/bin/env sh
sed "s/@@@@FQDN@@@@/$1/g;s/@@@@IP@@@@/$2/g;s/@@@@PORT@@@@/$3/g;" /var/jenkins_home/nginx/template.conf | tee /var/jenkins_home/nginx/reverse.d/$1
