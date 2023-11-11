#!/bin/bash
size=`df -h | awk 'NR==2 {print$(NF-1)}' | sed 's/%/ /g'`

if [ $size -gt 30 ]
then
  echo "disk has reached threshold value $size" | mail -s "Alert: Disk usage has exceeded the limit" naveennaidu890@gmail.com
fi
