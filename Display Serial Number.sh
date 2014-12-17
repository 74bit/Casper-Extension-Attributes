#!/bin/bash
serial=$(system_profiler SPDisplaysDataType | awk '/Display Serial Number/{print $NF;exit}')
printf "<result>%s</result>" "$serial"
#ea_display_name	Display Serial Number