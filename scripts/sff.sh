#!/bin/sh

WIDTH=$(stty size | cut -d " " -f 2)

CUTLENGTH=$(($WIDTH - 2))

#findfiles.sh  ".*$*.*"  | cut -c 1-$CUTLENGTH | uniq


# uniq will only remove adjacent duplicates.  
# This will remove any duplicates.
findfiles.sh  ".*$*.*"  | cut -c 1-$CUTLENGTH | awk '!x[$0]++'



