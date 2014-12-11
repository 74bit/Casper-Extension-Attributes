#!/bin/sh
if [ -f "/Library/Preferences/com.jamfsoftware.jamf.plist" ]; then
validurl=`defaults read /Library/Preferences/com.jamfsoftware.jamf jss_url | grep https\://`
printf '<result>'
if [[ $validurl = '' ]]; then
	printf 'Failed - URL did not contain HTTPS'
else
	curlresult=`curl -s $validurl`
	if [[ $curlresult = "" ]]; then
		printf 'Failed - curl was unable to connect'
	else
		printf 'Success'
	fi
fi
else
	printf 'Failed - No jamf 7.3 conf file found'
fi
printf '</result>'
#ea_display_name	JSS Certificate Validation