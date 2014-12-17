#!/bin/bash

osvers=$(sw_vers -productVersion | awk -F. '{print $2}')

if [[ ${osvers} -lt 7 ]]; then
  echo "<result>N/A</result>"
fi
 
# Checks Gatekeeper status on Macs
# running 10.7.x or higher

if [[ ${osvers} -ge 7 ]]; then
    gatekeeper_status=$(spctl --status | grep "assessments" | cut -c13-)
   if [ "$gatekeeper_status" = "disabled" ]; then
      result=Disabled
   else
      result=Active
   fi
   echo "<result>$result</result>"
fi


#ea_display_name	Gatekeeper
