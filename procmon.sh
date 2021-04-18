#!/bin/bash
# simple bash script to monitor active processes
# from IppSec: https://www.youtube.com/watch?v=K9DKULxSBK4

IFS=$'\n'

old_ps=$(ps -eo command)

while true; do
  new_ps=$(ps -eo command)
  diff <(echo "$old_ps") <(echo "$new_ps")
  sleep 1
  old_ps=$new_ps
done;
