#!/bin/bash
# 2/8/2017
# getgit
#This script makes it easy to get repos from github. simply use the script and put the link as the first option


# check if user entered an option
if [ -z "$1" ]; then


        echo "You need to enter a link after the command \n"
        echo " EX: ./getgit github.com/user/repo"
        
else

# get the link
LINK=$1

# combine link and command
git clone git://$LINK

#end of file
fi

# add more features
