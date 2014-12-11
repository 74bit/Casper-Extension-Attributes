#!/bin/sh
bashVersion=$(bash --version | grep -o '[0-9]*\.[0-9]*\.[0-9]*')
echo "<result>$bashVersion</result>"
#ea_display_name	Bash
