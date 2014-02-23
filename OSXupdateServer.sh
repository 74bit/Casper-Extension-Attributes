#!/bin/sh
# Displays the update server if it is set
# Created by Owen Pragel on Sep 24, 2013
printf "<result>"
defaults read /Library/Preferences/com.apple.SoftwareUpdate CatalogURL
printf "</result>"

exit 0
