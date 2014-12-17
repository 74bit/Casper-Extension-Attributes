#!/bin/bash
# Displays if OS X guest accounts are enabled or disabled.
status=$(defaults read /Library/Preferences/com.apple.loginwindow.plist GuestEnabled)
printf '<result>'
if [ "$status" == "1" ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
#ea_display_name	Guest Account
