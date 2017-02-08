#!/bin/bash

# Makes a new script with the name as a first option
# EX ./new_script Helloworld.sh makes a Helloworld.sh and sets it up

#Make the new script with name being the option

if [ -z "$1" ]; then


        echo You must name the file in the first option
        echo File not created
else

        File_Name=$1
        touch  $File_Name

        # add script stuff
        echo "#!/bin/bash" >> $File_Name

        echo  "# $1" >> $File_Name

        # Put in date
        dt_formatted=$(date +%m/%d/%y-%H:%M)
        echo "# $dt_formatted ">>$File_Name

        # Add Execute permissions
        chmod +x $File_Name

        # Finish
        echo File Created: $File_Name


fi
