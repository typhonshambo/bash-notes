#!/bin/bash
echo $SHLVL
MYNAME=Foolan
export MYNAME
export MY_NAME=Foolan
MY_FULL_NAME="Foolan Barik"
bash -c 'echo $SHLVL; echo $MYNAME; echo $MY_NAME; echo $MY_FULL_NAME'
