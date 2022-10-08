#!/bin/sh
function get_gpu_temp(){
    nvidia-smi | awk '/[0-9]{2}C/ { print $3 }' | cut -dC -f1
}

while true
do
    echo $(get_gpu_temp)
    sleep 2
done
