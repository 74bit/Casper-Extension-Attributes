#!/bin/sh
# Reports the iPhoto version or not installed.
appFolder='/Applications/'
app='iPhoto.app'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	iPhoto
