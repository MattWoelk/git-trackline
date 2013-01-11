#!/bin/bash

####EXAMPLE: git blame -n -s -C -L 439,+1 bridgeChart.js
####usage: ./track_line_over_commits.sh readme.txt 2
FIRS=`git blame -n -f -s -C -L $2,+1 $1`
HASH=`echo $FIRS | awk '{print $1}'`
NEWLINE=`echo $FIRS | awk '{print $3}'`
echo $FIRS
echo $HASH
echo $NEWLINE
SECO=`git blame -n -f -s -C -L $NEWLINE,+1 $HASH -- $1`
echo $SECO
