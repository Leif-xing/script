#!/bin/bash

# 检测2222端口是否开放
netstat -tunl | grep ":2222 " > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    /etc/init.d/ssh restart
else
    echo "2222端口已经开放"
fi
# 检测13388端口是否开放
netstat -tunl | grep ":13388 " > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    service xrdp restart
else
    echo "13388端口已经开放"
fi

ngrok start --all --config=tunnels.yml --region ap
