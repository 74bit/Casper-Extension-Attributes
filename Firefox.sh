#!/bin/sh
# Reports the Firefox version or not installed.
# Created by Owen Pragel on August 2nd, 2013

# These can be modified
APPLICATION_PATH='/Applications/Firefox.app'
APPLICATION_VERSION_KEY='CFBundleShortVersionString'

# No need to change below here
NOT_INSTALLED='N/A'

printf '<result>'
if [ -d "$APPLICATION_PATH" ]; then
	version=$(defaults read "$APPLICATION_PATH/Contents/Info.plist" "$APPLICATION_VERSION_KEY")
	printf "%s" "$version"
else
	printf "%s" "$NOT_INSTALLED"
fi
printf '</result>'
#ea_display_name	Firefox