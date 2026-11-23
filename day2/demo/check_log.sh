#!/bin/bash
file="app.log"
if [ -f "$file" ];then
    echo "开始统计500相关日志"
    grep "SERVER_ERR" $file
else
    echo "日志文件缺失"
fi
