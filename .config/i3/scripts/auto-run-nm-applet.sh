#!/bin/bash

if ! pgrep -x "nm-applet" > /dev/null
then
    sleep 5;
    nm-applet --indicator &
fi
