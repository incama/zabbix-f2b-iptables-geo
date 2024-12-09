#!/bin/bash
/sbin/iptables -L -n | awk '$1=="REJECT" && $4!="0.0.0.0/0"' | awk 'match($0, /[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/) {i[substr($0,RSTART,RLENGTH)]=1}END{for(ip in i){printf("%s\n", ip)}}' > /tmp/iptables.txt
