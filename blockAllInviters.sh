#!/bin/bash
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
if [[ ${osvers} -lt 10 ]]; then
  echo "<result>N/A</result>"
else
	lastUser=$(defaults read /Library/Preferences/com.apple.loginwindow lastUserName)
	blockAllInviters=$(defaults read /Users/"$lastUser"/Library/Preferences/com.apple.ScreenSharingSharedDefaults.plist BlockAllInviters)
	printf '<result>'
	if [[ "$blockAllInviters" == "1" ]]; then
		printf "T"
	elif [[ "$blockAllInviters" == "0" ]]; then
		printf "F"
	else
		printf "E"
	fi
	printf '</result>'
fi
#ea_display_name	blockAllInviters
