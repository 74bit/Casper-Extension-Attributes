#!/bin/bash
# Reads whether SMB sharing is enabled through the OS X Sharing preferences pane.
# Tested on 10.8.5
# Created on March 17th, 2014 by Owen Pragel

smbEnabled=$(defaults read /Library/Preferences/com.apple.filesharingui SMBEnabled)
smbEnabled=$(echo $smbEnabled| sed 's/ *$//')
if [ "$smbEnabled" -eq "0" ]; then
  echo "<result>False</result>"
else
  echo "<result>True</result>"
fi

exit 0
