#!/bin/bash

# print the current status of a traffic light using the 'current_light' to determine the color

declare -a light_colors

light_colors=(yellow red green)

rand=$[$RANDOM % ${#light_colors[@]}]
current_light=${light_colors[rand]}

echo $current_light

#######################################################
############# write your solution below   ############# 
#######################################################

case $current_light in
    yellow)
        echo "GO"
        ;;
    red | green)
        echo "READY"
        ;;
esac