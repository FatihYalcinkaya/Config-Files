#!/bin/sh
# Bilgisayar ekranını ana ekran olarak ayarla ve HDMI'ye yansıt
xrandr --output eDP1 --mode 1920x1080 --primary --pos 0x0 --rotate normal \
  --output HDMI1 --mode 1920x1080 --same-as eDP1 --rate 60
