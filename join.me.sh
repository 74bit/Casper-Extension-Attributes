#!/bin/sh
# Reports the join.me version or not installed.
# Created by Owen Pragel on January 12th, 2014
appFolder='/Applications/'
app='join.me.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString)
	printf "%s" "$version"
else
	printf "%s" "$NOTINSTALLED"
fi
printf '</result>'
#ea_display_name	join.me
