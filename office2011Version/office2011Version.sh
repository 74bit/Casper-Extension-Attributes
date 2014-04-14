#!/bin/sh
# Reports the Office 2011 version or not installed.
# Created by Owen Pragel in 2013
app="Microsoft Office 2011/Microsoft Word.app"
version=$(defaults read "/Applications/$app/Contents/Info.plist" CFBundleShortVersionString)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>"$version"</result>"
else
	echo "<result>Not installed</result>"
fi
exit 0
