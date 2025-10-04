#!/bin/bash
declare -A MYINFO=(["name"]="Foolan barik" ["fname"]="Foolan" ["lname"]="Barik")
MYINFO["cgpa"]="9.87"
MYINFO["height"]="5'08''"
MYINFO["mobile games"]="Numberlink:Slitherlink:Sudoku:2048"
echo "\"${MYINFO[fname]} ${MYINFO[lname]}\" likes games ${MYINFO[mobile games]}"
echo ${MYINFO[@]}
echo ${!MYINFO[@]}
for key in ${!MYINFO[@]}; do echo $key '->' ${MYINFO[$key]}; done
