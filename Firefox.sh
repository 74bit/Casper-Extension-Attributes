#!/bin/bash
APPLICATION_PATH='/Applications/Firefox.app'
APPLICATION_VERSION_KEY='CFBundleShortVersionString'

printf '<result>'
if [ -d "$APPLICATION_PATH" ]; then
	version=$(defaults read "$APPLICATION_PATH/Contents/Info.plist" "$APPLICATION_VERSION_KEY")
	printf "%s" "$version"
else
	printf "N/A"
fi
printf '</result>'
