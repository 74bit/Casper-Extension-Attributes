#!/bin/bash
#
############################################################################
#
# Extension Attribute checks to display Adobe Flash Player Version with Release number.
#
# Uses CFBundleShortVersionString because this is the "release version number of the bundle"
# Created on July 18th, 2013
############################################################################

FLASHPLAYERINFO="/Library/Internet Plug-Ins/Flash Player.plugin/Contents/Info"
printf '<result>'
if [ -r "$FLASHPLAYERINFO".plist ] ; then
  flashVersion=$(defaults read "$FLASHPLAYERINFO" CFBundleShortVersionString)
  printf "%s" "$flashVersion"
else
  printf "N/A"
fi 
printf '</result>'
exit 0
#ea_display_name	Adobe Flash
