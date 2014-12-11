#!/bin/bash
# Reads whether SMB sharing is enabled through the OS X Sharing preferences pane.
# Tested on 10.8.5
# Created on March 17th, 2014 by Owen Pragel

smbEnabled=`defaults read /Library/Preferences/com.apple.filesharingui SMBEnabled | sed 's/ *$//'`
printf '<result>'
if [ "$smbEnabled" == "1" ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
exit 0


#ea_display_name	SMB Sharing
