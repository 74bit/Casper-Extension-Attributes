#!/bin/bash
# Commands required by this script
declare -x awk="/usr/bin/awk"
declare -x sysctl="/usr/sbin/sysctl"
declare -x perl="/usr/bin/perl"
 
declare -xi DAY=86400
declare -xi EPOCH="$($perl -e "print time")"
declare -xi UPTIME="$($sysctl kern.boottime |
                        $awk -F'[= ,]' '/sec/{print $6;exit}')"
 
declare -xi DIFF="$(($EPOCH - $UPTIME))"
printf '<result>'
if [ $DIFF -le $DAY ] ; then
        printf '1'
else
        printf "$(($DIFF / $DAY))"
fi
printf '</result>'

#ea_display_name	Uptime
