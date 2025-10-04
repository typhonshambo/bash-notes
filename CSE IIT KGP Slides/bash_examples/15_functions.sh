#!/bin/bash
function twopower () {
  echo "Usage: twopower exponent"
  echo "2 to the power $1 is $((2 ** $1))"
}
twopower 10
twopower 30
twopower 60
twopower 100
