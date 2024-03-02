#!/bin/bash
sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-gnome
killall xdg-desktop-portal-kde
killall xdg-desktop-portal-lxqt
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
sleep 1
/usr/lib/xdg-desktop-portal-wlr &
#systemctl --user stop --now xdg-desktop-portal-wlr
sleep 2
/usr/lib/xdg-desktop-portal &
