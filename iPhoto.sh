#!/bin/sh
# Reports the iPhoto version or not installed.
appFolder='/Applications/'
app='iPhoto.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	iPhoto
