#!/bin/bash

echo "--------------------------------"

memTotal=$(free -m|awk '/^Mem:/{print $2}')
memTotalReadable=$(free -mh|awk '/^Mem:/{print $2}')
echo "Total memory: $memTotalReadable"

memAvailable=$(free -m|awk '/^Mem:/{print $7}')
memAvailableReadable=$(free -mh|awk '/^Mem:/{print $7}')
echo "Available memory: $memAvailableReadable"

memUsedPercentage=$(echo "($memTotal-$memAvailable)*100/$memTotal" | bc)

if [ $memUsedPercentage -lt 32 ]; then
    echo -e "\e[32mUsed memory: $memUsedPercentage%\e[39m"
elif [ $memUsedPercentage -lt 64 ]; then
    echo -e "\e[33mUsed memory: $memUsedPercentage%\e[39m"
else
    echo -e "\e[31mUsed memory: $memUsedPercentage%\e[39m"
fi

echo "--------------------------------"
