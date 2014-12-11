#!/bin/sh
# Originally posted by 'bentoms' on JAMF nation
printf '<result>'
if [ -e /Library/Internet\ Plug-Ins/Silverlight.plugin ]; then
	result=`defaults read /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info SilverlightVersion`
	printf "$result"
else
	printf 'N/A'
fi
printf '</result>'
#ea_display_name	Silverlight
