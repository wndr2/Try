#!/bin/sh

wallpaper=$(ls ~/Pictures/wallpapers | dmenu -c -l 7)

[ $wallpaper -z ] || plasma-apply-wallpaperimage /home/wonder/Pictures/wallpapers/$wallpaper
