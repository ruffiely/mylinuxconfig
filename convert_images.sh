#!/bin/bash
for f in $(pwd)/*.png; do
    echo "Processing Image $f"
    convert $f -define png:big-depth=16 -define png:color-type=6 -resize $1 $f
done
