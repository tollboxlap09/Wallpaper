@echo off
powershell -Command "Invoke-WebRequest https://github.com/tollboxlap09/Wallpaper/blob/main/TranscodedWallpaper -OutFile TranscodedWallpaper"
powershell -Command "Invoke-WebRequest https://github.com/tollboxlap09/Wallpaper/blob/main/TOOLBOXLAP.jpg"

set "TranscodedWallpaper=TranscodedWallpaper"
set "CachedImage=TOOLBOXLAP.jpg"

set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
copy /y "%CachedImage%" "%cachedFileDir%\TOOLBOXLAP.jpg"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
