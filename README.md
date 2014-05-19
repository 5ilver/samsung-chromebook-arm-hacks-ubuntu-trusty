New: Added fixstuff.sh to take care the the sleep hacks and the mouse tuning. Should work on a 100% no options s9yrd run. Just run 'sudo ./fixstuff.sh' and wait for fireworks.

Yoinked the files from https://launchpad.net/~chromebook-arm/+archive/ppa and updated for ubuntu trusty 14.04. 

xorg contains suggestions for /etc/share/X11/xorg.conf.d/50-synaptics.conf to make touchpad require less finger surface area to register a touch. 

This is for Samsung Series 3 Arm Chromebook (mine has a little whitespot on the screen, LCD donations accepted) chrubuntu users running ubuntu 14.04 trusty toothpick, and maybe useful for users running debian juicy.

The path for most of the snooze files is in debian/chromebook-snooze-hack.install since this is basically an extracted debian package.

You should probably apt-get pm-utils and acpid or you wont be able to use these
