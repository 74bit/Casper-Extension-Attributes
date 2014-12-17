#!/bin/bash
# Displays T if there is a critical software update available for install 
status=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall)
printf '<result>'
if [ "$status" == "1" ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
#ea_display_name    CriticalUpdateInstall
