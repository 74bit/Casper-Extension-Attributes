#!/bin/sh
# Reports the version of Adobe Acrobat XI or displays N/A
# if program not found.-d /
# Created by Owen Pragel on September 17th, 2014
appFolder='/Applications/'
app='Adobe Acrobat XI Pro/Adobe Acrobat Pro.app'
NOTINSTALLED='N/A'
printf '<result>'
if [ -d "$appFolder$app" ]; then
	version=`defaults read "$appFolder$app/Contents/Info.plist" ResourceVersion`
	printf $version
else
	printf $NOTINSTALLED
fi
printf '</result>'
#ea_display_name	Adobe Acrobat XI
