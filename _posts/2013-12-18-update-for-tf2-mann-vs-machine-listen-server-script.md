---
layout: post
title: Update for TF2 Mann vs. Machine Listen Server Script
date: 2013-12-18 13:58
author: terrehbyte
comments: true
categories: [downloads, gaming, Github, projects, scripting, Team Fortress 2]
---
I should have done this a few days ago, but other projects took precedence. In any case, I did a small overhaul of the listen server setup script for Team Fortress 2's listen server mode that fixed some bugs and made things a bit more extensible. Poor scripting caused servers to restart between maps while other issues made it difficult to make use of, but hopefully those problems have been solved..  

The biggest change would be the transition towards renaming the map name aliases to no longer use the "map" command for map changes. A separate file redefines the aliases to use "changelevel" instead. This prevents the server from being created anew each map change.  

Finally, support was added for all of the other missions that are available from the "boot camp" menu in Team Fortress 2's MvM matchmaking system. A quick look at the population files in the game files made it easier to get the names of other missions that can be loaded into the game.  

As always, the script is available on [Github and contributions are welcome](https://github.com/terrehbyte/mvm-listenserver-script).  