#!/bin/bash
if [[ ! -d ~/Imagens/screenshots/ ]]; then
	mkdir -p ~/Imagens/screenshots/
fi
print=~/Imagens/screenshots/$(date +%d-%m-%y-%H-%M-%S).png

case "$1" in
"select") maim -s "$print" || xclip -sel clip -t image/png "$print" || exit ;;
*) maim "$print" || exit ;;
esac

notify-send "Screenshot saved in $print"
