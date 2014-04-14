#!/bin/sh
# Reports the Firefox version or not installed.
# Created by Owen Pragel on August 2nd, 2013
app="Firefox.app"
version=$(defaults read /Applications/$app/Contents/Info.plist CFBundleShortVersionString)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>"$version"</result>"
else
	echo "<result>Not installed</result>"
fi
exit 0
