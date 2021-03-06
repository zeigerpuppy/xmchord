#!/bin/bash

#: BL + left - Terminal: Go Tab to left.  Chromium or Firefox: Go URL back.

focusApplication=`cat /proc/$(xdotool getwindowpid $(xdotool getwindowfocus))/comm`
if [[ "$focusApplication" =~ "gnome-terminal-" ]]; then
    xdotool sleep 0.1
    xdotool key Control_L+Page_Up
    exit 0;
fi
if [[ "$focusApplication" =~ "chromium-browse" ]] || [[ "$focusApplication" =~ "firefox" ]]; then
    xdotool sleep 0.1
    xdotool keydown alt key Left
    xdotool sleep 0.5
    xdotool keyup alt
    exit 0;
fi
