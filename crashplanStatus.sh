#!/bin/bash
status=$(grep backupEnabled /Library/Logs/CrashPlan/app.log)
echo $status
if [[ $status == "" ]]; then
	echo "<result>Inactive/Not installed</result>"
else
	echo "<result>"$status"</result>"
fi