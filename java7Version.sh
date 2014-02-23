#!/bin/sh
# Retrieves Oracle Java 7 version
# Created by Owen Pragel August 2013.
if [ -e /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java ]; then
  result="$(/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java -version 2>&1 | grep "java" | awk '{ print substr($3, 2, length($3)-2); }')"
  echo "<result>$result</result>"
else
  echo "<result>Not installed</result>"
fi
exit 0
