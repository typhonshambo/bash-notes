#!/bin/bash
declare -a MYARR
MYARR[0]="zero"; MYARR[1]="one"; MYARR[2]="two"; MYARR[4]="four"
MYARR[5]="five"
echo "${MYARR[0]}, ${MYARR[1]}, ${MYARR[2]}, ${MYARR[3]}, ${MYARR[5]}"
echo ${MYARR[@]}
echo ${!MYARR[@]}
declare -iar FIB=([0]=0 [1]=1 [2]=1 [3]=2 [4]=3 [5]=5 [6]=8 [7]=13 [8]=21 [9]=34)
echo ${FIB[5]}
echo ${FIB[*]}
echo ${!FIB[*]}
