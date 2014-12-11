#!/bin/bash
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
storageUse=`du -h -d 1 /Users/$lastUser/ | grep -v "./\\." | sed -e "s|/Users/$lastUser//| |g"`
storageCheckError=$?
if [ $storageCheckError != 0 ]; then
	echo "Unexpected error occured!"
	exit $storageCheckError
fi
echo "<result>$storageUse</result>" 
exit 0


#ea_display_name	User Size
