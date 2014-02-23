#!/bin/sh
# This script reports whether sharing printers over a network is enabled or disabled.
# Created by Owen Pragel on February 21st, 2014.
sharingEnabled=$(cupsctl | grep share | tail -c2)
if [[ "$sharingEnabled" == "0" ]]; then
  echo "<result>"Disabled"</result>"
else
  echo "<result>"Enabled"</result>"
fi
exit 0
