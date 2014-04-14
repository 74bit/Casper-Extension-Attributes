#!/bin/bash
# Displays the speed of the ethernet link
# Created by Owen Pragel on Sep 27th. 2013
speed=$(ifconfig | grep -o "[0-9]\{1,4\}baseT")
shortened=$(echo $speed | grep -o "[0-9]\{1,4\}")
if [ "$shortened" == "" ]; then
	echo "<result>Disconnected</result>"
else
	echo "<result>"$shortened"Mb/s</result>"
fi
exit 0
