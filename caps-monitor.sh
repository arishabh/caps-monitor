#!/bin/bash

##########
## Name: caps-monitor.sh
## Author: Rishabh Agrawal (arishabh.com)
## Description: 
## 			This is a script to detect if your CAPS LOCK
##			doesnt work. This sends a notification everytime
##			you turn on your CAPS LOCK button
##
## Date Modified : 30th January 2019
##
## Dependencies: send-notify, xset
## 
## Tested on Ubuntu Desktop 16.04.2 LTS
##########

Temp=""
while ( true ); do
    CAPS=$(xset q | grep Caps | cut -d " " -f6,7,10)
    
    #You can remove the second if clause if oyu want a notification everytime Caps is toggled and not on
    #Delete from here	      v               to here         v
    if [ "$CAPS" != "$Temp" ] && [ "$CAPS" == "Caps Lock: on" ]; then
        notify-send --expire-time=0 "$CAPS"
    fi
    Temp=$CAPS
    sleep 0.50
done
