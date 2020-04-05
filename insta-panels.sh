#!/bin/bash
clear
echo =====================================================
echo This script makes square tiles from across your image
echo =====================================================
echo
echo         Your tiles can be found in subfolder 
echo                /insta-panels when done
echo
read -p 'How many tiles across: ' tilenumvar
read -p 'Each tile how  many pixels wide (and high): ' tilepixelvar
echo
echo 1 - slice the entire image. Note the bottom tiles may not be squares
echo 2 - tiles from across the top
echo 3 - tiles from across the centre
echo 4 - tiles from across the bottom
read -p 'Enter the number of where you want your tiles from: ' gravitynumvar
echo 
echo -----------------------------------------------------
echo NOTE: script errors out when it runs out of images.
echo  Dont worry!
echo -----------------------------------------------------
echo
if [ "$gravitynumvar" == "1" ]; then gravityvar= ""
        elif [ "$gravitynumvar" == "2" ]; then 
		gravityvar= "-gravity north"
        elif [ "$gravitynumvar" == "3" ]; then 
		gravityvar= "-gravity center"
	elif [ "$gravitynumvar" == "4" ]; then 
		gravityvar= "-gravity south"
	else
		echo incorrect option number 
fi

let resizevar=$tilenumvar*$tilepixelvar

for i in ./*.jpg ./*.jpeg ./*.png
do
    if [ ! -d "./insta-panels" ]; then mkdir "./insta-panels"; fi
    filename=$(basename "$i")
    /bin/convert \
    -filter Lanczos \
    "$i" \
    -set option:filter:filter Lanczos \
    -set option:filter:blur 0.8 \
    -resize $[resizevar]x$[resizevar] \
    -quality 95 \
    -crop $[tilepixelvar]x$[tilepixelvar] $gravityvar +repage +adjoin \
    "./insta-panels/$filename"
done
echo 
echo ===================== FINISHED ======================
echo 
