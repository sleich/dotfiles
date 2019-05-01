#!/bin/sh
file=$(mktemp /tmp/vtype.XXXXX)

xsel -b -o > $file

# For some reason i can't fold file in place
change=$(fold -w 130 -s $file)
echo "$change" > $file
sed -i "s/—/-/;s/—/-/;s/…/.../;s/’/\'/;s/–/-/;s/–/-/;s/’/\'/;s/’/\'/;s/‘/\'/;s/”/\"/;s/“/\"/;s/‘/\'/;s/’/\'/;s/–/-/;s/^[ \t]*//;s/[ \t]*$//g" "$file"

nvim -c ":set noequalalways" -d $file " "
rm -f $file
