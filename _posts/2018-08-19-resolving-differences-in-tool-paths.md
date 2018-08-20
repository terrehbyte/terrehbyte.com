---
layout: post
title: Resolving Differences in Tool Paths
tagline: "A hopefully platform-agnostic way for syncrhonizing paths across different systems (or at least Windows Vista or newer!)."
date: 2018-08-19 16:33
author: terrehbyte
comments: true

bigimage: "/images/posts/vscode-settings.png"
categories: [gamedev, vscode, foss, tools]
---

Synchronizing settings between my desktop, laptop, and studio workspace has
been amazing for letting me constantly iterate on my development environment
setup. I can make one change anywhere and use it to evolve my tools no matter
where I'm working.

This is made possible by transferring information via GitHub Gists automatically
with [Shan Khan][ShanKhan]'s [Settings Sync extension][VSCSettingsSync].
Unfortunately, support for the use of environment variables in VS Code's
settings is but only a [requested feature][VSCEnvVar] for now. This means that
while my settings will synchronize, I'll have to adjust the paths every time
I download it on any workstation besides the one that uploaded it.

Recently, I found a way to get around this issue: **symbolic links**.

## What is a Symbolic Link?

As a concept, a symbolic link creates a soft link between point A and point B
in your file system. Point A represents the "link" while point B provides the
"destination". Anything that tries to access point A will work from point B
for any subsequent references for directories or files.

![Creating a symlink from 'johnny' to 'terry'](\images\posts\mklink.gif)

Creating one will depend on your operating system and available tools, but the
general idea is that you'll use a command-line application. On [Windows 10][SOCreatingSymLinks], this
is easily accomplished using `mklink`.

Be sure to be conscious of differences in jargon and terminology, such as the
difference between an [NTFS junction and symbolic link][SOJuncVSSymlink]!

[SOCreatingSymLinks]:https://superuser.com/questions/1020821/how-to-create-a-symbolic-link-on-windows-10
[SOJuncVSSymlink]:https://stackoverflow.com/questions/9042542/what-is-the-difference-between-ntfs-junction-points-and-symbolic-links

## Using the Symbolic Link

I did not have the foresight to use the same username on both my desktop and
laptop, leading to differences in paths that lead to my user folder. (Windows 10
doesn't help with this at all since it relies on the personal information you
provide during first-time startup to create the first user account.) To resolve
this, I ended up creating a symbolic link from `C:\Users\terryn\` to
`C:\Users\terry\` which solved all of my problems.

[ShanKhan]:https://twitter.com/itsShanKhan
[VSCSettingsSync]:https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
[VSCEnvVar]:https://github.com/Microsoft/vscode/issues/2809