#!/bin/sh
# Doesnt matter zsh or sh much. this is just "get whatever works". Keyword is POSIX, basd vs dash vs fish vs zsh
#Usage: bash ./bandwidth.sh

init="$(($(cat /sys/class/net/[wlan0]*/statistics/rx_bytes | paste -sd '+')))"

printf "Check bandwidth. "Enter" to stop recording."

read -r lol

fin="$(($(cat /sys/class/net/[wlan0]*/statistics/rx_bytes | paste -sd '+')))"

printf "%4sB of bandwidth used.\\n" $(numfmt --to=iec $(($fin-$init)))
