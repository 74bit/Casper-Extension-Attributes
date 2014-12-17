#!/bin/bash
# Reports the ESET NOD32 Antivirus version or not installed.
# Created by Owen Pragel on August 29th, 2013
app="ESET NOD32 Antivirus.app"
version=$(defaults read "/Applications/$app/Contents/Info.plist" CFBundleShortVersionString)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo "<result>$version</result>"
else
	echo "<result>Not installed</result>"
fi
#ea_display_name	ESET NOD32 Version