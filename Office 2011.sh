#!/bin/sh
# Reports the Office version or not installed.
appFolder='/Applications/'
app='Microsoft Office 2011/Microsoft Word.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	Office 2011
