#!/bin/bash
P=(2 3 5 7)
echo ${P[@]}
P+=(11 13 17 19 31 37)
echo ${P[@]}
P=(${P[@]:0:8} 21 23 29 ${P[@]:8})
echo ${P[@]}
unset P[8]
echo ${P[@]}
echo ${!P[@]}
P=(${P[@]})
echo ${P[@]}
echo ${!P[@]}
Q=(41 43 47)
P=(${P[@]} ${Q[@]})
echo ${P[@]}
