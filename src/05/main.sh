# !/bin/bash

START_TIME=$(date +%s)

if ( [[ -n $1 ]] && [[ $# < 2 ]] )
then
    if [[ -d $1 ]]
    then
        if [[ ${1: -1} = "/" ]]
        then
            chmod +x ./functions.sh
            . ./functions.sh
        else
            echo "The directory name must end with '/'. Try again"
        fi
    else
        echo "The directory does not exist. Try again"
    fi
else
    echo "Invalid number of directories, only 1 is required. Try again"
fi