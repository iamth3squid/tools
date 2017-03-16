#!/bin/bash
#getlynis.sh
#3/16/2017
#get and scan with lynis



#get repo
git clone git://github.com/CISOfy/lynis


#scan
cd lynis
./lynis audit system -Q
