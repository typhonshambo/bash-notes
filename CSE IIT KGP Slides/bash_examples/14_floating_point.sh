#!/bin/bash
num=22; den=7
approxpi=$(echo "$num / $den" | bc)
echo $approxpi
approxpi=$(echo "scale = 10; $num / $den" | bc)
echo $approxpi
num=355; den=113
echo $(echo "scale = 10; $num / $den" | bc)
