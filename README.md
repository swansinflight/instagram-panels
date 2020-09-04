# instagram-panels

#### Credit:
With my limited knowledge, creation of these were possible due to a starting point for batch operation from Xoogu: https://www.xoogu.com/2013/how-to-automatically-watermark-or-batch-watermark-photos-using-imagemagick/ 
So yes, this will do multiple images.

There are (as yet untested, please give feedback!) windows batch file versions, and linux script versions (which I do use).

## Latest version: insta-panels.sh single script for all sizes (linux only so far)
1. Ensure images to work on are in the same directory as the script.
2. Run insta-panel.sh and select the options as prompted.
3. Discard black files as required; the script adds black to make the image square before chopping into tiles. You could edit the script to make white if you wish, I didn't want too many options
4. Transfer to phone and post images inthe correct order, or post to arrange on your profile grid.

### Dependencies:
All use [ImageMagick](https://github.com/ImageMagick/ImageMagick), which you will need to install separately.
On linux it can be installed from your distribution's repository, and for Windows from here: https://imagemagick.org/script/download.php#windows
Mac I don't know sorry, and.... what, I see there's an iOS verion!? That could be handy if the scripts will run...
 *let me know if you know more than I do and can make this work, as I only have a rudimentary understanding.*

### Legacy/Windows .bat versions:
1. Ensure images and script used are in the same directory.
2. image is resized to a width suitaable to cut into tiles. Default export is 1080x1080 tiles, so widths are 2160,3240,4320 (and you can edit for more hopefully once you see the files).
    * *-note that you can export to whatever size you like, just change it in the script; I actually export to 2160x2160 tiles when able, for a bit more detail. Info on the web suggests instagram saves the images at 1080x1080... but I disagree having seen both sizes uploaded to my account, and viewing on phone I can zoom better on a larger image. I should probably check the actual size myself heh*
3. image is cut into separate tiles, from across the centre of the image, and dumped into a subfolder called `/insta`.
4. That's it. Move to your phone and post, selecting the images in the correct order.

I hope this is useful to people. Enjoy :)

### Feedback / Contact
[![Mastodon](https://imgur.com/RlwSYBU.png)](https://mastodon.nz/@swansinflight)       [![Matrix](https://imgur.com/nSuuB4z.png)](https://app.element.io/#/user/@swansinflight:mtrx.nz?action=chat)

