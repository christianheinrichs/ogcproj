ogcproj
=======

This is the ‘open game configuration project’ or ‘ogcproj’.

Among people who contribute to Git online repositories there is a certain
practice, or ‘tradition’ of sharing their own Linux .dotfiles. A similar thing
exists among online gamers. The sharing of individual configuration files, in
most cases in .cfg format, like autoexec.cfg, config.cfg, userconfig.cfg etc.

So I thought, why not take it further and automate the whole process instead of
dragging and dropping your .cfg backups after each OS or game reinstall?

Which is what this project is all about. By using this tool you can backup your
configuration files and install them again without relying on any cloud services
or manual copy-and-paste operations. This project focuses on open, human
readable formats like .cfg, .json and .txt. It does not bother with binary,
encrypted or obfuscated configuration files.

Currently supported are the following games:

GoldSrc engine
- Counter-Strike
- Counter-Strike: Condition Zero
- Counter-Strike: Condition Zero - Deleted scenes
- Deathmatch Classic
- Day of Defeat
- Half-Life
- Half-Life: Blue Shift
- Half-Life: Opposing Force
- Ricochet
- Team Fortress Classic

Hexen II software engine
- Hexen II

Quake engine
- Quake II
- Quake III

Source engine
- Counter-Strike: Global Offensive
- Counter-Strike: Source
- Day of Defeat: Source
- Garry’s Mod
- Half-Life 2
- Half-Life 2: Deathmatch
- Half-Life 2: Episode One
- Half-Life 2: Episode Two
- Half-Life 2: Lost Coast
- Half-Life Deathmatch: Source
- Left 4 Dead
- Left 4 Dead 2
- Portal
- Portal 2
- Team Fortress 2

#### Considerations

Make sure to check your *GoldSrc* and *Source* games installation paths and
compare them to the ones in the script, because depending on your configuration
you might for example have *Counter-Strike* installed in the default Steam
directory, yet *Counter-Strike: Source* or *Half-Life 2* in a custom Steam
library folder. The relevant variables you want to look for are `%steamdir%`
and `%steamlibdir%` in the backup and install script. If you know what you’re
doing, you can define additional variables yourself, if, for example you have
two or more additional Steam library folders.

On a conclusional note, this project is not perfect. Some things might or might
not work. Something might break. As always, keep multiple backups as to not
lose any configuration files.

#### How to instructions

1. Make sure you have your autoexec.cfg and userconfig.cfg backed up somewhere
2. Run the ‘fresh-start.bat’ script
3. Copy your .cfg backups into each respective folder
4. Run the ‘install-configs.bat’ script
5. Should you feel the need to backup your configuration files currently
   located in the according game installation folders, run ‘backup-configs.bat’
   and they get copied to `goldsrc/game` and `source/game/cfg`

#### Licensing
This project is licensed under the GNU GPL 3.0 license. To read it, please
refer to the [LICENSE](LICENSE) document.
