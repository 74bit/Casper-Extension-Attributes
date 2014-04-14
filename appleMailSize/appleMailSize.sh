#!/bin/bash
# Displays the Apple Mail (~/Library/Mail) folder size of the last user to login in megabytes.
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
mailSize=$(du -sm /Users/"$lastUser"/Library/Mail/ | cut -f1 )
echo '<result>'$mailSize'</result>'
exit 0
