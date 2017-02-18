#!/bin/bash
#mvsbin.sh
#2/17/2017
#moves script to sbin and makes it excutable 


#Need to give the name of the script you want to move as the first option
#EX: mvsbin.sh MYSCRIPT


if [ -z "$1" ]; then


        echo "You must name the file in the first option"
       
else

        SCRIPTTOMOVE=$1
        

        # add script stuff
        sudo cp $1 /usr/local/sbin
        echo "File moved"
   
        
        # Add Execute permissions
        chmod +x /usr/local/sbin/$1

        # Finish
        echo "File moved and added The excute permission"


fi
