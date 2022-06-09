@echo off

rem ogcproj: backup-configs.bat
rem Last modified on 8 June 2022

rem This script backs up configuration files

title ogcproj: Configuration backup script running

rem Keep old backups?
set "keepoldfiles=yes"

rem Game root directory
set "gamerootdir="

rem This script assumes that all GoldSrc and Source games are installed in the
rem default Steam installation path; tweak if necessary
set "steamdir=C:\Program Files (x86)\Steam\steamapps\common"

rem Uncomment the next line if any of the following games is installed in an
rem alternate Steam library folder. If that’s the case, the following variables
rem need to be adjusted as well
rem set "steamlibdir=S:\Users\User\SteamLibrary\steamapps\common"

rem GoldSrc section
rem Since pretty much every game or mod in this case is based on HL1 root,
rem define HL1 first
set "hl1dir=%steamdir%\Half-Life"
set "csdir=%hl1dir%\cstrike"
set "csczdir=%hl1dir%\czero"
set "csczdsdir=%hl1dir%\czeror"
set "dmcdir=%hl1dir%\dmc"
set "doddir=%hl1dir%\dod"
set "hl1bsdir=%hl1dir%\bshift"
set "hl1ofdir=%hl1dir%\gearbox"
set "ricochetdir=%hl1dir%\ricochet"
set "tfcdir=%hl1dir%\tfc"

rem Hexen II software engine
set "h2dir=%gamerootdir%\HeXen II"

rem PAYDAY: The Heist
set "pdthladdir=%localappdata%\PAYDAY"

rem Quake engine section
set "q2dir=%gamerootdir%\Quake II"
set "q3dir=%gamerootdir%\Quake III Arena"

rem Source section
set "csgodir=%steamdir%\Counter-Strike Global Offensive"
set "cssdir=%steamdir%\Counter-Strike Source"
set "dodsdir=%steamdir%\Day of Defeat Source"
set "gmoddir=%steamdir%\GarrysMod"
set "hl2dir=%steamdir%\Half-Life 2"
set "hl2dmdir=%steamdir%\Half-Life 2 Deathmatch"
set "hl2ep1dir=%hl2dir%\episodic"
set "hl2ep2dir=%hl2dir%\ep2"
set "hl2lcdir=%hl2dir%\lostcoast"
set "hldmsdir=%steamdir%\Half-Life 1 Source Deathmatch"
set "l4d1dir=%steamdir%\left 4 dead"
set "l4d2dir=%steamdir%\Left 4 Dead 2"
set "portaldir=%steamdir%\Portal"
set "portal2dir=%steamdir%\Portal 2"
set "tf2dir=%steamdir%\Team Fortress 2"

rem Counter-Strike

rem Back up user configuration
if exist "%csdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Counter-Strike: Backing up old user configuration
		copy "goldsrc\cs\userconfig.cfg" "goldsrc\cs\userconfig.cfg.bak"
		echo.

		echo Counter-Strike: Backing up user configuration
		copy "%csdir%\userconfig.cfg" "goldsrc\cs"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Counter-Strike: Backing up user configuration
		copy "%csdir%\userconfig.cfg" "goldsrc\cs"
		echo.
	)
) else (
	echo Counter-Strike: User configuration not found. Skipping...
	echo.
)

echo Counter-Strike: Done.
echo.

rem Counter-Strike: Condition Zero

rem Back up user configuration
if exist "%csczdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Counter-Strike: Condition Zero - Backing up old user configuration
		copy "goldsrc\cscz\userconfig.cfg" "goldsrc\cscz\userconfig.cfg.bak"
		echo.

		echo Counter-Strike: Condition Zero - Backing up user configuration
		copy "%csczdir%\userconfig.cfg" "goldsrc\cscz"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Counter-Strike: Condition Zero - Backing up user configuration
		copy "%csczdir%\userconfig.cfg" "goldsrc\cscz"
		echo.
	)
) else (
	echo Counter-Strike: Condition Zero - User configuration not found. Skipping...
	echo.
)

echo Counter-Strike: Condition Zero - Done.
echo.

rem Counter-Strike: Condition Zero - Deleted scenes

rem Back up user configuration
if exist "%csczdsdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Counter-Strike: Condition Zero - Deleted scenes: Backing up old user configuration
		copy "goldsrc\csczds\userconfig.cfg" "goldsrc\csczds\userconfig.cfg.bak"
		echo.

		echo Counter-Strike: Condition Zero - Deleted scenes: Backing up user configuration
		copy "%csczdsdir%\userconfig.cfg" "goldsrc\csczds"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Counter-Strike: Condition Zero - Deleted scenes: Backing up user configuration
		copy "%csczdsdir%\userconfig.cfg" "goldsrc\csczds"
		echo.
	)
) else (
	echo Counter-Strike: Condition Zero - Deleted scenes: User configuration not found. Skipping...
	echo.
)

echo Counter-Strike: Condition Zero - Deleted scenes: Done.
echo.

rem Counter-Strike: Global Offensive

rem Back up autoexec configuration
if exist "%csgodir%\csgo\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Counter-Strike: Global Offensive - Backing up old autoexec configuration
		copy "source\csgo\autoexec.cfg" "source\csgo\autoexec.cfg.bak"
		echo.

		echo Counter-Strike: Global Offensive - Backing up autoexec configuration
		copy "%csgodir%\csgo\cfg\autoexec.cfg" "source\csgo"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Counter-Strike: Global Offensive - Backing up autoexec configuration
		copy "%csgodir%\csgo\cfg\autoexec.cfg" "source\csgo"
		echo.
	)
) else (
	echo Counter-Strike: Global Offensive - Autoexec configuration not found. Skipping...
	echo.
)

rem This section is currently broken, since I don’t know how to reliably
rem query the userdata ID, so instead I replaced it with an asterisk until
rem a solution is found

rem Backup video configuration
rem if exist "%steamdir%\userdata\*\730\local\cfg\video.txt" (
rem 	if "%keepoldfiles%" == "yes" (
rem 		echo Counter-Strike: Global Offensive - Backing up old video configuration
rem 		copy "source\csgo\video.txt" "source\csgo\video.txt.bak"
rem 		echo.
rem
rem 		echo Counter-Strike: Global Offensive - Backing up video configuration
rem 		copy "%steamdir%\userdata\*\730\local\cfg\video.txt" "source\csgo"
rem 		echo.
rem 	) else if "%keepoldfiles%" == "no" (
rem 		echo Counter-Strike: Global Offensive - Backing up video configuration
rem 		copy "%steamdir%\userdata\*\730\local\cfg\video.txt" "source\csgo"
rem 		echo.
rem 	)
rem ) else (
rem 	echo Counter-Strike: Global Offensive - Video configuration not found. Skipping...
rem 	echo.
rem )

echo Counter-Strike: Global Offensive - Done.
echo.

rem Counter-Strike: Source

rem Back up autoexec configuration
if exist "%cssdir%\cstrike\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Counter-Strike: Source - Backing up old autoexec configuration
		copy "source\css\autoexec.cfg" "source\css\autoexec.cfg.bak"
		echo.

		echo Counter-Strike: Source - Backing up autoexec configuration
		copy "%cssdir%\cstrike\cfg\autoexec.cfg" "source\css"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Counter-Strike: Source - Backing up autoexec configuration
		copy "%cssdir%\cstrike\cfg\autoexec.cfg" "source\css"
		echo.
	)
) else (
	echo Counter-Strike: Source - Autoexec configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Counter-Strike: Source - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\cstrike\Settings" "source\css\css.reg" /y

echo Counter-Strike: Source - Done.
echo.

rem Day of Defeat

rem Backup user configuration
if exist "%doddir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Day of Defeat: Backing up old user configuration
		copy "goldsrc\dod\userconfig.cfg" "goldsrc\dod\userconfig.cfg.bak"
		echo.

		echo Day of Defeat: Backing up user configuration
		copy "%doddir%\userconfig.cfg" "goldsrc\dod"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Day of Defeat: Backing up user configuration
		copy "%doddir%\userconfig.cfg" "goldsrc\dod"
		echo.
	)
) else (
	echo Day of Defeat: User configuration not found. Skipping...
	echo.
)

echo Day of Defeat: Done.
echo.

rem Day of Defeat: Source

rem Backup autoexec configuration
if exist "%dodsdir%\dod\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Day of Defeat: Source - Backing up old autoexec configuration
		copy "source\dods\autoexec.cfg" "source\dods\autoexec.cfg.bak"
		echo.

		echo Day of Defeat: Source - Backing up autoexec configuration
		copy "%dodsdir%\dod\cfg\autoexec.cfg" "source\dods"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Day of Defeat: Source - Backing up autoexec configuration
		copy "%dodsdir%\dod\cfg\autoexec.cfg" "source\dods"
		echo.
	)
) else (
	echo Day of Defeat: Source - Autoexec configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Day of Defeat: Source - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\dod\Settings" "source\dods\dods.reg" /y

echo Day of Defeat: Source - Done.
echo.

rem Deathmatch Classic

rem Back up user configuration
if exist "%dmcdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Deathmatch Classic: Backing up old user configuration
		copy "goldsrc\dmc\userconfig.cfg" "goldsrc\dmc\userconfig.cfg.bak"
		echo.

		echo Deathmatch Classic: Backing up user configuration
		copy "%dmcdir%\userconfig.cfg" "goldsrc\dmc"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Deathmatch Classic: Backing up user configuration
		copy "%dmcdir%\userconfig.cfg" "goldsrc\dmc"
		echo.
	)
) else (
	echo Deathmatch Classic: User configuration not found. Skipping...
	echo.
)

echo Deathmatch Classic: Done.
echo.

rem Garry’s Mod

rem Back up autoexec configuration
if exist "%gmoddir%\garrysmod\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Garry's Mod: Backing up old autoexec configuration
		copy "source\gmod\autoexec.cfg" "source\gmod\autoexec.cfg.bak"
		echo.

		echo Garry's Mod: Backing up autoexec configuration
		copy "%gmoddir%\garrysmod\cfg\autoexec.cfg" "source\gmod"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Garry's Mod: Backing up autoexec configuration
		copy "%gmoddir%\garrysmod\cfg\autoexec.cfg" "source\gmod"
		echo.
	)
) else (
	echo Garry's Mod: Autoexec configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Garry's Mod: Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\garrysmod\Settings" "source\gmod\gmod.reg" /y

echo Garry's Mod: Done.
echo.

rem Half-Life

rem Back up user configuration
if exist "%hl1dir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life: Backing up old user configuration
		copy "goldsrc\hl1\userconfig.cfg" "goldsrc\hl1\userconfig.cfg.bak"
		echo.

		echo Half-Life: Backing up user configuration
		copy "%hl1dir%\userconfig.cfg" "goldsrc\hl1"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life: Backing up user configuration
		copy "%hl1dir%\userconfig.cfg" "goldsrc\hl1"
		echo.
	)
) else (
	echo Half-Life: User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life: Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Half-Life\Settings" "source\hl1\hl1.reg" /y

echo Half-Life: Done.
echo.

rem Half-Life: Blue Shift

rem Back up user configuration
if exist "%hl1bsdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life: Blue Shift - Backing up old user configuration
		copy "goldsrc\hl1bs\userconfig.cfg" "goldsrc\hl1bs\userconfig.cfg.bak"
		echo.

		echo Half-Life: Blue Shift - Backing up user configuration
		copy "%hl1bsdir%\userconfig.cfg" "goldsrc\hl1bs"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life: Blue Shift - Backing up user configuration
		copy "%hl1bsdir%\userconfig.cfg" "goldsrc\hl1bs"
		echo.
	)
) else (
	echo Half-Life: Blue Shift - User configuration not found. Skipping...
	echo.
)

echo Half-Life: Blue Shift - Done.
echo.

rem Half-Life: Opposing Force

rem Back up user configuration
if exist "%hl1ofdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life: Opposing Force - Backing up old user configuration
		copy "goldsrc\hl1of\userconfig.cfg" "goldsrc\hl1of\userconfig.cfg.bak"
		echo.

		echo Half-Life: Opposing Force - Backing up user configuration
		copy "%hl1ofdir%\userconfig.cfg" "goldsrc\hl1of"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life: Opposing Force - Backing up user configuration
		copy "%hl1ofdir%\userconfig.cfg" "goldsrc\hl1of"
		echo.
	)
) else (
	echo Half-Life: Opposing Force - User configuration not found. Skipping...
	echo.
)

echo Half-Life: Opposing Force - Done.
echo.

rem Half-Life 2

rem Back up autoexec configuration
if exist "%hl2dir%\hl2\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life 2: Backing up old autoexec configuration
		copy "source\hl2\autoexec.cfg" "source\hl2\autoexec.cfg.bak"
		echo.

		echo Half-Life 2: Backing up autoexec configuration
		copy "%hl2dir%\hl2\cfg\autoexec.cfg" "source\hl2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life 2: Backing up autoexec configuration
		copy "%hl2dir%\hl2\cfg\autoexec.cfg" "source\hl2"
		echo.
	)
) else (
	echo Half-Life 2: Autoexec configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life 2: Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\hl2\Settings" "source\hl2\hl2.reg" /y

echo Half-Life 2: Done.
echo.

rem Half-Life 2: Deathmatch

rem Back up autoexec configuration
if exist "%hl2dmdir%\hl2mp\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life 2: Deathmatch - Backing up old autoexec configuration
		copy "source\hl2dm\autoexec.cfg" "source\hl2dm\autoexec.cfg.bak"
		echo.

		echo Half-Life 2: Deathmatch - Backing up autoexec configuration
		copy "%hl2dmdir%\hl2mp\cfg\autoexec.cfg" "source\hl2dm"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life 2: Deathmatch - Backing up autoexec configuration
		copy "%hl2dmdir%\hl2mp\cfg\autoexec.cfg" "source\hl2dm"
		echo.
	)
) else (
	echo Half-Life 2: Deathmatch - Autoexec configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life 2: Deathmatch - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\hl2mp\Settings" "source\hl2dm\hl2dm.reg" /y

echo Half-Life 2: Deathmatch - Done.
echo.

rem Half-Life 2: Episode One

rem Back up autoexec configuration
if exist "%hl2ep1dir%\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life 2: Episode One - Backing up old user configuration
		copy "source\hl2ep1\autoexec.cfg" "source\hl2ep1\autoexec.cfg.bak"
		echo.

		echo Half-Life 2: Episode One - Backing up user configuration
		copy "%hl2ep1dir%\cfg\autoexec.cfg" "source\hl2ep1"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life 2: Episode One - Backing up user configuration
		copy "%hl2ep1dir%\cfg\autoexec.cfg" "source\hl2ep1"
		echo.
	)
) else (
	echo Half-Life 2: Episode One - User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life 2: Episode One - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\episodic\Settings" "source\hl2ep1\hl2ep1.reg" /y

echo Half-Life 2: Episode One - Done.
echo.

rem Half-Life 2: Episode Two

rem Back up user configuration
if exist "%hl2ep2dir%\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life 2: Episode Two - Backing up old user configuration
		copy "source\hl2ep2\autoexec.cfg" "source\hl2ep2\autoexec.cfg.bak"
		echo.

		echo Half-Life 2: Episode Two - Backing up user configuration
		copy "%hl2ep2dir%\episodic\cfg\autoexec.cfg" "source\hl2ep2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life 2: Episode Two - Backing up user configuration
		copy "%hl2ep1dir%\cfg\autoexec.cfg" "source\hl2ep2"
		echo.
	)
) else (
	echo Half-Life 2: Episode Two - User configuration not found. Skipping...
	echo.
)

echo Half-Life 2: Episode Two - Done.
echo.

rem Half-Life 2: Lost Coast

rem Back up user configuration
if exist "%hl2lcdir%\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life 2: Lost Coast - Backing up old user configuration
		copy "source\hl2lc\autoexec.cfg" "source\hl2lc\autoexec.cfg.bak"
		echo.

		echo Half-Life 2: Lost Coast - Backing up user configuration
		copy "%hl2lcdir%\cfg\autoexec.cfg" "source\hl2lc"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life 2: Lost Coast - Backing up user configuration
		copy "%hl2lcdir%\cfg\autoexec.cfg" "source\hl2lc"
		echo.
	)
) else (
	echo Half-Life 2: Lost Coast - User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life 2: Lost Coast - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\lostcoast\Settings" "source\hl2lc\hl2lc.reg" /y

echo Half-Life 2: Lost Coast - Done.
echo.

rem Half-Life Deathmatch: Source

rem Back up user configuration
if exist "%hldmsdir%\hl1mp\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Half-Life Deathmatch: Source - Backing up old user configuration
		copy "source\hldms\autoexec.cfg" "source\hldms\autoexec.cfg.bak"
		echo.

		echo Half-Life Deathmatch: Source - Backing up user configuration
		copy "%hldmsdir%\hl1mp\cfg\autoexec.cfg" "source\hldms"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Half-Life Deathmatch: Source - Backing up user configuration
		copy "%hldmsdir%\hl1mp\cfg\autoexec.cfg" "source\hldms"
		echo.
	)
) else (
	echo Half-Life Deathmatch: Source - User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Half-Life Deathmatch: Source - Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\hl1mp\Settings" "source\hldms\hldms.reg" /y

echo Half-Life Deathmatch: Source - Done.
echo.

rem Hexen II

rem Backup configuration files
if exist "%h2dir%\data1\*.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Hexen II: Backing up old user configuration
		copy "h2se\h2\*.cfg" "h2se\h2\*.cfg.bak"
		echo.

		echo Hexen II: Backing up user configuration
		copy "%h2dir%\data1\*.cfg" "h2se\h2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Hexen II: Backing up user configuration
		copy "%h2dir%\data1\*.cfg" "h2se\h2"
		echo.
	)
) else (
	echo Hexen II: User configuration not found. Skipping...
	echo.
)

rem Left 4 Dead

rem Back up user configuration
if exist "%l4d1dir%\left4dead\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Left 4 Dead: Backing up old user configuration
		copy "source\l4d1\autoexec.cfg" "source\l4d1\autoexec.cfg.bak"
		echo.

		echo Left 4 Dead: Backing up user configuration
		copy "%l4d1dir%\left4dead\cfg\autoexec.cfg" "source\l4d1"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Left 4 Dead: Backing up user configuration
		copy "%l4d1dir%\left4dead\cfg\autoexec.cfg" "source\l4d1"
		echo.
	)
) else (
	echo Left 4 Dead: User configuration not found. Skipping...
	echo.
)

rem Backup video configuration
if exist "%l4d1dir%\left4dead\cfg\video.txt" (
	if "%keepoldfiles%" == "yes" (
		echo Left 4 Dead: Backing up old video configuration
		copy "source\l4d1\video.txt" "source\l4d1\video.txt.bak"
		echo.

		echo Left 4 Dead: Backing up video configuration
		copy "%l4d1dir%\left4dead\cfg\video.txt" "source\l4d1"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Left 4 Dead: Backing up video configuration
		copy "%l4d1dir%\left4dead\cfg\video.txt" "source\l4d1"
		echo.
	)
) else (
	echo Left 4 Dead: Video configuration not found. Skipping...
	echo.
)

echo Left 4 Dead: Done.
echo.

rem Left 4 Dead 2

rem Back up user configuration
if exist "%l4d2dir%\left4dead2\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Left 4 Dead 2: Backing up old user configuration
		copy "source\l4d2\autoexec.cfg" "source\l4d2\autoexec.cfg.bak"
		echo.

		echo Left 4 Dead 2: Backing up user configuration
		copy "%l4d2dir%\left4dead2\cfg\autoexec.cfg" "source\l4d2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Left 4 Dead 2: Backing up user configuration
		copy "%l4d2dir%\left4dead2\cfg\autoexec.cfg" "source\l4d2"
		echo.
	)
) else (
	echo Left 4 Dead 2: User configuration not found. Skipping...
	echo.
)

rem Backup video configuration
if exist "%l4d2dir%\left4dead2\cfg\video.txt" (
	if "%keepoldfiles%" == "yes" (
		echo Left 4 Dead 2: Backing up old video configuration
		copy "source\l4d2\video.txt" "source\l4d2\video.txt.bak"
		echo.

		echo Left 4 Dead 2: Backing up video configuration
		copy "%l4d2dir%\left4dead2\cfg\video.txt" "source\l4d2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Left 4 Dead 2: Backing up video configuration
		copy "%l4d2dir%\left4dead2\cfg\video.txt" "source\l4d2"
		echo.
	)
) else (
	echo Left 4 Dead 2: Video configuration not found. Skipping...
	echo.
)

echo Left 4 Dead 2: Done.
echo.

rem PAYDAY: The Heist

rem Back up partial render settings
if exist "%pdthladdir%\*.xml" (
	if "%keepoldfiles%" == "yes" (
		echo PAYDAY: The Heist - Backing up old, partial render settings
		copy "payday\pdth\*.xml" "payday\pdth\renderer_settings.xml.bak"
		echo.

		echo PAYDAY: The Heist - Backing up partial render settings
		copy "%pdthladdir%\*.xml" "payday\pdth"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo PAYDAY: The Heist - Backing up partial render settings
		copy "%pdthladdir%\*.xml" "payday\pdth"
		echo.
	)
) else (
	echo PAYDAY: The Heist - Partial render settings not found. Skipping...
	echo.
)

echo PAYDAY: The Heist - Done.
echo.

rem Portal

rem Back up user configuration
if exist "%portaldir%\portal\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Portal: Backing up old user configuration
		copy "source\portal\autoexec.cfg" "source\portal\autoexec.cfg.bak"
		echo.

		echo Portal: Backing up user configuration
		copy "%portaldir%\portal\cfg\autoexec.cfg" "source\portal"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Portal: Backing up user configuration
		copy "%portaldir%\portal\cfg\autoexec.cfg" "source\portal"
		echo.
	)
) else (
	echo Portal: User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Portal: Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\portal\Settings" "source\portal\portal.reg" /y

echo Portal: Done.
echo

rem Portal 2

rem Back up user configuration
if exist "%portal2dir%\update\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Portal 2: Backing up old user configuration
		copy "source\portal2\autoexec.cfg" "source\portal2\autoexec.cfg.bak"
		echo.

		echo Portal 2: Backing up user configuration
		copy "%portal2dir%\update\cfg\autoexec.cfg" "source\portal2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Portal 2: Backing up user configuration
		copy "%portal2dir%\update\cfg\autoexec.cfg" "source\portal2"
		echo.
	)
) else (
	echo Portal 2: User configuration not found. Skipping...
	echo.
)

rem Back up video configuration
if exist "%portal2dir%\update\cfg\video.txt" (
	if "%keepoldfiles%" == "yes" (
		echo Portal 2: Backing up old video configuration
		copy "source\portal2\video.txt" "source\portal2\video.txt.bak"
		echo.

		echo Portal 2: Backing up video configuration
		copy "%portal2dir%\update\cfg\video.txt" "source\portal2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Portal 2: Backing up video configuration
		copy "%portal2dir%\update\cfg\video.txt" "source\portal2"
		echo.
	)
) else (
	echo Portal 2: User configuration not found. Skipping...
	echo.
)

echo Portal 2: Done.
echo

rem Quake II

rem Backup configuration files
if exist "%q2dir%\baseq2\*.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Quake II: Backing up old user configuration
		copy "quake\q2\*.cfg" "quake\q2\*.cfg.bak"
		echo.

		echo Quake II: Backing up user configuration
		copy "%q2dir%\baseq2\*.cfg" "quake\q2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Quake II: Backing up user configuration
		copy "%q2dir%\baseq2\*.cfg" "quake\q2"
		echo.
	)
) else (
	echo Quake II: User configuration not found. Skipping...
	echo.
)

rem Quake III

rem Backup configuration files
if exist "%q3dir%\baseq3\*.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Quake III: Backing up old user configuration
		copy "quake\q3\*.cfg" "quake\q3\*.cfg.bak"
		echo.

		echo Quake III: Backing up user configuration
		copy "%q3dir%\baseq3\*.cfg" "quake\q3"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Quake III: Backing up user configuration
		copy "%q3dir%\baseq3\*.cfg" "quake\q3"
		echo.
	)
) else (
	echo Quake III: User configuration not found. Skipping...
	echo.
)

rem Ricochet

rem Backup user configuration
if exist "%ricochetdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Ricochet: Backing up old user configuration
		copy "goldsrc\ricochet\userconfig.cfg" "goldsrc\ricochet\userconfig.cfg.bak"
		echo.

		echo Ricochet: Backing up user configuration
		copy "%ricochetdir%\userconfig.cfg" "goldsrc\ricochet"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Ricochet: Backing up user configuration
		copy "%ricochetdir%\userconfig.cfg" "goldsrc\ricochet"
		echo.
	)
) else (
	echo Ricochet: User configuration not found. Skipping...
	echo.
)

echo Ricochet: Done.
echo.

rem Team Fortress 2

rem Back up user configuration
if exist "%tf2dir%\tf\cfg\autoexec.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old user configuration
		copy "source\tf2\autoexec.cfg" "source\tf2\autoexec.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up user configuration
		copy "%tf2dir%\tf\cfg\autoexec.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up user configuration
		copy "%tf2dir%\tf\cfg\autoexec.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: User configuration not found. Skipping...
	echo.
)

rem Backup registry key
echo Team Fortress 2: Backing up registry key
reg export "HKCU\SOFTWARE\Valve\Source\tf\Settings" "source\tf2\tf2.reg" /y

rem Backup class configurations

rem Back up Demoman configuration
if exist "%tf2dir%\tf\cfg\demoman.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Demoman configuration
		copy "source\tf2\demoman.cfg" "source\tf2\demoman.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Demoman configuration
		copy "%tf2dir%\tf\cfg\demoman.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Demoman configuration
		copy "%tf2dir%\tf\cfg\demoman.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Demoman configuration not found. Skipping...
	echo.
)

rem Back up Engineer configuration
if exist "%tf2dir%\tf\cfg\engineer.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Engineer configuration
		copy "source\tf2\engineer.cfg" "source\tf2\engineer.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Engineer configuration
		copy "%tf2dir%\tf\cfg\engineer.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Engineer configuration
		copy "%tf2dir%\tf\cfg\engineer.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Engineer configuration not found. Skipping...
	echo.
)

rem Back up Heavy configuration
if exist "%tf2dir%\tf\cfg\heavyweapons.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Heavy configuration
		copy "source\tf2\heavyweapons.cfg" "source\tf2\heavyweapons.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Heavy configuration
		copy "%tf2dir%\tf\cfg\heavyweapons.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Heavy configuration
		copy "%tf2dir%\tf\cfg\heavyweapons.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Heavy configuration not found. Skipping...
	echo.
)

rem Back up Medic configuration
if exist "%tf2dir%\tf\cfg\medic.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Medic configuration
		copy "source\tf2\medic.cfg" "source\tf2\medic.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Medic configuration
		copy "%tf2dir%\tf\cfg\medic.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Medic configuration
		copy "%tf2dir%\tf\cfg\medic.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Medic configuration not found. Skipping...
	echo.
)

rem Back up Pyro configuration
if exist "%tf2dir%\tf\cfg\pyro.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Pyro configuration
		copy "source\tf2\pyro.cfg" "source\tf2\pyro.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Pyro configuration
		copy "%tf2dir%\tf\cfg\pyro.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Pyro configuration
		copy "%tf2dir%\tf\cfg\pyro.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Pyro configuration not found. Skipping...
	echo.
)

rem Back up Scout configuration
if exist "%tf2dir%\tf\cfg\scout.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Scout configuration
		copy "source\tf2\scout.cfg" "source\tf2\scout.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Scout configuration
		copy "%tf2dir%\tf\cfg\scout.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Scout configuration
		copy "%tf2dir%\tf\cfg\scout.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Scout configuration not found. Skipping...
	echo.
)

rem Back up Sniper configuration
if exist "%tf2dir%\tf\cfg\sniper.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Sniper configuration
		copy "source\tf2\sniper.cfg" "source\tf2\sniper.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Sniper configuration
		copy "%tf2dir%\tf\cfg\sniper.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Sniper configuration
		copy "%tf2dir%\tf\cfg\sniper.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Sniper configuration not found. Skipping...
	echo.
)

rem Back up Soldier configuration
if exist "%tf2dir%\tf\cfg\soldier.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Soldier configuration
		copy "source\tf2\soldier.cfg" "source\tf2\soldier.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Soldier configuration
		copy "%tf2dir%\tf\cfg\soldier.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Soldier configuration
		copy "%tf2dir%\tf\cfg\soldier.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Soldier configuration not found. Skipping...
	echo.
)

rem Back up Spy configuration
if exist "%tf2dir%\tf\cfg\spy.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress 2: Backing up old Spy configuration
		copy "source\tf2\spy.cfg" "source\tf2\spy.cfg.bak"
		echo.

		echo Team Fortress 2: Backing up Spy configuration
		copy "%tf2dir%\tf\cfg\spy.cfg" "source\tf2"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress 2: Backing up Spy configuration
		copy "%tf2dir%\tf\cfg\spy.cfg" "source\tf2"
		echo.
	)
) else (
	echo Team Fortress 2: Spy configuration not found. Skipping...
	echo.
)

echo Team Fortress 2: Done.
echo

rem Team Fortress Classic

rem Back up user configuration
if exist "%tfcdir%\userconfig.cfg" (
	if "%keepoldfiles%" == "yes" (
		echo Team Fortress Classic: Backing up old user configuration
		copy "goldsrc\tfc\userconfig.cfg" "goldsrc\tfc\userconfig.cfg.bak"
		echo.

		echo Team Fortress Classic: Backing up user configuration
		copy "%tfcdir%\userconfig.cfg" "goldsrc\tfc"
		echo.
	) else if "%keepoldfiles%" == "no" (
		echo Team Fortress Classic: Backing up user configuration
		copy "%tfcdir%\userconfig.cfg" "goldsrc\tfc"
		echo.
	)
) else (
	echo Team Fortress Classic: User configuration not found. Skipping...
	echo.
)

echo Team Fortress Classic: Done.
echo.

pause
