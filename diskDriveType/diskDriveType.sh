#!/bin/sh
# Reads if the computer has a solid-state drive or traditional hard drive
# Created by Owen Pragel on January 25th, 2013
mediaType=$(system_profiler SPSerialATADataType | sed -n 's/^.*Medium Type: //p' | head -1)
if [[ $mediaType == "Rotational" ]]; then
  mediaType="HDD"
elif [[ $mediaType == "Solid State" ]]; then
  mediaType="SSD"
fi
busType=$(system_profiler SPSerialATADataType | sed -n 's/^.*Physical Interconnect: //p' | head -1)
if [[ $busType == "" ]]; then
  busType="SATA"
fi
echo '<result>'$mediaType' '$busType'</result>'
exit 0
