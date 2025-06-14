#!/usr/bin/env bash
case "$1" in
  start) echo "Starting...";;
  stop) echo "Stopping...";;
  *) echo "Invalid command";;
esac
