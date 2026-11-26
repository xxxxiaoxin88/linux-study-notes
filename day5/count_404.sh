#!/bin/bash
LOG="/var/log/nginx/access.log"
if [ ! -f "$LOG" ];then
echo "log item is not exit"
exit 1
fi
cnt=$(grep "404" $LOG | wc -l)
echo "the total of 404:$cnt"
