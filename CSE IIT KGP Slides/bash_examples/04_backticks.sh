#!/bin/bash
echo $(ls /)
echo $(echo $HOME)
ls $(echo $HOME) | wc
ls $(echo $HOME)/spl
