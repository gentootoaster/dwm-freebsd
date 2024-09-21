#!/bin/sh

# Directory containing the wallpapers
WALLPAPER_DIR="$HOME/wallpapers"

# Setting the wallpaper using feh
set_wallpaper() {
    local wallpaper_dir="$1"

    wallpaper_path=$(find "$wallpaper_dir" -type f | gshuf -n 1)

    if [ -z "$wallpaper_path" ]; then
        echo "No wallpapers found in $wallpaper_dir."
        exit 1
    fi

    feh --bg-fill "$wallpaper_path"
}

# Determining the time of day and set the appropriate wallpaper
set_wallpaper_by_time() {
    local wallpaper_dir="$1"
    local current_hour=$(date +%H)
 
    if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
        set_wallpaper "$wallpaper_dir/tropic_island_morning.jpg"
    elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 18 ]; then
        set_wallpaper "$wallpaper_dir/tropic_island_day.jpg"
    elif [ "$current_hour" -ge 18 ] && [ "$current_hour" -lt 22 ]; then
        set_wallpaper "$wallpaper_dir/tropic_island_evening.jpg"
    else
        set_wallpaper "$wallpaper_dir/tropic_island_night.jpg"
    fi
}

# Main loop
while true; do
    set_wallpaper_by_time "$WALLPAPER_DIR"
    sleep 60 # Activate script every minute
done
