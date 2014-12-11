#!/bin/bash
adminUsers=$(dscl . -read /Groups/admin GroupMembership)
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
printf "<result>"
if [[ $adminUsers == *$lastUser* ]]; then
	printf "T"
else
	printf "F"
fi
printf "</result>\n"


#ea_display_name	isUserAdmin
