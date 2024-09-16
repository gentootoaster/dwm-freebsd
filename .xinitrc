setxkbmap -layout us,ru -option grp:shifts_toggle &
feh --bg-fill ~/Downloads/freebsd-magenta-pink-1920x1080.png &
picom --config ~/.config/picom/picom.conf &
xrandr --output HDMI-0 --mode 1920x1080 --rate 75 &
exec dwm
