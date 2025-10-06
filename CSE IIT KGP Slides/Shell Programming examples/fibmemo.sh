#!/bin/bash
function FIB () {
  local n=$1
  if [ ! ${F[$n]} ]; then
    FIB $((n-1))
    FIB $((n-2))
    F[$n]=$(( F[n-1] + F[n-2] ))
  fi
}
echo -n "Enter n: "; read n
declare -ai F=([0]=0 [1]=1)
FIB $n
echo "F($n) = ${F[$n]}"
