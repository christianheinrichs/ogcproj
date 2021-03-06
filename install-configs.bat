@echo off

rem ogcproj: install-configs.bat
rem Last modified on 8 June 2022

rem This script installs all necessary configuration files into their rightful
rem places

title ogcproj: Configuration installation script running

rem Game root directory
set "gamerootdir="

rem This script assumes that all GoldSrc and Source games are installed in the
rem default Steam installation path; tweak if necessary
set "steamdir=C:\Program Files (x86)\Steam\steamapps\common"

rem Uncomment the next line if any of the following games is installed in an
rem alternate Steam library folder
rem set "steamlibdir=S:\Users\User\SteamLibrary\steamapps\common"

rem GoldSrc section
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
if exist "goldsrc\cs\*.cfg" (
	echo Counter-Strike: Installing custom configuration
	copy "goldsrc\cs\*.cfg" "%csdir%"
	echo.
) else (
	echo Counter-Strike: Configuration files not found. Skipping...
	echo.
)

echo Counter-Strike: Done.
echo.

rem Counter-Strike: Condition Zero
if exist "goldsrc\cscz\*.cfg" (
	echo Counter-Strike: Condition Zero - Installing custom configuration
	copy "goldsrc\cscz\*.cfg" "%csczdir%"
	echo.
) else (
	echo Counter-Strike: Condition Zero - Configuration files not found. Skipping...
	echo.
)

echo Counter-Strike: Condition Zero - Done.
echo.

rem Counter-Strike: Global Offensive

rem Install user configuration
if exist "source\csgo\*.cfg" (
	echo Counter-Strike: Global Offensive - Installing custom configuration
	copy "source\csgo\*.cfg" "%csgodir%\cstrike\cfg"
	echo.
) else (
	echo Counter-Strike: Global Offensive - Configuration files not found. Skipping...
	echo.
)

rem This section is currently broken, since I don???t know how to reliably query
rem the userdata ID, so instead I replaced it with an asterisk until a solution
rem is found

rem Install video.txt
rem if exist "source\csgo\video.txt" (
rem 	echo Counter-Strike: Global Offensive - Installing video configuration file
rem 	copy "source\csgo\video.txt" "%steamdir%\userdata\*\730\local\cfg"
rem 	echo.
rem ) else (
rem 	echo Counter-Strike: Global Offensive - Video configuration file not found. Skipping...
rem 	echo.
rem )

echo Counter-Strike: Global Offensive - Done.
echo.

rem Counter-Strike: Source

rem Install user configuration
if exist "source\css\*.cfg" (
	echo Counter-Strike: Source - Installing custom configuration
	copy "source\css\*.cfg" "%cssdir%\cstrike\cfg"
	echo.
) else (
	echo Counter-Strike: Source - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\css\*.reg" (
	echo Counter-Strike: Source - Installing registry key
	reg import "source\css\*.reg"
	echo.
) else (
	echo Counter-Strike: Source - Registry key file not found. Skipping...
	echo.
)

echo Counter-Strike: Source - Done.
echo.

rem Day of Defeat
if exist "goldsrc\dod\*.cfg" (
	echo Day of Defeat: Installing custom configuration
	copy "goldsrc\dod\*.cfg" "%doddir%"
	echo.
) else (
	echo Day of Defeat: Configuration files not found. Skipping...
	echo.
)

echo Day of Defeat: Done.
echo.

rem Day of Defeat: Source

rem Install user configuration
if exist "source\dods\*.cfg" (
	echo Day of Defeat: Source - Installing custom configuration
	copy "source\dods\*.cfg" "%dodsdir%\dod\cfg"
	echo.
) else (
	echo Day of Defeat: Source - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\dods\*.reg" (
	echo Day of Defeat: Source - Installing registry key
	reg import "source\dods\*.reg"
	echo.
) else (
	echo Day of Defeat: Source - Registry key file not found. Skipping...
	echo.
)

echo Day of Defeat: Source - Done.
echo.

rem Deathmatch Classic
if exist "goldsrc\dmc\*.cfg" (
	echo Deathmatch Classic: Installing custom configuration
	copy "goldsrc\dmc\*.cfg" "%dmcdir%"
	echo.
) else (
	echo Deathmatch Classic: Configuration files not found. Skipping...
	echo.
)

echo Deathmatch Classic: Done.
echo.

rem Garry???s Mod

rem Install user configuration
if exist "source\gmod\*.cfg" (
	echo Garry's Mod: Installing custom configuration
	copy "source\gmod\*.cfg" "%gmoddir%\garrysmod\cfg"
	echo.
) else (
	echo Garry's Mod: Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\gmod\*.reg" (
	echo Garry's Mod: Installing registry key
	reg import "source\gmod\*.reg"
	echo.
) else (
	echo Garry's Mod: Registry key file not found. Skipping...
	echo.
)

echo Garry's Mod: Done.
echo.

rem Half-Life

rem Install user configuration
if exist "goldsrc\hl1\*.cfg" (
	echo Half-Life: Installing custom configuration
	copy "goldsrc\hl1\*.cfg" "%hl1dir%\valve"
	echo.
) else (
	echo Half-Life: Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "goldsrc\hl1\*.reg" (
	reg import "goldsrc\hl1\*.reg"
	echo Half-Life: Installing registry key
	echo.
) else (
	echo Half-Life: Registry key not found. Skipping...
	echo.
)

echo Half-Life: Done.
echo.

rem Half-Life: Blue Shift
if exist "goldsrc\hl1bs\*.cfg" (
	echo Half-Life: Blue Shift - Installing custom configuration
	copy "goldsrc\hl1bs\*.cfg" "%hl1bsdir%"
	echo.
) else (
	echo Half-Life: Blue Shift - Configuration files not found. Skipping...
	echo.
)

echo Half-Life: Blue Shift - Done.
echo.

rem Half-Life: Opposing Force
if exist "goldsrc\hl1of\*.cfg" (
	echo Half-Life: Opposing Force - Installing custom configuration
	copy "goldsrc\hl1of\*.cfg" "%hl1ofdir%"
	echo.
) else (
	echo Half-Life: Opposing Force - Configuration files not found. Skipping...
	echo.
)

echo Half-Life: Opposing Force - Done.
echo.

rem Half-Life 2
if exist "source\hl2\*.cfg" (
	echo Half-Life 2: Installing custom configuration
	copy "source\hl2\*.cfg" "%hl2dir%\hl2\cfg"
	echo.
) else (
	echo Half-Life 2: Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hl2\*.reg" (
	echo Half-Life 2: Installing registry key
	reg import "source\hl2\*.reg"
	echo.
) else (
	echo Half-Life 2: Registry key file not found. Skipping...
	echo.
)

echo Half-Life 2: Done.
echo.

rem Half-Life 2: Deathmatch

rem Install user configuration
if exist "source\hl2dm\*.cfg" (
	echo Half-Life 2: Deathmatch - Installing custom configuration
	copy "source\hl2dm\*.cfg" "%hl2dmdir%\hl2mp\cfg"
	echo.
) else (
	echo Half-Life 2: Deathmatch - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hl2dm\*.reg" (
	echo Half-Life 2: Deathmatch - Installing registry key
	reg import "source\hl2dm\*.reg"
	echo.
) else (
	echo Half-Life 2: Deathmatch - Registry key file not found. Skipping...
	echo.
)

echo Half-Life 2: Deathmatch - Done.
echo.

rem Half-Life 2: Episode One

rem Install autoexec.cfg
if exist "source\hl2ep1\*.cfg" (
	echo Half-Life 2: Episode One - Installing custom configuration
	copy "source\hl2ep1\*.cfg" "%hl2ep1dir%\cfg"
	echo.
) else (
	echo Half-Life 2: Episode One - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hl2ep1\*.reg" (
	echo Half-Life 2: Episode One - Installing registry key
	reg import "source\hl2ep1\*.reg"
	echo.
) else (
	echo Half-Life 2: Episode One - Registry key file not found. Skipping...
	echo.
)

echo Half-Life 2: Episode One - Done.
echo.

rem Half-Life 2: Episode Two

rem Install autoexec.cfg
if exist "source\hl2ep2\*.cfg" (
	echo Half-Life 2: Episode Two - Installing custom configuration
	copy "source\hl2ep2\*.cfg" "%hl2ep2dir%\cfg"
	echo.
) else (
	echo Half-Life 2: Episode Two - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hl2ep2\*.reg" (
	echo Half-Life 2: Episode Two - Installing registry key
	reg import "source\hl2ep2\*.reg"
	echo.
) else (
	echo Half-Life 2: Episode Two - Registry key file not found. Skipping...
	echo.
)

echo Half-Life 2: Episode Two - Done.
echo.

rem Half-Life 2: Lost Coast

rem Install autoexec.cfg
if exist "source\hl2lc\*.cfg" (
	echo Half-Life 2: Lost Coast - Installing custom configuration
	copy "source\hl2lc\*.cfg" "%hl2lcdir%\cfg"
	echo.
) else (
	echo Half-Life 2: Lost Coast - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hl2lc\*.reg" (
	echo Half-Life 2: Lost Coast - Installing registry key
	reg import "source\hl2lc\*.reg"
	echo.
) else (
	echo Half-Life 2: Lost Coast - Registry key file not found. Skipping...
	echo.
)

echo Half-Life 2: Lost Coast - Done.
echo.

rem Half-Life Deathmatch: Source

rem Install autoexec.cfg
if exist "source\hldms\*.cfg" (
	echo Half-Life Deathmatch: Source - Installing custom configuration
	copy "source\hldms\*.cfg" "%hldmsdir%\hl1mp\cfg"
	echo.
) else (
	echo Half-Life Deathmatch: Source - Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\hldms\*.reg" (
	echo Half-Life Deathmatch: Source - Installing registry key
	reg import "source\hldms\*.reg"
	echo.
) else (
	echo Half-Life Deathmatch: Source - Registry key file not found. Skipping...
	echo.
)

echo Half-Life Deathmatch: Source - Done.
echo.

rem Hexen II

rem Install .cfg files
if exist "h2se\h2\*.cfg" (
	echo Hexen II: Installing custom configuration
	copy "h2se\h2\*.cfg" "%h2dir%\data1"
	echo.
) else (
	echo Hexen II: Configuration files not found. Skipping...
	echo.
)

echo Hexen II: Done.
echo.

rem Left 4 Dead

rem Install autoexec.cfg
if exist "source\l4d1\*.cfg" (
	echo Left 4 Dead: Installing custom configuration
	copy "source\l4d1\*.cfg" "%l4d1dir%\left4dead\cfg"
	echo.
) else (
	echo Left 4 Dead: Configuration files not found. Skipping...
	echo.
)

rem Install video.txt
if exist "source\l4d1\video.txt" (
	echo Left 4 Dead: Installing video configuration file
	copy "source\l4d1\video.txt" "%l4d1dir%\left4dead\cfg"
	echo.
) else (
	echo Left 4 Dead: Video configuration file not found. Skipping...
	echo.
)

echo Left 4 Dead: Done.
echo.

rem Left 4 Dead 2

rem Install autoexec.cfg
if exist "source\l4d2\*.cfg" (
	echo Left 4 Dead 2: Installing custom configuration
	copy "source\l4d2\*.cfg" "%l4d2dir%\left4dead2\cfg"
	echo.
) else (
	echo Left 4 Dead 2: Configuration files not found. Skipping...
	echo.
)

rem Install video.txt
if exist "source\l4d1\video.txt" (
	echo Left 4 Dead 2: Installing video configuration file
	copy "source\l4d2\video.txt" "%l4d2dir%\left4dead2\cfg"
	echo.
) else (
	echo Left 4 Dead 2: Video configuration file not found. Skipping...
	echo.
)

echo Left 4 Dead 2: Done.
echo.

rem PAYDAY: The Heist

rem Install renderer_settings.xml
if exist "payday\pdth\*.xml" (
	echo PAYDAY: The Heist - Installing partial render settings configuration
	copy "payday\pdth\*.xml" "%pdthladdir%"
	echo.
) else (
	echo PAYDAY: The Heist - Partial render settings configuration not found. Skipping...
	echo.
)

echo PAYDAY: The Heist - Done.
echo.

rem Portal

rem Install autoexec.cfg
if exist "source\portal\*.cfg" (
	echo Portal: Installing custom configuration
	copy "source\portal\*.cfg" "%portaldir%\portal\cfg"
	echo.
) else (
	echo Portal: Configuration files not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\portal\*.reg" (
	echo Portal: Installing registry key
	reg import "source\portal\*.reg"
	echo.
) else (
	echo Portal: Registry key file not found. Skipping...
	echo.
)

echo Portal: Done.
echo.

rem Portal 2

rem Install autoexec.cfg
if exist "source\portal2\*.cfg" (
	echo Portal 2: Installing custom configuration
	copy "source\portal2\*.cfg" "%portal2dir%\update\cfg"
	echo.
) else (
	echo Portal 2: Configuration files not found. Skipping...
	echo.
)

rem Install video config
if exist "source\portal2\video.txt" (
	echo Portal 2: Installing video configuration file
	copy "source\portal2\video.txt" "%portal2dir%\update\cfg"
	echo.
) else (
	echo Portal 2: Video configuration file not found. Skipping...
	echo.
)

echo Portal 2: Done.
echo.

rem Quake II

rem Install .cfg files
if exist "quake\q2\*.cfg" (
	echo Quake II: Installing custom configuration
	copy "quake\q2\*.cfg" "%q2dir%\baseq2"
	echo.
) else (
	echo Quake II: Configuration files not found. Skipping...
	echo.
)

echo Quake II: Done.
echo.

rem Quake III

rem Install .cfg files
if exist "quake\q3\*.cfg" (
	echo Quake III: Installing custom configuration
	copy "quake\q3\*.cfg" "%q3dir%\baseq3"
	echo.
) else (
	echo Quake III: Configuration files not found. Skipping...
	echo.
)

echo Quake III: Done.
echo.

rem Ricochet

rem Install configuration files
if exist "goldsrc\ricochet\*.cfg" (
	echo Ricochet: Installing configuration files
	copy "goldsrc\ricochet\*.cfg" "%ricochetdir%"
	echo.
) else (
	echo Ricochet: Configuration files not found. Skipping...
	echo.
)

echo Ricochet: Done.
echo.

rem Team Fortress 2

rem Install configuration files
if exist "source\tf2\*.cfg" (
	echo Team Fortress 2: Installing configuration files
	copy "source\tf2\*.cfg" "%tf2dir%\tf\cfg"
	echo.
) else (
	echo Team Fortress 2: Configuration file not found. Skipping...
	echo.
)

rem Install registry key
if exist "source\tf2\*.reg" (
	echo Team Fortress 2: Installing registry key
	reg import "source\tf2\*.reg"
	echo.
) else (
	echo Team Fortress 2: Registry key file not found. Skipping...
	echo.
)

echo Team Fortress 2: Done.
echo.

rem Team Fortress Classic

rem Install configuration files
if exist "goldsrc\tfc\*.cfg" (
	echo Team Fortress Classic: Installing configuration files
	copy "goldsrc\tfc\*.cfg" "%tfcdir%"
	echo.
) else (
	echo Team Fortress Classic: Configuration files not found. Skipping...
	echo.
)

echo Team Fortress Classic: Done.
echo.

pause
