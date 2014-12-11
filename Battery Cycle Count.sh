#!/bin/sh
printf "<result>$(ioreg -r -c "AppleSmartBattery" | grep -w "CycleCount" | awk '{print $3}' | sed s/\"//g)</result>"
#ea_display_name	Battery Cycle Count
