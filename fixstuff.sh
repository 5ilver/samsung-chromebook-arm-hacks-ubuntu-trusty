#!/bin/bash

#Script to tweak a few things post install for chrubuntu 14.04 on a samsung arm chromebook using the s9ryd script. 

set -e

apt-get update
apt-get -y install pm-utils acpid

cp snooze/98_record_interrupts /etc/pm/sleep.d
cp snooze/99_inform_upstart /etc/pm/sleep.d
cp snooze/disable-touchpad-wake.conf /etc/init
cp snooze/lid.conf /etc/init
cp snooze/snooze.conf /etc/init
cp snooze/lid.sh /etc/acpi
cp snooze/lidbtn /etc/acpi/events


service acpid restart
#Disable mouse wake
echo disabled > /sys/devices/12c70000.i2c/i2c-1/1-0067/power/wakeup
#Disable keyboard wake
echo disabled > /sys/./devices/12ca0000.i2c/i2c-4/i2c-104/104-001e/power/wakeup
#Disable power button wake (Could be useful to someone)  
#echo disabled > /sys/./devices/gpio-keys.6/power/wakeup


mkdir /etc/X11/xorg.conf.d 
cp xorg/50-synaptics.conf /etc/X11/xorg.conf.d 
