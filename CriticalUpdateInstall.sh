#!/bin/bash
# 
status=`defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall`
printf '<result>'
if [ "$status" == "1" ]; then
  printf 'True'
else
  printf 'False'
fi
printf '</result>'
#ea_display_name    CriticalUpdateInstall
