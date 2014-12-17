#!/bin/bash
# Reports the Adobe Reader version or not installed.
# Created by Owen Pragel on July 23rd, 2013
# Updated September 17th, 2014
appFolder='/Applications/'
app='Adobe Reader.app'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" ResourceVersion)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Adobe Reader
