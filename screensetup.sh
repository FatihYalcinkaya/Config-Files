#!/bin/sh
# Bilgisayar ekranını ayarla
xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal

# HDMI'yi aktif hale getir
xrandr --output HDMI1 --mode 1920x1080 --rate 100 --pos 0x0 --rotate normal
