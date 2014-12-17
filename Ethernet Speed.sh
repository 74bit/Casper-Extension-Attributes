#!/bin/bash
# Displays the speed of the ethernet link
# Created by Owen Pragel on Sep 27th. 2013
speed=$(ifconfig | grep -o "[0-9]\{1,4\}baseT")
shortened=$(printf "%s" "$speed" | grep -o "[0-9]\{1,4\}")
printf '<result>'
if [ "$shortened" == "" ]; then
    printf 'Disconnected'
else
	printf "%sMb/s" "$shortened"
fi
printf '</result>'
#ea_display_name	Ethernet Speed