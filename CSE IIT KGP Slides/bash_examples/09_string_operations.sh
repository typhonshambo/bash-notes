#!/bin/bash
S="abcdefgh"
T="ghijklmnop"
S="$S$T"
echo "$S has length ${#S}"
S="${S:0:8}${S:10}"
echo "$S has length ${#S}"
echo ${S:4}
echo ${S: -4}
echo ${S:4:4}
echo ${S:4:-4}
