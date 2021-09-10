#!/bin/sh

mkdir -p $HOME/Screenshots
n="$HOME/Screenshots/$(date '+%d%m%Y_%s.png')"

maim /dev/stdout "$@" | tee "$n" | xclip -sel clip -t image/png
