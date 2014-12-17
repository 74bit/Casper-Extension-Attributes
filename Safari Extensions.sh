#!/bin/bash
safariExtensions=$(ls /Users/*/Library/Safari/Extensions)
printf "<result>%s</result>" "$safariExtensions"
#ea_display_name	Safari Extensions