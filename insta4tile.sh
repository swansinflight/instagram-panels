#!/bin/bash
for i in ./*.jpg ./*.jpeg ./*.png
do
    if [ ! -d "./insta" ]; then mkdir "./insta"; fi
    filename=$(basename "$i")
    /bin/convert \
    -filter Lanczos \
    "$i" \
    -set option:filter:filter Lanczos \
    -set option:filter:blur 0.8 \
    -resize 4320x4320 \
    -quality 95 \
    -crop 1080x1080 +repage +adjoin \
    "./insta/$filename"
done
