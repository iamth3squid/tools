Created by: Iamth3squid

This is a repo for random tool scripts that I use in my day to day stuff.




-newscript.sh:

     Description:
     gerates a new bash file with datime and file path of bash. Instead of making a new file, setting it to /bin/bash, adding the date, and making it excutable; this script does all of that for you.

     Use:
     takes the first option you give and creates a file with that name, Then writes some basic stuff to the file and makes it excutable.
     
     EX: $./newscript HelloWorld.sh
     
     

  

-getrepo

     Description:
     used to get repos from github without having to remember the full url.
     
     Use:
     use a link to a github repo as the first option for the script
     
     EX: $ ./getrepo github.com/GITACCOUNT/REPO
     
     
- BACKUP.sh

     Description:
     script to tar/zip the full operating system.
     
     Use:
     This script tars and zips everything under root. It was made for a short cut for other scripts. DO NOT USE.
     
     EX: ./BACKUP.sh
    
    
    
- addtosudoers.sh
     
     Description: 
     quick way to add a user to sudos. 
     
     Use: 
     a cop out to rememebering the commands to add to sudoers. Tested in ubuntu 17.
     
     EX: ./addtosudoers.sh USERNAME
     
- cpsbin.sh

     Description:
     moves a file to sbin and gives it -X mod
     
     Use: moves a file to sbin and makes it excutable so you dont have to add it to path. Tested in ubuntu 17. 
     
     EX:./cpsbin.sh NEWSCRIPT.sh

updateupgrate.sh
     Decription: runs both apt update and apt upgrade with the y switch
     
     
     USE: short cut to running updates. Tested in unbuntu 17
     
     EX:./updateupgrade.sh
     
 More to come...
 

