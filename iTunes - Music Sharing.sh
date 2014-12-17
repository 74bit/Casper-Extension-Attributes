#!/bin/bash
# Written by Owen Pragel July 23, 2013
lastUser=$(defaults read /Library/Preferences/com.apple.loginwindow lastUserName)
isDisabled=$(defaults read "/Users/$lastUser/Library/Preferences/com.apple.iTunes" disableSharedMusic)
printf '<result>'
if [ "$isDisabled" == '1' ]; then
	printf "T"
else
	printf "F"
fi
printf '</result>'
#ea_display_name	iTunes - Music Sharing
