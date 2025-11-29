#!/bin/bash

files=(~/wallpapers/*)
random_file=${files[$RANDOM % ${#files[@]}]}

swww img --transition-type grow "$random_file"
