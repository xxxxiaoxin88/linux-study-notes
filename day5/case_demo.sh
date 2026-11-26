#!/bin/bash
read -p "输入 start / stop / status: " op
case $op in
start)
echo "server start"
;;
stop)
echo "server stop"
;;
status)
echo "look status"
;;
*)
echo "unknown behavor"
;;
esac
