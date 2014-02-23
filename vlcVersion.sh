#!/bin/sh
# Reports the VLC version or not installed.
# Created by Owen Pragel on July 24rd, 2013
app="VLC.app"
version=$(defaults read /Applications/$app/Contents/Info.plist CFBundleShortVersionString)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>"$version"</result>"
else
	echo "<result>Not installed</result>"
fi
