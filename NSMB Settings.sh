#!/bin/bash
# Reads contents of all NSMB configurations
NSMB_GLOBAL_CONFIGURATION="/etc/nsmb.conf"
NSMB_CONFIGURATION="/Library/Preferences/nsmb.conf"

if [ -f "$NSMB_GLOBAL_CONFIGURATION" ]; then
	nsmbConfs+=$(printf "%s" "$NSMB_GLOBAL_CONFIGURATION")
	nsmbConfs+=$'\n'
	nsmbConfs+=$(cat "$NSMB_GLOBAL_CONFIGURATION")
fi

if [ -f "$NSMB_CONFIGURATION" ]; then
	nsmbConfs+=$(printf "%s" "$NSMB_CONFIGURATION")
	nsmbConfs+=$'\n'
	nsmbConfs+=$(cat "$NSMB_CONFIGURATION")
fi


for USER_HOME in /Users/*
  do
    USER_UID=$(basename "${USER_HOME}")
    if [ ! "${USER_UID}" = "Shared" ]; then
    	if [ -f "/Users/$USER_UID$NSMB_CONFIGURATION" ]; then
    		 nsmbConfs+=$'\n'
    		 nsmbConfs+=$(printf "%s" "/Users/$USER_UID$NSMB_CONFIGURATION")
    		 nsmbConfs+=$'\n'
    		 nsmbConfs+=$(cat "/Users/$USER_UID$NSMB_CONFIGURATION")
    	fi
    fi
done

printf '<result>'
if [ "$nsmbConfs" == "" ]; then
	printf 'N/A'
else
	printf "%s" "$nsmbConfs"
fi
printf '</result>'

exit 0


#ea_display_name	NSMB Settings
