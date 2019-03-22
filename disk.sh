#!/bin/bash
temp=`df -h |grep '/dev/mapper/vg_cpanel-lv_root' | head -1 |awk '{print $5}' | sed 's/\%//g'`;
if (($temp > 90)); then
printf "Warning: Disk space running out. Check your mail for more information.\n";
printf "Warning: Disk Usage Above 90%%\n\
Current disk usage: $temp%%\n\
Remove unecessary files soon\n\
Take action soon\n" | mail -s "Disk space critical in `hostname`" info@adminbirds.com;
fi

