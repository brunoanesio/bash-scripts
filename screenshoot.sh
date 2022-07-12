#!/bin/sh
output=~/Imagens/screenshots/$(date +%d-%m-%y-%H-%M-%S).png

case "$1" in
"select") maim -s "$output" || exit ;;
*) maim "$output" || exit ;;
esac

notify-send "Screenshot saved in $output"
