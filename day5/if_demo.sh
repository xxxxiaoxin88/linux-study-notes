#!/bin/bash
read -p "输入一个数字: " num
if [ $num -gt 80 ];then
echo "greet"
elif [ $num -gt 60 ];then
echo "jige"
else
echo "bujige"
fi
