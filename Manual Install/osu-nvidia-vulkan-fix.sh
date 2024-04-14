#!/bin/bash

echo "This command will be run: sudo ln -s /usr/lib/libdl.so.2 /usr/lib/libdl.so"
read -p "Continue? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

sudo ln -s /usr/lib/libdl.so.2 /usr/lib/libdl.so

if [[ $SDL_VIDEODRIVER == "wayland" ]]; then
	echo "SDL_VIDEODRIVER is already set to $SDL_VIDEODRIVER"
	echo "nothing to do"
	exit 0
elif [[ $XDG_SESSION_TYPE == "x11" ]]; then
	echo "You're running on $XDG_SESSION_TYPE"
	echo "nothing to do"
	exit 0
else
	read -p "SDL_VIDEODRIVER is not set to wayland would you like to set it? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
	echo "env = SDL_VIDEODRIVER,wayland" >>../hyprland.conf
	echo ""
	echo "Please re-login Hyprland"
	echo ""
	exit 0
fi
