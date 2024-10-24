#!/bin/sh

game=$(lutris -l | dmenu -c -l 20)

if [ -z "$game"]; then
    exit 1
else
    number=$(echo "$game" | cut -d '|' -f 1 | xargs)
    echo $number
    lutris "$number"
fi
