---
redirect_from: "/2015/06/12/Postmortem-for-Total-Withdrawal/"
layout: post
title: Postmortem for Total Withdrawal
tagline: "On Motivation and Experience"
date: 2015-06-12 7:17
author: terrehbyte
comments: true

categories: [gamedev, AIE, Unity3D, production, postmortem]
---

During my last months at the Academy of Interactive of Entertainment, I worked as the Technical Director for two projects for our final production project, Total Withdrawal and Fae-Tal. We tried far too many things on both projects, and while this fared a bit better than the other, it still did not meet expectations.

# Art Power

## Pipeline

There was prior work with artists, but a solid pipeline had not been established. The artists were developing content in Maya and then shipping over a new FBX file with new materials. Integration was undertaken by the programming lead, which opted to drop it in as a new asset, and hook up the materials and textures again upon each iteration.

Ideally, if the team is small enough, the artist would check-in the asset themselves and be able to test the game to ensure its integrity before making the check-in. This would allow the programming lead to move their focus from helping the artists iterate on their work to resolving more engineering issues.

# Engineering Power

## Missing: Source Control

While we had decided upon using Perforce as our version control solution, the server was not actually set up until a month into production. Delays and breakdowns in communication between headquarters (located in Australia) and the satellite (our campus, Seattle) lead to a failure to prepare it in a timely manner. Since our institution was only recently accredited, we did not own a Perforce license ourselves and had to rely on a loaned license from headquarters.  

To complicate matters, we could only run Perforce without editor integration since we wanted to maintain compatibility with Unity Personal Edition, which was not capable of editor integration, a Pro-only feature. While ultimately, no one worked at home, it was another limitation that added to the difficulty of using Perforce.

## Tackling Networked Games in Unity

Cooperative play was a goal that was set at the beginning of development. Basic movement seemed trivial once we had two entities replicated across the network. The trouble was integrating it into an existing codebase that had already made hard references to a player in the world.

## Lack of Motivation

Everyone worked during class hours, putting in their eight on Thursday and Friday. Whether it was mounting frustration from asset packages breaking in Unity 5 or an inability to resolve an outstanding bug in the game, people stopped talking about the game as if it were a fun project and more as though it were a school project that they were waiting to be done with.

# Final Remarks

One of the key philosophies I try to stick to is only prototyping mechanics I can develop in two weeks' time. Endpoint is a project born from such ideals, but died to feature creep. Everyone always says scope is hard, and it's important to ensure that it stays tight to keep the project on schedule.
