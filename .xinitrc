setxkbmap -layout us,ru -option grp:shifts_toggle &
mixer vol.volume=0.50:0.50 &
/home/als/dwm-freebsd/my-dwm/time.sh &
picom --config ~/dwm-freebsd/picom/picom.conf &
feh --bg-fill ~/dwm-freebsd/my-dwm/wallpapers/freebsd-magenta-pink-1920x1080.png &
xrandr --output HDMI-0 --mode 1920x1080 --rate 75 &
exec dwm
