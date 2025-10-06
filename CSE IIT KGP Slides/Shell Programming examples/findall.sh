#!/bin/bash
echo -n "*** Enter an extension (without the dot): "
read extn
echo "*** Okay, finding all files in your home area with extension $extn"
ls -R ~ | grep "\.$extn$"
echo "*** That’s all you have. Bye."
