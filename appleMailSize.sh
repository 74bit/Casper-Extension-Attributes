#!/bin/bash
# Displays the Apple Mail (~/Library/Mail) folder size of the last user to login.
# Created by Owen Pragel on February 1st, 2014.
# Last update on February 2nd, 2014.
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
mail=$(du -sh /Users/"$lastUser"/Library/Mail/ | cut -f1 )
mailSizeNumber=$(echo ${mail%?})
mailSizeScale=$(echo -n $mail | tail -c 1)
echo '<result>'$mailSizeScale' '$mailSizeNumber'</result>'
exit 0
