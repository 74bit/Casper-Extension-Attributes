#!/bin/sh
# Reports the Adobe Reader version or not installed.
# Created by Owen Pragel on July 23rd, 2013
# Updated September 17th, 2014
appFolder='/Applications/'
app='Adobe Reader.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" ResourceVersion`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	Adobe Reader
