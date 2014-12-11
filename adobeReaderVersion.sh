#!/bin/sh
# Reports the Adobe Reader version or not installed.
# Created by Owen Pragel on July 23rd, 2013
# Updated July 24th, 2013
app="Adobe Reader.app"
result="<result>"
endresult="</result>"
notInstalled="Not installed"
version=$(defaults read "/Applications/$app/Contents/Info.plist" ResourceVersion)
if [[ $version =~ [0-9]+\.[0-9]+ ]]; then
	echo $result$version$endresult
else
	echo $result$notInstalled$endresult
fi

exit 0
