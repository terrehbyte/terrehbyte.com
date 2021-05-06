---
author: terrehbyte
bigimage: /images/posts/github thanks.png
categories:
- gamedev
- github
- foss
comments: true
date: "2017-05-13T00:00:00Z"
tagline: Should I accept that pull request?
title: My Pull Request Etiquette
---

I'm pretty keen on the idea that amassing a collection of perspectives and
experiences is part of the process of creating a better informed opinion or
piece of work. It seems like, with the exception of UI/UX design, that the
FOSS community benefits from this pretty well.

Part of that comes for free with a culture that is more conducive towards
problems that are more readily approachable from an objective standpoint, though
this can easily go awry without [establishing a proper community culture][OSSPoison]
in the first place. My first foray into creating something like this was pretty
recent I decided that I'd take a hand at creating my own ["awesome list" for UE4][awesome-ue4]
since I hadn't found a decent one out there during my travels.

Getting started was pretty simple since @sindresorhus had already spent a fair
amount of effort into establishing [guidelines and suggestions for an awesome
list][awesome], but one thing I wasn't anticipating was how I was going to
handle contributions.

The first one rolled in from [@trentpolack][@trentpolack], who ["added a bunch of lovely things"](https://github.com/terrehbyte/awesome-ue4/pull/1)
to the awesome list ranging from tutorials to plugins. I was really excited at first;
someone had not only looked at my list, but was also proposing changes to it! After
looking at it though, there were some issues:

1. An errant `\` character in the body text
2. Tutorials where strictly assets/plugins were being listed
3. An improperly formatted link to an otherwise stellar resource
4. Unalphabetized entries within the same category or sub-header

There was nothing particularly egregious about it considering that all of the
issues entailed short fixes, but there was one question that remained: Was I
supposed to respond and ask them to fix it, or should I just fix it myself?

On one hand, it'd be a real quick thing to have them do so I could cleanly merge
their pull request into the repository with little effort on my behalf. However,
it also felt a little cruel to reject them for something relatively insignificant
that I could readily fix on my own since I had already identified them. It was
also just Markdown, so it was technically still valid, just unappealing to look
at.

![I wasn't too harsh, was I? :)]({{ site.baseurl }}/images/posts/github thanks.png)

While the puritan in me wanted to ask them to redo it, I ultimately leaned on
the side of accepting it and fixing it on my own. Putting the typographical
errors aside, I merged and closed the pull request after adding a comment
stating some of the changes that I made to the content afterwards.

Maybe I was making a bigger deal out of it than they were, but I wanted to make
sure that they understood the rationale behind my changes and that I appreciated
their time. I wouldn't want to make the [barriers for contributing][hackerConduct]
too high for something so simple anyway.

Perhaps that is an unsustainable practice for repositories with much more
traffic, but I felt that this was appropriate considering the lack of activity
and relative "new-ness" for the project. I'm eagerly making my way towards the
day when I finally place the finishing touches on it before submitting it for
listing on the [awesome list of awesome lists][awesome].

Moving forward, I think I'd like to apply the following thoughts when forming
and reviewing future pull requests:

1. Has the submission showed any indication that the submitter has read the
   contribution guidelines, if present?
2. Is the submitter interested in helping develop a better project?
3. Do the changes in the pull request reflect an appropriate amount of work for
   the given request?
4. Does it genuinely meet the standards for community contributions?

We're all humans that make mistakes! Some of us are also developers, in which
case we're likely also busy and may potentially miss a thing or two when we're
trying to help someone or something out. Hopefully this leads towards a better
experience for any submitters or reviewers in the future!

[awesome]:https://github.com/sindresorhus/awesome
[awesome-ue4]:https://github.com/terrehbyte/awesome-ue4
[awesome-ue4-pr1]:https://github.com/terrehbyte/awesome-ue4/pull/1
[hackerConduct]:http://sealedabstract.com/rants/conduct-unbecoming-of-a-hacker/
[OSSPoison]:https://youtu.be/-F-3E8pyjFo
[@trentpolack]:https://github.com/trentpolack