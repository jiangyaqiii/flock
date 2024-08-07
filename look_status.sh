#!/bin/bash

PROCESS_NAME="llm-loss-validator"

# 获取进程状态
status=$(pm2 list | grep "$PROCESS_NAME" | awk '{print $18}')

if [ "$status" == "online" ]; then
    echo "运行中"
else
    echo "停止"
fi
