#!/bin/bash
# Reports the version of Adobe Acrobat XI or displays N/A
# if program not found.
# Created by Owen Pragel on September 17th, 2014
appFolder='/Applications/'
app='Adobe Acrobat XI Pro/Adobe Acrobat Pro.app'
NOT_INSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=$(defaults read "$appFolder$app/Contents/Info.plist" ResourceVersion)
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Adobe Acrobat XI