#!/bin/bash
# 
status=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall)
printf '<result>'
if [ "$status" == "1" ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
#ea_display_name    ConfigDataInstall
