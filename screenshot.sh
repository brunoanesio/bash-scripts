#!/bin/bash
if [[ ! -d ~/Imagens/screenshots/ ]]; then
	mkdir -p ~/Imagens/screenshots/
fi
output=~/Imagens/screenshots/$(date +%d-%m-%y-%H-%M-%S).png

case "$1" in
"select") maim -s "$output" || exit ;;
*) maim "$output" || exit ;;
esac

# TODO: copy output to clipboard
xclip -sel clip -t image/png "$output"

notify-send "Screenshot saved in $output"
