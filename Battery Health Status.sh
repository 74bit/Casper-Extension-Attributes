#!/bin/bash
result=$(ioreg -r -c "AppleSmartBattery" | grep "PermanentFailureStatus" | awk '{print $3}' | sed s/\"//g)
if [ "$result" == "1" ]; then
	result="Failure"
elif [ "$result" == "0" ]; then
	result='OK'
fi
echo "<result>$result</result>"
exit 0
#ea_display_name	Battery Health Status
On Error Resume Next

Dim objBatteries
Dim strBatteries
	
Set objBatteries = GetObject("winmgmts\:").InstancesOf("Win32_Battery")
i=0
For each Battery in objBatteries
    if i <> 0 then
    strBatteries = "<br>" & strBatteries
    End if 
strBatteries = Battery.Status & strBatteries 
    i = i + 1
Next

WScript.Echo "<result>" & strBatteries & "</result>"
