---
redirect_from: "/2013/05/08/sharpening-my-c-skills-week-03-aabb-collisions/"
layout: post
title: Sharpening My C# Skills - Week 03 - AABB Collisions
date: 2013-05-08 15:44
author: terrehbyte
comments: true
categories: [personal, programming, schoolwork]
---

For the third week of programming (which occurs once per week except when it's
cancelled), we went over AABB collisions. Basically, if the top of one object
exceeds the bottom of another object and the side of the first object exceeds
that of the second object, then the two objects are colliding. I'm sure I missed
some sort of specific, but that's the core of the concept. Even if we are
learning how to programming in the dying XNA environment, the concepts will
surely be transferable to future frontiers.  

More specifically, we demonstrated collision detection and collision reaction
because once object A collided with object B, both boxes would change their
color from white to red as a reaction to the collision. While this was nifty and
doable in a small environment with three objects (object A, object B, and the
background), doing checks for every single object with every other object sounds
computationally expensive. Our instructor explained to us that the workaround
for that was to filter or cut the overall number of checks being down by
specifying that "these" objects would only and could only collide with "those"
objects, so since there was no point in checking for collisions with everything
else in the world, those checks wouldn't be made.  

Finally, to end on a side note, we briefly went over four types of functions:  

* those that take arguments and return a value  
* those that only take arguments  
* those that only return a value  
* those that neither take arguments nor return a value  

We're going through the basics at the very least, though these lessons would be
more applicable if we went through the referenced exercises for them. Neither we
or our instructor know where they could be found, so that's a shame.  

P.S. The copy of Visual Studio Express 2010 expired on my work desktop, so I had
to use Teamviewer to work from my home computer, but even that proved difficult
because XNA Game Studio 4.0 seems to be programmed to only install to Visual
Studio (Express) 2010. Check out [Ryan Lange's blog](http://ryan-lange.com/) if
you're trying to install XNA Game Studio 4.0 onto Visual Studio (Express) 2012.
