#!/bin/bash
# Displays whether SSH is disabled or enabled
# assumes running
sshStatus=$(systemsetup -getremotelogin | grep -o 'On\|Off')
if [ "$sshStatus" == "On" ]; then
    eaResult='T'
elif [ "$sshStatus" == "Off" ]; then
    eaResult='F'
else
    eaResult='E'
fi
printf '<result>%s</result>' "$eaResult"
#ea_display_name	SSH
