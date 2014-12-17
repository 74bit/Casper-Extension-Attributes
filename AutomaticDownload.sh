#!/bin/bash
# Checks if App Store updates are set to automatically download
status=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload)
printf '<result>'
if [ "$status" == "1" ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
#ea_display_name    AutomaticDownload
