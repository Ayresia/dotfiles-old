#!/usr/bin/env bash

# Terminate all running polybar instances
killall -q polybar

# Launching bar
polybar example >> /tmp/polybar.log 2>&1 &

echo "Bar has been launched."
