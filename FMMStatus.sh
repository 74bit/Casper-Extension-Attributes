#!/bin/bash
FMM=$(defaults read /Library/Preferences/com.apple.FindMyMac.plist FMMEnabled)
printf "<result>%s</result>" "$FMM"
#ea_display_name	Find My Mac
