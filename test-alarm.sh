#!/bin/sh
set -e
readarray inputs < $1.test
rm -f $1.out
sleep 1
unbuffer timeout -s SIGINT 33s ./My_Alarm "${inputs[@]}" >> $1.out
