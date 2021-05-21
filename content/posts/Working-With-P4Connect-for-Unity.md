---
author: terrehbyte
bigimage: /images/posts/p4exception.png
categories:
- gamedev
- downloads
- AIE
- VCS
- DVCS
- Perforce
- Git
comments: true
date: "2015-02-05T00:00:00Z"
redirect_from: /2015/02/15/Working-With-P4Connect-for-Unity/
tagline: 'Integrating Version Control with Unity3D: Perforce-edition'
title: Working with P4Connect for Unity
---

My classmates and I only total to around 20 people that need to touch the depot,
but everyone's distaste towards merging *anything* (even scripts, text files,
you name it) and its inability to gracefully deal with large binaries pushed us
away from Git and towards more centralized solutions like Apache SVN and
Perforce. Apache SVN is completely free, but we opted to try out Perforce since
they released
[P4Connect](http://www.perforce.com/perforce/doc.current/manuals/p4connectguide/index.html)
to let Unity Free users integrate Perforce with the editor. Perforce
integration, which requires [Unity Pro + Team
License](http://docs.unity3d.com/Manual/Versioncontrolintegration.html) to
enable. Integration isn't entirely necessary since we managed without it when we
used Git, but I liked the integration I had when working with UE4, so I put up
Perforce as a potential alternative.

We found the control over file types and paths to be incredibly useful, giving
us the ability to restrict team members from accidentally making edits to the
same scene or breaking prefabs between merges by limiting changes to a single
user at any given time. It's not an entirely automated process though.  

![Perforce Exception](/images/posts/p4exception.png)

1. Team members need to manually checkout assets if what they're editing affects
   more than one thing. Automatic checkouts are handy when it comes to scripts,
   but breaking changes to prefabs need to be dealt with carefully.

2. A lot of errors come up in P4Connect requiring people to bring up P4V to
   resolve them. The utility in automatically checking out assets in P4Connect
   is nifty, but submitting and retrieving the latest changes is often
   unreliable or causes long lock-ups. This is especially true when moving lots
   of data around, like when introducing new art assets.

3. Sometimes P4Connect and P4V fall out of sync, resuting in P4V having a
   changelist that has to be recreated in P4V in order to manually resolve a
   some sort of issue that P4Connect could not.

4. When working online, all of our actions seem to be checked against the
   server, so doing anything is less snappy. If you opt to gray out options in
   the context menu in the Project view, there's always a delay lasting a few
   seconds that is spent waiting for the server to populate the list of options
   made available to you.

Perforce seems to be the VCS we'll be using when we begin our final project
before graduation. Hopefully the difficulty in adjusting to Perforce from Git
will be a smaller pain than having to deal with any troubles that come from
sym-linking in our manually versioned art assets in Dropbox and our code in a
Git repository.  
