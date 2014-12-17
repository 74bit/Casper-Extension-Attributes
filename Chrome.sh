#!/bin/bash
# Reports the Chrome version or not installed.
# Created by Owen Pragel on August 2nd, 2013
appFolder='/Applications/'
app='Google Chrome.app'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Chrome
