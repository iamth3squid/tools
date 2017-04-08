#!/bin/bash
#addtosudoers.sh
#4/7/2017

# Add a user to sudo group

#check for option input
if [ -z "$1" ]; then

  echo No Username supplied. please give username option

else

  USERTOADD=$1
  
  usermod -aG sudo $USERTOADD
  
  echo "useradded to sudoers" 

fi
