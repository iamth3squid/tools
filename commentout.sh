#!/bin/bash
# 3/1/2017
# commentout.sh
# uses sed to add # to every line in a file


#Check for option

if [ -z "$1" ]; then

 echo Need to use the file name as first option
 
else

 FILENAME=$1
 
 #command
 sed 's/^/#/' $FILENAME >> $FILENAME
 
fi
#END
