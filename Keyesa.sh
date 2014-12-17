#!/bin/bash
filePaths=( '/System/Library/StartupItems/AgentMon' '/Library/StartupItems/AgentMon' )
isPresent=0
for i in "${filePaths[@]}"
do
  if [ -f "$i" ]; then
    isPresent=1
  fi
done
printf '<result>'
if [ $isPresent == 1 ]; then
  printf 'T'
else
  printf 'F'
fi
printf '</result>'
#ea_display_name	Keyesa
