#!/bin/bash
# Displays if OS X software update scheduler is on or off.
appleAutoUpdateEnabled=$(softwareupdate --schedule)
OFFSTATUS='Automatic check is off'
ONSTATUS='Automatic check is on'
printf '<result>'
if [[ "$appleAutoUpdateEnabled" == "$OFFSTATUS" ]]; then
	printf 'F'
elif [[ "$appleAutoUpdateEnabled" == "$ONSTATUS" ]]; then
	printf 'T'
else
	printf 'E'
fi
printf '</result>'


#ea_display_name	appleAutoUpdateEnabled
