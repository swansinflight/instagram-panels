# instagram-panels

Credit: creation of these were possible with my limited knowledge due to Xoogu: https://www.xoogu.com/2013/how-to-automatically-watermark-or-batch-watermark-photos-using-imagemagick/ 

Here are a few scripts that I use to make different instagram tiling panels.

There are (as yet untested, please give feedback!) windows batch file versions, and linux script versions (which I do use).

## Latest version: single script (linux only so far)
1. Run insta-panel.sh and select the options as prompted.
2. Discard black files as required; the script adds black to make the image square before chopping into tiles. You could edit the script to make white if you wish, I didn't want too many options.
3. Transfer to phone and post images inthe correct order, or post to arrange on your profile grid.

### How to use legacy fixed size versions:
They work on the current directory, so can be dumped into a folder with your images and run, and will spit out the tiles/panels into a new subfolder. Or, what I do, is drag the image into a folder containing your scripts and run the one you want.

### Dependencies:
All use [ImageMagick](https://github.com/ImageMagick/ImageMagick), which you will need to install separately.
On linux it can be installed from your distribution's repository, and for Windows from here: https://imagemagick.org/script/download.php#windows
Mac I don't know sorry, and.... what, I see there's an iOS verion!? That could be handy if the scripts will run...
 *let me know if you know more than I do and can make this work, as I only have a rudimentary understanding.*

script/batch file names should be self explanatory I hope.
### How it works:
1. image is resized to a width suitable for the number chosen. Default export is 1080x1080 tiles, so widths are 2160,3240,4320 (and you can edit for more hopefully once you see the files).
    * *-note that you can export to whatever size you like, just change it int he script; I actually export to 2160x2160 tiles when able, for a bit more detail. Info on the web suggests instagram saves the images at 1080x1080... but I disagree having seen both sizes uploaded to my account, and viewing on phone I can zoom better on a larger image. I should probably check the actual size myself heh*
2. image is cut into separate tiles, from across the centre of the image, and dumped into a subfolder called `/insta`.
3. That's it. Move to your phone and post, selecting the images in the correct order.

I hope this is useful to people. Enjoy :)

#### Ideas/Upgrades:
Currently I am working on insta-panels.sh as a single script to do every size. It seems to be working (in linux), and will remove the individual number ones when I am happy with it.

### Feedback / Contact
[![](https://imgur.com/RlwSYBU.png)](https://mastodon.nz/@swansinflight)
 | [Keybase](https://keybase.io/swansinflight)
 | [Matrix](https://riot.im/app/#/user/@rtwx:matrix.org?action=chat)

