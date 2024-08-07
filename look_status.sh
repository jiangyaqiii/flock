#!/bin/bash

PROCESS_NAME="llm-loss-validator"

# 获取进程状态
status=$(pm2 list | grep "$PROCESS_NAME" | awk '{print $5}')

if [ "$status" == "online" ]; then
    echo "$PROCESS_NAME is running."
else
    echo "$PROCESS_NAME is not running."
fi
