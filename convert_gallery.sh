#!/bin/bash

DIR=`pwd`
echo "Converting images from $DIR/incoming to $DIR/gallery"


for file in gallery/*.jpg; do
    if [[ $flie == *"scaled"* ]]; then
        continue
    fi

    echo Processing $file
    
    ext=${file##*.}
    basename=${file%.*}
    convert  -resize 320x256\! $file "$basename"_scaled.$ext
    convert -depth 8 "$basename"_scaled.$ext "$basename"_scaled.rgb
    #./pisstv "$basename".rgb "$basename".ft
done