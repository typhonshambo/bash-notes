#!/bin/bash
parameters () {
  echo "\$0 = $0"
  echo "\$# = $#"
  echo "\$* = $*"
  echo "First parameter: $1"
  echo "Second parameter: $2"
  echo "Third parameter: $3"
}
parameters "$@"
