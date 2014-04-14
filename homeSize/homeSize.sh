#!/bin/bash
# Displays the home folder size of the current user in megabytes.
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
homeSize=$(du -sm /Users/$lastUser | cut -f1 )
echo '<result>'$homeSize'</result>'
exit 0
