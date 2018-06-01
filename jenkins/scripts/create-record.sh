#!/bin/sh
EMAIL=$1
IP=$2
URL=$3
TOKEN=$4
ZONE_ID=$5


curl -X POST "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records" \
     -H "X-Auth-Email: $EMAIL" \
     -H "X-Auth-Key: $TOKEN" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'$URL'","content":"'$IP'","ttl":1,"priority":10,"proxied":false}'
