#!/bin/sh

# Quit all running instances
killall waybar

# Load config 
waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
