#!/bin/bash
# Displays hostname
computerHostName=$(hostname)
echo "<result>$computerHostName</result>"
exit 0
#ea_display_name	Host name
On Error Resume Next
Dim WshNetwork
Set WshNetwork = WScript.CreateObject("WScript.Network")
WScript.Echo "<result>" & WshNetwork.ComputerName & "</result>"
