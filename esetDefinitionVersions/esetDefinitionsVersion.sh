#!/bin/sh
# Reads the current virus database version from ESET.
# Created by Owen Pragel sometime in August 2013.
version=$(awk '/CONTINUOUS_ENGINE1/{getline; print}' "/Applications/ESET NOD32 Antivirus.app/Contents/var/lib/data/updfiles/lastupd.ver" | tail -n 1)
short=${version:8}
result="<result>"
endresult="</result>"
printf "<result>"$short
printf "</result>"
exit 0
