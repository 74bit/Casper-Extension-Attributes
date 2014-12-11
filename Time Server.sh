#!/bin/sh
timeServer=$(systemsetup -getnetworktimeserver | sed 's/.* //')
echo "<result>$timeServer</result>"
exit $?
#ea_display_name	Time Server
