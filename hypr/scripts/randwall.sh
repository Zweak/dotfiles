#/bin/bash
random_wallpaper=$(find $wallpaper_path -type f | shuf -n 1)
swww img "$random_wallpaper" --transition-type any --transition-fps 60