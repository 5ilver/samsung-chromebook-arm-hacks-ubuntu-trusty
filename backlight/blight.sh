#!/bin/bash
# Quick brightness control script for samsung series 3 arm chromebook running chrubuntu 14.04
# Put this in /usr/local/bin/blight.sh
# Run chmod +x /usr/local/bin/blight.sh
# Add a line like this to /etc/sudoers:
# silver ALL=NOPASSWD:/usr/local/bin/blight.sh
# now use it like this:
# silver@chrubuntu:~$ sudo blight.sh up
# silver@chrubuntu:~$ sudo blight.sh down
# For maximum babe appeal, add an alias
# silver@chrubuntu:~$ echo 'alias bl="sudo blight.sh"' >> ~/.bashrc; source ~/.bashrc
# silver@chrubuntu:~$ bl up
# silver@chrubuntu:~$ bl down
# you need to install bc before you can use this.  

brightnessfile="/sys/devices/backlight.10/backlight/backlight.10/brightness"
changeamount="50"
case $1 in
	"down")
		echo "$(cat $brightnessfile) - $changeamount" | bc > $brightnessfile
		;;
	"up")
		echo "$(cat $brightnessfile) + $changeamount" | bc > $brightnessfile
		;;
	*)
		echo "Usage: As root or with sudo run the following:"
		echo "$0 [up|down]"
		;;
esac

