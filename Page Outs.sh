#!/bin/sh
pageIns=$(/usr/bin/vm_stat | /usr/bin/grep -i pageins | /usr/bin/awk '{print $NF}' | /usr/bin/sed 's/\.//')
pageIns="<page_ins>$pageIns</page_ins>"
pageOuts=$(/usr/bin/vm_stat | /usr/bin/grep -i pageouts | /usr/bin/awk '{print $NF}' | /usr/bin/sed 's/\.//')
pageOuts="$pageOuts"
echo "<result>$pageOuts</result>"
#ea_display_name	Page Outs