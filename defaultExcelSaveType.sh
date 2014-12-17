#!/bin/bash
# Reads Excel default format type
lastUser=$(defaults read /Library/Preferences/com.apple.loginwindow lastUserName)
saveFormat=$(defaults read "/Users/$lastUser/Library/Preferences/com.microsoft.Excel.plist" "14\\\\Default Save\\\\Default Format")
errorCode=$?
printf '<result>'
if [ "$errorCode" == "1" ]; then
	printf 'N/A'
elif [ "$saveFormat" == "57" ]; then
	printf "XLS"
elif [ "$saveFormat" == "52" ]; then
	printf "XLSX"
else
	printf "%s" "$saveFormat"
fi
printf '</result>'
#ea_display_name	Default Excel Save Type