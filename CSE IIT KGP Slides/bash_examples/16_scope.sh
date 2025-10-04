#!/bin/bash
x=3; y=4; z=5
fx () { local x=6; echo "x = $x, y = $y, z = $z, w = $w"; }
fx
fxy () { local y=7; local w=8; local x=9; fx; }
fxy
fx
fxyw () { local y=7; w=8; fx; }
fxyw
fx
echo "x = $x, y = $y, z = $z, w = $w"
