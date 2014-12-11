#!/bin/sh
# Reads if the computer has a solid-state drive or traditional hard drive
# Created by Owen Pragel on January 25th, 2013.
profilerData=$(system_profiler SPSerialATADataType | tail -n +2)
if [[ "printf $profilerData | grep -o 'Rotational\|Solid State'" == "Rotational" ]]; then
  mediaType="HDD"
else
  mediaType="SSD"
fi
busType=$(echo 	$profilerData| grep -o 'SATA\|PCI')
echo '<result>'$mediaType' '$busType'</result>'


#ea_display_name	Storage Type
