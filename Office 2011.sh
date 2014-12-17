#!/bin/sh
# Reports the Office version or not installed.
appFolder='/Applications/'
app='Microsoft Office 2011/Microsoft Word.app'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" CFBundleShortVersionString)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Office 2011
