#!/bin/bash
userPassLogin=$(defaults read /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME)
printf '<result>'
if [ "$userPassLogin" == '1' ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
exit 0


#ea_display_name	User-Pass Login Display
