#!/bin/sh
# Originally posted by 'bentoms' on JAMF nation
printf '<result>'
if [ -e /Library/Internet\ Plug-Ins/Silverlight.plugin ]; then
	version=$(defaults read /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info SilverlightVersion)
	printf "%s" "$version"
else
	printf 'N/A'
fi
printf '</result>'
#ea_display_name	Silverlight