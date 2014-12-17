#!/bin/bash
# Checks to see if CrashPlan backup is enabled.
# Displays 'Active' if enabled and 'Inactive' if disabled or not installed
# Last updated by Owen Pragel on October 29th, 2013
status=$(grep backupEnabled /Library/Logs/CrashPlan/app.log | awk '{printf $3}')
printf '<result>'
if [ "$status" == "true" ]; then
    printf "Active"
elif [ "$status" == "false" ]; then
    printf "Inactive"
else
	printf "N/A"
fi
printf '</result>'
#ea_display_name	Crashplan Backup
