#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias redwm='cd ~/dwm; updpkgsums; makepkg -efi --noconfirm; killall dwm'
export LANG=en_US.UTF-8

PS1='[\u@\h \W]\$ '
