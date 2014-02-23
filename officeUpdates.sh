#!/bin/sh
# Checks whether Office updates are checked manually or automatically.
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
status=$(defaults read "/Users/"$lastUser"/Library/Preferences/com.microsoft.autoupdate2" HowToCheck)
if [ $status == "Automatic" ]; then
	echo "<result>"$status"</result>"
elif [ $status == "Manual" ]; then
	echo "<result>"$status"</result>"
else
	echo "<result>Not Installed</result>"
fi

exit 0
