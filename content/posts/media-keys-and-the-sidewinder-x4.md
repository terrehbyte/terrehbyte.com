---
author: terrehbyte
categories:
- itunes
- mediakeys
- microsoft
- nightingale
- personal
- sidewinder x4
- workaround
comments: true
date: "2012-06-27T00:00:00Z"
redirect_from: /2012/06/27/media-keys-and-the-sidewinder-x4/
title: Media Keys and the Sidewinder X4
---

As far as I know, the latest drivers for the Microsoft Sidewinder X4 Keyboard
only function with Windows Media Player. I use
[Nightingale](http://getnightingale.com/) to manage my music so it was either me
or keyboard that was going to have to adapt. At first, I installed a plugin for
"command-line" support so I could run bind the media keys to shortcuts with
command-line switches, but that would always cause the program that I was
currently in to lose focus. That wasn't normally a problem unless I was in some
sort of full-screen application, especially ones with 3D environments like Max
Payne 3.  

Many Google searches later after looking for a new solution, I stumbled about
someone's neat little program called
[MediaKeys](http://blog.skrenes.com/post/11783385993/mediakeys). There's
probably a lot of programs called that, but this one is really different because
all it does is fire off standard media keys that most programs accept.
Nightingale picks up on it when told to pick up on them, so I found it really
handy. Hit the link to find out how to set it up with the Sidewinder X4 and
probably the Sidewinder X6 as well.  

> Alternatively, you can kill the "itype.exe" process or better known as
> Intellitype (Pro). It would seem as though that Intellitype (Pro)'s media keys
> only send codes that only Windows Media Player accepts, while with it off, the
> keyboard fires off regular media keys that recognizable to most media players.