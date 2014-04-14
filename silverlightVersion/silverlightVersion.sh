#!/bin/sh
# Reads Silverlight version or displays not installed.
# Originally posted by 'bentoms' on JAMF nation
if [ -e /Library/Internet\ Plug-Ins/Silverlight.plugin ]; then
  result="$(defaults read /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info SilverlightVersion)"
  echo "<result>$result</result>"
else
  echo "<result>Not installed</result>"
fi
exit 0
