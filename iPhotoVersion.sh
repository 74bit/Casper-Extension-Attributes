#!/bin/sh
# Reports the iPhoto version or not installed.
app="iPhoto.app"
version=$(defaults read "/Applications/$app/Contents/Info.plist" CFBundleShortVersionString)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>"$version"</result>"
else
	echo "<result>Not installed</result>"
fi
