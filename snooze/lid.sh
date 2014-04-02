#!/bin/sh

state=`echo "$1"|awk '{print $3}'`
case "$state" in
  open) 
    #echo "$(uptime) Lid opened" >> /var/log/lid.log  
    initctl emit --no-wait lid-opened 
    ;;
  close) 
    #echo "$(uptime) Lid closed" >> /var/log/lid.log  
    initctl emit --no-wait lid-closed
    pm-suspend 
    ;;
esac
