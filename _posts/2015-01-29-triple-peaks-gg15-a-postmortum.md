---
layout: post
title: "Triple Peaks @ #GGJ15 - A Post-Mortum"
tagline: "A tale of screw ups and fun times during the making of Triple Peaks"
date: 2015-01-29 20:24
author: terrehbyte
comments: true
categories: [gamedev, downloads, AIE, gamejam]
---

Three items to be found. Two keys to be pressed. One murderer to be unveil. With only a note in hand and nary a plan in mind, can you solve the mystery that has befallen this once peaceful playset? Crack the case and save the day: only in Triple Peaks. If only it were actually that exciting. Let's break it down: what really happened during Global Game Jam 2015?

![Triple Peaks' Main Menu]({{ site.baseurl }}/images/posts/Triple_Peaks.png)

A word of caution: Beware! Head be spoilers for [Triple Peaks][1]! Play it if you like, or read on and have the story spoiled. :(

# The Planning

At 5-6PM, a certain Keegan Carlston announced the beginning of Global Game Jam 2015, informing everyone of the theme: "What do we do now?" The first thing that came to mind was WarioWare! It was something spontaneous that kept posing the question of "What next?" It'd also be fairly untechnical from my programmer perspective, so it was just a matter of the number of levels we could build rather than the difficulty of the scripts we would try to write. Everyone could build one game per level, and it'd be fine, right?

Somewhere along the way, a murder mystery was tossed into the mix. WarioWare meets Twin Peaks should produce a comical mini-game packed game, complete with a story to top it all off! With everyone around, we tossed ideas into the story for a silly mix n' match deal. "And then a bomb goes off!" "It's Twin Peaks: we need a sexy lady." How exciting, no? Coming up with ideas is fun and all, but when it came down to implmenting them...

# The Problem

## Lack of Direction
We had a game that would revolve a core idea but had no implementation of that idea. We knew we needed mini-games, but no design decisions to work off of. Couple that with an as of yet to be completed story and we were set on the path not too different from a flash compliation with varying controls and art. The story certainly lacked cohesion, but with the story in place, there was some semblance of continuity.

Addtionally speaking, I ran between the jam rooms to run communications between artists and programmers. While I thought this would allow the programmers more time to focus on developing the level and typing up scripts, it also prevented them from directly communicating with the artists. What I said didn't always line up with what they wanted, so they would have to go back themselves in the end to clarify the design behind the art that they were looking.

I also floated around a lot, looking at other teams' games and providing input on programming matters where possible. It was fun, but I feel as though I could have done more for my group if I had stayed. I ended up paying for this by staying up through the night to glue together everyone's work into one Unity project.

## Inefficient Use of Artists
While we had three dedicated artists on the team, we only managed to eke out an entire cast of weebles and some buildings, save for the "mansion". Despite having access to ProBuilder, the task of modeling boxy buildings was delegated to the artists, who only ended up pouring hours into constructing simple structures that were fully UV unwrapped and textured. A similar effect could have been achieved with work from the people working in Unity3D. That, combined with a lack of specificity in requests made to the artists

## Lack of Experience in Unity3D
While all of the programmers on the team were part-time students at the host site, only two of us had relatively substantial Unity3D experience. A lot of the technical problems could be attributed to a lack of understanding with Unity3D's workflow and API.

For example, the *youngest* dev on the team couldn't figure out why ```transform.translate``` wouldn't move the saw in his scene. He had populated the variables in the inspector and the code wasn't raising any errors or warnings. Guess what the problem was? He stuffed everything into a prefab and then fed those prefabs into the variables instead of providing references to the instances in the scene.

# The Takeaway

Global Game Jam, has, and still is, an event to learn how to make games with people with all kinds of experiences. I learned plenty of lessons and met plenty of people as I did last time. It wasn't a bad experience at all! I have a newly sparked interest in game development and the drive to pursue it. People benefitted from the input I could provide and I gained new insights in the problems that I helped troubleshoot!

Triple Peaks is still a game that we, as a group, created in 48 hours. There are still some finishing touches to put on it before we can put it to rest, but it was a fruitful experience. Hopefully these lessons will prove useful later this year when my fellow students and I undertake our final project: producing a game (in three months!).

[1]:http://terrehbyte.com/TriplePeaks/