#!/bin/bash
# This is script logs every screen lock/unlock.
# It's supposed to take a picture of the user using the webcam on unlock.
# Requires `streamer`, which should be already installed befor running this script.

watcher() {
    log_lock() {
	NOW=$(date +"%Y_%m_%d-%H:%M:%ST%z")
	echo "$NOW: SCREEN_LOCKED" >> lock_screen.log
    }

    log_unlock() {
	NOW=$(date +"%Y_%m_%d-%H:%M:%ST%z")
	echo "$NOW: SCREEN_UNLOCKED" >> lock_screen.log
	FILE="./Pictures/gotcha_$NOW.jpeg"
	streamer -f jpeg -o $FILE
    }

    while read x; do
	case "$x" in 
	    *"boolean true"*) log_lock;;
	    *"boolean false"*) log_unlock;;
	esac
    done
}

dbus-monitor --session "type='signal',interface='org.cinnamon.ScreenSaver'" | watcher