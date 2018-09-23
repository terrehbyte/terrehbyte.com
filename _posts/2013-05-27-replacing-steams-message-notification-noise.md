---
redirect_from: "/2013/05/27/replacing-steams-message-notification-noise/"
layout: post
title: Replacing Steam's Message Notification Noise
date: 2013-05-27 16:03
author: terrehbyte
comments: true
categories: [custom, downloads, fix, mod, software, solution, sounds, steam, workaround]
---

While Steam's transition to a newer updater and launcher may bring us closer to
a more stable Steam than ever before, it is not without its shortcomings. Users
that replace their message notification noises are finding that their changes
are being overwritten upon every launch of Steam. While Steam's prudence in
maintaining the consistency of the program files is indeed useful, it is also a
pain for anyone looking to introduce custom content. While not a solution, I did
make a workaround for myself.  

If you replace the message sound file after every boot up, then you can continue
to hear your custom sound, but doing that by hand every single time get can
really annoying. While not all too much better, I created a batch file that
automatically overwrites Steam's message noise for me. I still have to run do it
after every time I launch Steam, but instead of navigating to the Steam folder
and overwriting the file, I can click the batch file and be done with it until
the next launch! I do need administrator powers to do that though, so unless
you're logged into an account with such powers (requirement for XP) or can
authenticate such actions (for Vista, 7 and 8), this isn't going to work for
you. Linux and Mac OS X are also unsupported due to the fact that this was
designed for Windows using batch files. If only I were better at Python...  

As with all batch files, you can open the batch file in Notepad to check for any
suspicious things. Download links are as below as well as the results of
VirusTotal scan.  

- Direct Download [via Dropbox](https://www.dropbox.com/s/f1odfprke4y7uu6/Steam%20Custom%20Sound%20System.zip)
- Mirrors [via Mediafire](http://www.mediafire.com/download/6ljoaadbgp2z3rc/Steam_Custom_Sound_System.zip)

[VirusTotal Scan Results](https://www.virustotal.com/en/file/b652939d10e46d3ce2a5961a50e07357f4f2af1ca8e916af858c94bb4dd97666/analysis/1369704951/)