#!/bin/bash

# Filepath for the picture directory
# files=(~/Pictures/select/*)

# Randomly select a file from the filepath
# file=$("${files[RANDOM % ${#files[@]}]}")
# echo $file
# Use feh to set background
#feh --bg-scale $file

# Run schemer to generate color files and put in .Xresources
# schemer -term="xterm" $file > ~/.Xresources
#echo "
#*background: #111111
#URxvt.depth: 32
#URxvt.background: rgba:1111/1111/1111/dddd
#URxvt.foreground: #dcdccc
#URxvt.scrollBar: false" >> .Xresources

# Now we merge the new colors into xserver
#xrdb -merge .Xresources

N=1
dir="/home/anon/Pictures/select/"
back="*background: #383838"
front="*foreground: #d3d3d3"
ls $dir | sort -R |tail -$N | while read file; do
feh --bg-scale $dir$file
schemer2 -format img::xterm -in $dir$file > ~/.Xresources
echo $back >> ~/.Xresources
echo $front >> ~/.Xresources
xrdb ~/.Xresources
source ~/.Xresources
cd ~
done
