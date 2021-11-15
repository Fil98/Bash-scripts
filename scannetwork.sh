#!/bin/sh
 
NET=${1}
 
if [ -z ${NET} ]; then
 
echo 'Usage:'
echo ' scan.sh first_3_octets'
echo ''
echo 'Example:'
echo ' scan.sh 192.168.0'
echo ''
 
else
 
echo "Finding hosts in net ${NET}.0/24"
echo ''
echo 'Found hosts:'
for host in `seq 1 254`; do
if (ping -c 3 ${NET}.${host} > /dev/null 2> /dev/null) then
echo ${NET}.${host}
fi
done
 
fi
