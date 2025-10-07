#!/bin/bash
function reverse () {
  local S=$1
  local Slen=${#S}
  local T
  case $Slen in
    0|1) echo "$S" ;;
    *) T=${S:0:-1}; T=$(reverse "$T"); echo "${S: -1}$T" ;;
  esac
}
echo -n "Enter a string: "; read S
S=$(reverse "$S")
echo "Reversed string: $S"
