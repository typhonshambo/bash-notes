#!/bin/bash
a=3; b=4; c=-5
echo $((a + b * c - 6))
z=$((a ** 2 + b ** 2))
echo $z
declare -a FIB=([0]=0 [1]=1)
for n in {2..6}; do
  FIB[$n]=$((FIB[n-1]+FIB[n-2]))
done
echo ${FIB[@]}
echo ${!FIB[@]}
