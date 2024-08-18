#!/usr/bin/env bash

bash /home/fatih/.screenlayout/screenlayout.sh

xfce4-power-manager &
xfce4-clipman &
xfce4-notifyd &
slstatus &
picom &
nm-applet &
nitrogen --restore &
xset s off && xset -dpms  # ekranın 10 dk icinde gitmesini engeller.


# .local/share/dwm/autostart.sh konumuna konulacak

