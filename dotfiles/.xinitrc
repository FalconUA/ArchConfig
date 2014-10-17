#! /bin/bash

setxkbmap -option terminate:ctrl_alt_bksp

feh --bg-scale ~/arch.png
#feh --bg-scale ~/Bridge.jpg

# Set some defaults
export BROWSER=firefox &
export EDITOR=vim &

# Set ibus configurations
export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=ibus &
ibus-daemon -drx &

conky | while read -r 
do
#	xsetroot -name "$( date +"%F %R" )"
#	if acpi -a | grep off-line > /dev/null; then
#		xsetroot -name "Bat. $(awk 'sub(/,/,"") {print $3, $4}' <(acpi -b)) \
#		| Vol. $(awk '/dB/ { gsub(/[\[\]]/,""); print $5}' < (amixer get Master)) \
#		| $(date +"%a, %b %d %R")"
#	else
#		xsetroot -name "Vol. $(awk '/dB/ { gsub(/[\[\]]/,""); print $5}' <(amixer get Master)) | $(date +"%a, %b %d %R")"
#	fi

#	xsetroot -name "$(acpi -b | awk 'sub(/,/,"") {print $3, $4}')"
#	python testscript;
	xsetroot -name "$REPLY [0m $(date +"%a, %b %d %R") [0m" 
done &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 

setxkbmap -layout "us,ru(winkeys)" -option "grp:ctrl_shift_toggle" & 
start-pulseaudio-x11 &
exec dwm 

