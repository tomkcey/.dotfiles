#!/bin/sh
use=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{ print ""$1"%"}')
temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | awk '{ print ""$1"C"}')
echo "use: $use / temp: $temp"
