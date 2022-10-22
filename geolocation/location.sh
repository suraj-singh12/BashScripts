#!/bin/bash

#  location.sh
#  
#
#  Created by Aditya Kumar Singh on 22/10/22.
#

# -m for the my location information.
# -u with ip address as argument for location information of the user.

# Get the options

# usage function
usage()
{
    echo "usage: <command> options:<m|u|h>"
    echo "use ./location.sh -h for help"
}

no_args="true"
while getopts ":hmu:" option; do
    case $option in
        h) #display help
            echo "This is a shell script to approximate the geo location of a machine with specified ip address by approximating the location of the substation of Internet Service Provider (ISP)."
            echo
            echo "Syntax: pathToScript [-m|u|h] [ip_address]"
            echo "options:"
            echo "  m     To get your location information"
            echo "  u     To get the location information of the ip address provided as an argument to this option"
            echo "  h     Print this Help.";;
        m) #display the information of user's ip address
            curl -s https://ipinfo.io;;
        u) # displaying the information of entered ip address with this option
            ip=$OPTARG
            curl -s "https://ipinfo.io/${ip}";;
        \?)  # Invalid option
            echo "Error: Invalid option"
            exit;;
    esac
    no_args="false"
done

[[ "$no_args" == "true" ]] && { usage; exit 1; }
        
