#!/bin/bash

files=(~/wallpapers/*)
random_file=${files[$RANDOM % ${#files[@]}]}

awww img --transition-type grow "$random_file"
