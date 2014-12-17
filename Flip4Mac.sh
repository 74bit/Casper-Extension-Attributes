#!/bin/sh
# Reports the Flip4Mac version or not installed.
# Created by Owen Pragel on July 24rd, 2013
appFolder='/Library/PreferencePanes/'
app='Flip4Mac WMV.prefPane'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" CFBundleVersion)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Flip4Mac
