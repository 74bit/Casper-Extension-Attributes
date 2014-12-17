#!/bin/bash
# Reports 'T' if shellshock-vulnerable, otherwise F.
bashVersion=$(bash --version | grep -o '[0-9]*\.[0-9]*\.[0-9]*')
bashVersionWithoutDots=$(tr -dc '0-9' <<< "$bashVersion")
printf '<result>'
if [[ "$bashVersionWithoutDots" -le "3253" ]]; then
	printf 'T'
else
	printf 'F'
fi
printf '</result>'
#ea_display_name	Bash
