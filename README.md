# instagram-panels

Credit: creation of these were possible with my limited knowledge due to Xoogu: https://www.xoogu.com/2013/how-to-automatically-watermark-or-batch-watermark-photos-using-imagemagick/ 

Here are a few scripts that I use to make different instagram tiling panels.

There are windows batch file versions, and linux script versions.

###
How to use:
They work on the current directory, so can be dumped into a folder with your images and run, and will spit out the tiles/panels into a new subfolder. Or, what I do, is drag the image into a folder containing your scripts and run the one you want.

### Dependencies:
All use `imagemagick`, which you will need to install separately.
On linux it can be installed from your distribution's repository, and for Windows from here: https://imagemagick.org/script/download.php#windows
Mac I don't know sorry, and.... what, I see there's an iOS verion!? That could be handy if the scripts will run...
 *let me know if you know more than I do and can make this work, as I only have a rudimentary understanding.*

script/batch file names should be self explanatory I hope.
### How it works:
1. image is resized to a width suitable for the number chosen. Default export is 1080x1080 tiles, so widths are 2160,3240,4320 (and you can edit for more hopefully once you see the files).
*note that you can export to whatever size you like, I actually export to 2160x2160 tiles when able, for a bit more detail. Info ont he web seems to say instagram is 1080x1080... but I disagree having seem both uploaded to my account and viewing on phone I can zoom beter on a larger image. I should probably heck the actual size myself heh*
2. image is cut into separate tiles, from across the centre of the image, and dumped into a subfolder called `/insta`.
3. That's it. Move to your phone and post, selecting the images in the correct order.

I hope this is useful to people. Enjoy :)

#### Ideas/Upgrades:
It would be nice to have this just a single interactive script, and ask how many tiles are desired then have it scale the script to suit. I am guessing this is possible, but I do not have the know-how to do it. Yet. We'll see if I get time to work it out.
