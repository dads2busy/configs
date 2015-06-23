#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/configs/source/make_config
source ~/configs/source/symlinks
source ~/configs/source/tunnels
source ~/configs/source/mount_this_ssh
source ~/configs/source/environment
source ~/configs/source/python
source ~/configs/source/commands
source ~/configs/source/pacman
source ~/configs/source/vms
source ~/configs/source/vpn

alias lefty='xmodmap -e "pointer = 3 2 1"'
