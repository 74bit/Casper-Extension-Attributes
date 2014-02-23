#!/bin/sh
#
############################################################################
#
# Extension Attribute checks to display Adobe Flash Player Version with Release number.
#
# Uses CFBundleShortVersionString because this is the "release version number of the bundle"
# Ref: https://developer.apple.com/library/IOS/#documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# Created on July 18th, 2013
############################################################################

FLASHPLAYERINFO="/Library/Internet Plug-Ins/Flash Player.plugin/Contents/Info"

if [ -r "$FLASHPLAYERINFO".plist ] ; then

  FlashVersion=`defaults read "$FLASHPLAYERINFO" CFBundleShortVersionString`
  echo "<result>$FlashVersion</result>"

else

  echo "<result>Not installed</result>"

fi

exit 0
