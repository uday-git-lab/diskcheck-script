#!/bin/bash
temp=`df -h |grep "/dev/simfs"|awk {'print $5'}`
if (( $temp > 5 )); then
echo "Disk full"
fi

