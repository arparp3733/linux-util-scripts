#!/bin/bash
ID=`xinput --list | grep ImPS | cut -d'=' -f2 | cut -d'[' -f1 | tr -d [:blank:]`
TP_STATE=`xinput --list-props $ID | grep Enabled | cut -d':' -f2 | tr -d [:blank:]`
if [ $TP_STATE -eq 0 ]
then
	`xinput set-prop $ID "Device Enabled" 1`
elif [ $TP_STATE -eq 1 ]
then
	`xinput set-prop $ID "Device Enabled" 0`
fi
