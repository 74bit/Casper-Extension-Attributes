#!/bin/sh
hide500users=$(defaults read /Library/Preferences/com.apple.loginwindow Hide500Users)
printf "<result>"
if [[ "$hide500users" == "1" ]]; then
	printf "T"
else
	printf "F"
fi 
printf '</result>'


#ea_display_name	Hide500Users
