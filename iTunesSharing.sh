#!/bin/sh
# Reads if iTunes Sharing is enabled or not.
# Written by Owen Pragel July 23, 2013
result="<result>"
endresult="</result>"
enabled="Enabled"
disabled="Disabled"
isDisabled=$(defaults read com.apple.iTunes disableSharedMusic)
if [ $isDisabled == 1 ]; then
	echo $result$disabled$endresult
else
	echo $result$enabled$endresult
fi

exit 0
