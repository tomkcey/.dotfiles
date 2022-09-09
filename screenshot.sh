#!/bin/sh

screenshot_dir=~/Pictures/screenshots/
screenshot_name="$(date +%s)-s.png"

flameshot gui -p $screenshot_dir$screenshot_name

# scrot -s "$screenshot_dir$screenshot_nameo"

# import --release $screenshot_dir$screenshot_name

# notify-send "Screenshot saved to $screenshot_dir$screenshot_name"
