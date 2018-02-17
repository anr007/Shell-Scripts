#!/bin/bash
a=0
if ping -q -c 1 -W 1 google.com >/dev/null; then
  a=1
else
  a=0
fi
while [ "$a" != "1" ]    
do 
  sleep 60
  if ping -q -c 1 -W 1 google.com >/dev/null; then
    a=1
  else
    a=0
  fi
done
# execute your work here
cd
