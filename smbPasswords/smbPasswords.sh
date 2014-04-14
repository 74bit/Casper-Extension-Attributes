#!/bin/sh
# Reports whether SMB passwords/sharing are enabled for any account on the machine.
# Created by Owen Pragel on 3/17/2014.
smbPasswords=$(pwpolicy -u pragelo gethashtypes | grep -o SMB-NT | head)
if [[ "$smbPasswords" == "SMB-NT" ]]; then
  echo "<result>True</result>"
else
  echo "<result>False</result>"
fi

exit 0
