#!/bin/sh
# This script reports whether sharing printers over a network is enabled or disabled.
# Created by Owen Pragel on February 21st, 2014.
sharingEnabled=`cupsctl | grep share | tail -c2`
printf '<result>'
if [[ "$sharingEnabled" == "0" ]]; then
  printf 'F'
else
  printf 'T'
fi
printf '</result>'
#ea_display_name	Printer Sharing
