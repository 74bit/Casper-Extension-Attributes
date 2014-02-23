#!/bin/sh
# Reports the Flip4Mac version or not installed.
# Created by Owen Pragel on July 24rd, 2013
version=$(defaults read "/Library/PreferencePanes/Flip4Mac WMV.prefPane/Contents/Info.plist" CFBundleVersion)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>$version</result>"
else
	echo "<result>Not installed</result>"
fi