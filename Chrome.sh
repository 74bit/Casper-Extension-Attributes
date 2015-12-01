#!/bin/bash
APP_PATH='/Applications/Google Chrome.app'
APP_VERSION_KEY='CFBundleShortVersionString'
printf '<result>'
if [ -d "$APP_PATH" ]; then
	version=$(defaults read "$APP_PATH/Contents/Info.plist" "$APP_VERSION_KEY")
	printf "%s" "$version"
else
	printf "N/A"
fi
printf '</result>'
