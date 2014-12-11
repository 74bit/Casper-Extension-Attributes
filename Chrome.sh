#!/bin/sh
# Reports the Chrome version or not installed.
# Created by Owen Pragel on August 2nd, 2013
appFolder='/Applications/'
app='Google Chrome.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	Chrome
