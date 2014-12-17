#!/bin/bash
# Checks to see if the CrashPlan Backup engine is running.
# Displays 'Active' if running and 'Inactive' if not.
# Created by Owen Pragel on 10/29/13
status=$(ps auxww | grep -i CrashPlanService | grep -v "grep")
printf '<result>'
if [ "$status" == "CrashPlanService" ]; then
    printf 'Active'
else
	printf 'Inactive'
fi
printf '</result>'
#ea_display_name	CrashPlan Engine
