#!/bin/bash
# Reports whether SMB passwords/sharing are enabled for any account on the machine.
# Created by Owen Pragel on 3/17/2014.
lastUser=$(defaults read /Library/Preferences/com.apple.loginwindow lastUserName)
smbPasswords=$(pwpolicy -u "$lastUser" gethashtypes | grep -o SMB-NT | head)
printf '<result>'
if [[ "$smbPasswords" == "SMB-NT" ]]; then
  printf "T"
else
  printf "F"
fi
printf '</result>'
#ea_display_name	SMB Passwords
