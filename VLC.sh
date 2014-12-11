#!/bin/sh
# Reports the VLC version or not installed.
# Created by Owen Pragel on July 24rd, 2013
appFolder='/Applications/'
app='VLC.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	VLC
