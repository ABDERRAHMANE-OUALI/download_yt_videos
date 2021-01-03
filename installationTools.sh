#!/bin/bash

set -e

declare -a VIDEOS=("https://www.youtube.com/watch?v=kGqbkumXHaU")

for VIDEO in "${VIDEOS[@]}"; do
    youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 $VIDEO
done
