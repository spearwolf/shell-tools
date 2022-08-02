#!/bin/bash

which gm &> /dev/null || {
  echo "Please install GraphicsMagick first!"
  exit 2
}

if [ $# -ne 3 ]; then
  cat <<USAGE
Insufficient parameters specified!

usage:
  $ $0 <WIDTH>x<HEIGHT> <path-to-INPUT-image> <path-to-OUTPUT-image>
USAGE
  exit 1
fi

gm convert -resize $1^ -gravity center -extent $1 "$2" "$3"
