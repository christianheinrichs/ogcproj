#!/usr/bin/env bash

# ogcproj: fresh-start.sh
# Last modified on 19 March 2022

# This script empties the folders by deleting all files in them. It enables the
# user to have a ‘fresh start’, so they can use their own custom configuration
# files

# TODO: Find Linux equivalent of `title` command on Windows
# title ogcproj: FS script

printf "ogcproj: FS script running\n"

# Counter-Strike
printf "Counter-Strike: Emptying folder...\n"
rm "goldsrc/cs/*"

printf "Counter-Strike: Done.\n\n"

# Counter-Strike: Condition Zero
printf "Counter-Strike: Condition Zero - Emptying folder...\n"
rm "goldsrc/cscz/*"

printf "Counter-Strike: Condition Zero - Done.\n\n"

# Counter-Strike: Condition Zero - Deleted scenes
printf "Counter-Strike: Condition Zero - Deleted scenes: Emptying folder...\n"
rm "goldsrc/csczds/*"

printf "Counter-Strike: Condition Zero - Deleted scenes: Done.\n\n"

# Counter-Strike: Global Offensive
printf "Counter-Strike: Global Offensive - Emptying folder...\n"
rm "source/csgo/*"

printf "Counter-Strike: Global Offensive - Done.\n\n"

# Counter-Strike: Source
printf "Counter-Strike: Source - Emptying folder...\n"
rm "source/css/*"

printf "Counter-Strike: Source - Done.\n\n"

# Day of Defeat
printf "Day of Defeat: Emptying folder...\n"
rm "goldsrc/dod/*"

printf "Day of Defeat: Done.\n\n"

# Day of Defeat: Source
printf "Day of Defeat: Source - Emptying folder...\n"
rm "source/dods/*"

printf "Day of Defeat: Source - Done.\n\n"

# Deathmatch Classic
printf "Deathmatch Classic: Emptying folder...\n"
rm "goldsrc/dmc/*"

printf "Deathmatch Classic: Done.\n\n"

# Half-Life
printf "Half-Life: Emptying folder...\n"
rm "goldsrc/hl1/*"

printf "Half-Life: Done.\n\n"

# Half-Life: Blue Shift
printf "Half-Life: Blue Shift - Emptying folder...\n"
rm "goldsrc/hl1bs/*"

printf "Half-Life: Blue Shift - Done.\n\n"

# Half-Life: Opposing Force
printf "Half-Life: Opposing Force - Emptying folder...\n"
rm "goldsrc/hl1of/*"

printf "Half-Life: Opposing Force - Done.\n\n"

# Half-Life 2
printf "Half-Life 2: Emptying folder...\n"
rm "source/hl2/*"

printf "Half-Life 2: Done.\n\n"

# Half-Life 2: Deathmatch
printf "Half-Life 2: Deathmatch - Emptying folder...\n"
rm "source/hl2dm/*"

printf "Half-Life 2: Deathmatch - Done.\n\n"

# Half-Life 2: Episode One
printf "Half-Life 2: Episode One - Emptying folder\n"
rm "source/hl2ep1/*"

printf "Half-Life 2: Episode One\n\n"

# Half-Life 2: Episode Two
printf "Half-Life 2: Episode Two - Emptying folder\n"
rm "source/hl2ep2/*"

printf "Half-Life 2: Episode Two\n\n"

# Half-Life 2: Lost Coast
printf "Half-Life 2: Lost Coast - Emptying folder\n"
rm "source/hl2lc/*"

printf "Half-Life: Lost Coast\n\n"

# Half-Life Deathmatch: Source
printf "Half-Life Deathmatch: Source - Emptying folder\n"
rm "source/hl2dms/*"

printf "Half-Life Deathmatch: Source - Done.\n\n"

# Left 4 Dead
printf "Left 4 Dead: Emptying folder\n"
rm "source/l4d1/*"

printf "Left 4 Dead: Done.\n\n"

# Left 4 Dead 2
printf "Left 4 Dead 2: Emptying folder\n"
rm "source/l4d2/*"

printf "Left 4 Dead 2: Done.\n\n"

# Portal
printf "Portal: Emptying folder\n"
rm "source/portal/*"

printf "Portal: Done.\n\n"

# Portal 2
printf "Portal 2: Emptying folder\n"
rm "source/portal2/*"

printf "Portal 2: Done.\n\n"

# Quake III
printf "Quake III: Emptying folder\n"
rm "quake/q3/*"

printf "Quake III: Done.\n\n"

# Ricochet
printf "Ricochet: Emptying folder\n"
rm "goldsrc/ricochet/*"

printf "Ricochet: Done.\n\n"

# Team Fortress 2
printf "Team Fortress 2: Emptying folder\n"
rm "source/tf2/*"

printf "Team Fortress 2: Done.\n\n"

# Team Fortress Classic
printf "Team Fortress Classic: Emptying folder\n"
rm "goldsrc/tfc/*"

printf "Team Fortress Classic: Done.\n\n"

printf "All folders have been emptied. Proceed to copy your own\n"
printf "configuration files into them\n"

# pause
