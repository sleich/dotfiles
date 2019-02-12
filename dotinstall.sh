#!/bin/sh
src="$HOME/misc/repos/dots/.config"
destdir="$HOME/.config"

if [ ! -d $destdir ]
  then
    echo $destdir does not exist; exit 1
fi

for i in $(find "$src" -maxdepth 1 -mindepth 1)
  do
    if [ -f $i ]
      then
        ln -s -t $destdir $i
    elif [ -d $i ]
      then
        current="$destdir/$(basename $i)"
        mkdir -p $current
        for l in $(find $i -mindepth 1)
          do
            ln -s -t $current $l
        done
  fi
done
