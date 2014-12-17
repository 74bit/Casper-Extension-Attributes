#!/bin/sh
batteryCycleCount=$(ioreg -r -c "AppleSmartBattery" | grep -w "CycleCount" | awk '{print $3}' | sed s/\"//g)
echo "<result>$batteryCycleCount</result>"
#ea_display_name	Battery Cycle Count