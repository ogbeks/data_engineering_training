#!/bin/bash

# print all the colors in the array below

declare -a colors

colors=(yellow red blue green black white purple pink)

# write your solution below

for color in ${colors[@]}
do 
  echo $color
done