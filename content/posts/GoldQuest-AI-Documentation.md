---
author: terrehbyte
categories:
- gamedev
- downloads
- AIE
comments: true
date: "2015-01-04T00:00:00Z"
redirect_from: /2015/01/05/GoldQuest-AI-Documentation/
title: GoldQuest - AI Documentation
---

For my second assessment at the Academy of Interactive Entertainment, I was
asked to write a description of the "proposed [AI] simulation" that I was going
to undertake. In other words: what's supposed to happen in my AI tech demo? I
think what I'll shoot for is shoot for one set of logic that will accept
parameters for behavior determination.

The goal is simple: two players need to gather the largest amount of gold
possible from various pools of gold that are scattered across the map. The
player with the largest amount of gold by round end or gold mine exhaustion,
whichever comes first. Each player will only be able to hold a certain amount of
gold at any given time.

Each agent will be capable of the same actions as the other, only that each one
has different conditions for switching to different states.

## Decision Tasks  

### Movement  

- Move to Base
- Move towards a friendly base.
- Move to Gold Mine
- Move towards a populated gold mine.
- Move to Opposing Player
- Move towards the enemy player's avatar.
- Move to Opposing Player's Base
- Move towards the enemy player's base.

- Arrive at T
    - Arrive at a destination.

## Actions  
- Gather Gold
    - When at a location with gold, draw gold from that mine at a fixed rate
      after a certain amount of time has passed. Withdrawing from the location
      is instantaneous.

- Steal Gold from Player
    - A random number will be generated. If the number is past a specified
      threshold, then an additional roll will occur for the player to steal a
      percentage of the currently held gold, ranging from 10 percent to 50
      percent.

## Locomotion / Steering Behaviors  

- Seek
    - The agent will continously move towards its destination at a fixed speed.

- Arrive
    - When the agent is within range, the speed of the agent will decrease as it
      draws closer to its destination, eventually coming to a halt.

A post-mortem of the thing will come when I actually go through and write the
logic for all of it!
