#!/bin/sh
# Retrieves Oracle Java version.
printf '<result>'
if [ -e /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java ]; then
	result="$(/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java -version 2>&1 | grep "java" | awk '{ print substr($3, 2, length($3)-2); }')"
	printf "%s" "$result"
else
	echo 'N/A'
fi
printf '</result>'
#ea_display_name	Java 7or8
