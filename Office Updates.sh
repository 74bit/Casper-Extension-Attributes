#!/bin/sh
# Checks whether Office updates are checked manually or automatically.
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
status=`defaults read "/Users/"$lastUser"/Library/Preferences/com.microsoft.autoupdate2" HowToCheck`
printf '<result>'
if [ "$status" == "Automatic" ]; then
	printf "$status"
elif [ "$status" == "Manual" ]; then
	printf "$status"
else
	printf "N/A"
fi
printf '</result>'
#ea_display_name	Office Updates
