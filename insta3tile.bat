@echo off
FOR %%i IN (./\*.jpg ./\*.jpeg ./\*.png) DO (
    IF NOT EXIST ./\insta then mkdir insta
    convert ^
    -filter Lanczos ^
    "%%i" ^
    -set option:filter:filter Lanczos ^
    -set option:filter:blur 0.8 ^
    -resize 3240x3240 ^
    -quality 95 ^
    -crop 1080x1080 +repage +adjoin \
    "./insta/%%~nxi"
)
