#!/bin/sh
sshStatus=`sudo systemsetup -getremotelogin | grep -o 'On\|Off'`
printf '<result>'
if [ "$sshStatus" == "On" ]; then
  printf 'T'
elif [ "$sshStatus" == "Off" ]; then
  printf 'F'
else
  errorCode=$?
  printf 'E'
fi
printf '</result>'
#ea_display_name	SSH
