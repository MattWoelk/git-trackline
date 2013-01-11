#!/bin/bash

####EXAMPLE: git blame -n -s -C -L 439,+1 bridgeChart.js
git blame -n -s -C -L $2,+1 $1
