#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
# run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop

brightnessctl s 0


xrandr --output eDP-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output HDMI-1-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-4 --off
run nm-applet
run pamac-tray
run variety
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon