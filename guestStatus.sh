#!/bin/sh
# Displays if OS X guest accounts are enabled or disabled
# Created by Owen Pragel sometime in 2013
status=$(defaults read /Library/Preferences/com.apple.loginwindow.plist GuestEnabled)
if [ $status = 1 ]; then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi

exit 0
