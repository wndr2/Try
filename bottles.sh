#!/bin/sh

bottle=$(bottles-cli list bottles | sed '1d' | dmenu -c -l 20)

if [ -z "$bottle"]|| echo "$bottle" | grep -q "Found 3 bottles:"; then
    exit 1
else
    program=$(bottles-cli programs -b "${bottle:2}" | sed '1d' | dmenu -c -l 20)
    bottles-cli run -b "${bottle:2}" -p "${program:2}"
fi
