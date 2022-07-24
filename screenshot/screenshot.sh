#!/bin/bash
if [[ ! -d ~/Imagens/screenshots/ ]]; then
	mkdir -p ~/Imagens/screenshots/
fi
output=~/Imagens/screenshots/$(date +%d-%m-%y-%H-%M-%S).png

case "$1" in
"select") maim -s "$output" || xclip -sel clip -t image/png "$output" || exit ;;
*) maim "$output" || exit ;;
esac

# Doesn't work in wayland, screenshot is a black screen
# if [[ "$XDG_SESSION_TYPE" = "wayland" ]]; then
# 	wl-copy <"$output"
# else
# 	xclip -sel clip -t image/png "$output"
# fi

notify-send "Screenshot saved in $output"
