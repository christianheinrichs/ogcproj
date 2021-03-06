@echo off

rem ogcproj: fresh-start.bat
rem Last modified on 8 June 2022

rem This script empties the folders by deleting all files in them. It enables
rem the user to have a ‘fresh start’, so they can use their own custom
rem configuration files

title ogcproj: FS script

echo ogcproj: FS script running

rem Counter-Strike
echo Counter-Strike: Emptying folder...
del /q "goldsrc\cs\*"

echo Counter-Strike: Done.
echo.

rem Counter-Strike: Condition Zero
echo Counter-Strike: Condition Zero - Emptying folder...
del /q "goldsrc\cscz\*"

echo Counter-Strike: Condition Zero - Done.
echo.

rem Counter-Strike: Condition Zero - Deleted scenes
echo Counter-Strike: Condition Zero - Deleted scenes: Emptying folder...
del /q "goldsrc\csczds\*"

echo Counter-Strike: Condition Zero - Deleted scenes: Done.
echo.

rem Counter-Strike: Global Offensive
echo Counter-Strike: Global Offensive - Emptying folder...
del /q "source\csgo\*"

echo Counter-Strike: Global Offensive - Done.
echo.

rem Counter-Strike: Source
echo Counter-Strike: Source - Emptying folder...
del /q "source\css\*"

echo Counter-Strike: Source - Done.
echo.

rem Day of Defeat
echo Day of Defeat: Emptying folder...
del /q "goldsrc\dod\*"

echo Day of Defeat: Done.
echo.

rem Day of Defeat: Source
echo Day of Defeat: Source - Emptying folder...
del /q "source\dods\*"

echo Day of Defeat: Source - Done.
echo.

rem Deathmatch Classic
echo Deathmatch Classic: Emptying folder...
del /q "goldsrc\dmc\*"

echo Deathmatch Classic: Done.
echo.

rem Garry’s Mod
echo Garry's Mod: Emptying folder...
del /q "source\gmod\*"

echo Garry's Mod: Done.
echo.

rem Half-Life
echo Half-Life: Emptying folder...
del /q "goldsrc\hl1\*"

echo Half-Life: Done.
echo.

rem Half-Life: Blue Shift
echo Half-Life: Blue Shift - Emptying folder...
del /q "goldsrc\hl1bs\*"


rem Half-Life: Opposing Force
echo Half-Life: Opposing Force - Emptying folder...
del /q "goldsrc\hl1of\*"

echo Half-Life: Opposing Force - Done.
echo.

rem Half-Life 2
echo Half-Life 2: Emptying folder...
del /q "source\hl2\*"

echo Half-Life 2: Done.
echo.

rem Half-Life 2: Deathmatch
echo Half-Life 2: Deathmatch - Emptying folder...
del /q "source\hl2dm\*"

echo Half-Life 2: Deathmatch - Done.
echo.

rem Half-Life 2: Episode One
echo Half-Life 2: Episode One - Emptying folder
del /q "source\hl2ep1\*"

echo Half-Life 2: Episode One
echo.

rem Half-Life 2: Episode Two
echo Half-Life 2: Episode Two - Emptying folder
del /q "source\hl2ep2\*"

echo Half-Life 2: Episode Two
echo.

rem Half-Life 2: Lost Coast
echo Half-Life 2: Lost Coast - Emptying folder
del /q "source\hl2lc\*"

echo Half-Life: Lost Coast
echo.

rem Half-Life Deathmatch: Source
echo Half-Life Deathmatch: Source - Emptying folder
del /q "source\hl2dms\*"

echo Half-Life Deathmatch: Source - Done.
echo.

rem Hexen II
echo Hexen II: Emptying folder
del /q "h2se\h2\*"

echo Hexen II: Done.
echo.

rem Left 4 Dead
echo Left 4 Dead: Emptying folder
del /q "source\l4d1\*"

echo Left 4 Dead: Done.
echo.

rem Left 4 Dead 2
echo Left 4 Dead 2: Emptying folder
del /q "source\l4d2\*"

echo Left 4 Dead 2: Done.
echo.

rem PAYDAY: The Heist
echo PAYDAY: The Heist - Emptying folder
del /q "payday\pdth\*"

echo PAYDAY: The Heist - Done.
echo.

rem Portal
echo Portal: Emptying folder
del /q "source\portal\*"

echo Portal: Done.
echo.

rem Portal 2
echo Portal 2: Emptying folder
del /q "source\portal2\*"

echo Portal 2: Done.
echo.

rem Quake II
echo Quake II: Emptying folder
del /q "quake\q2\*"

echo Quake II: Done.
echo.

rem Quake III
echo Quake III: Emptying folder
del /q "quake\q3\*"

echo Quake III: Done.
echo.

rem Ricochet
echo Ricochet: Emptying folder
del /q "goldsrc\ricochet\*"

echo Ricochet: Done.
echo.

rem Team Fortress 2
echo Team Fortress 2: Emptying folder
del /q "source\tf2\*"

echo Team Fortress 2: Done.
echo.

rem Team Fortress Classic
echo Team Fortress Classic: Emptying folder
del /q "goldsrc\tfc\*"

echo Team Fortress Classic: Done.
echo.

echo All folders have been emptied. Proceed to copy your own configuration
echo files into them

pause
