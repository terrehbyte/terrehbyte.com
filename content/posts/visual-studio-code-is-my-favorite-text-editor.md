---
author: terrehbyte
bigimage: /images/posts/vscode-waifu.PNG
categories:
- gamedev
- vscode
- foss
- tools
comments: true
date: "2018-02-04T00:00:00Z"
tagline: A story of how an (admittedly Electron-based) text editor stole my heart
  <3
title: Visual Studio Code is My Favorite Text Editor
---

For the longest time, I had always held that Visual Studio was the number one
tool that I would recommend for development for the vast majority of use-cases.
It was the first tool I used to program in C++ and C# and was also the very same
tool that I missed when I started working with Python again. Lately, I've
found myself asking whether I could be solving the same problems with VS Code.
That's been ringing pretty true as of late.

Since I was on the fence for a while, I thought I'd take some time to just
list out some of the reasons why I'm growing more and more fond of VS Code as
my daily driver.

### Workspace-specific settings

My co-workers and I spent a good deal of time arguing over some relatively
harmless but important rules for our coding guidelines (spaces are better).

After settling on eight-space wide indents, I quickly realized that I was going
to run into an issue with Visual Studio: the text editor settings can only be
set program-wide. I was going to have to switch back and forth or find a
suitable extension to do so if I wanted to adhere to the conventions we had set.

![workspace-specific]({{ site.baseurl }}/images/workspace-specific.PNG)

In VS Code, the concept of a "workspace" allows you to define a set of settings
that apply when a folder is opened. Creating an override for a specific workspace was pretty simple; I just had to
create a new folder and specify some overrides. It follows the same format
that's used when you define them at a user-wide level. This let me retain my
settings for my personal projects while seamlessly adhering to our happily
agreed-to conventions.

### Relatively fast startup time

<div center>
  <video playsinline autoplay muted loop controls controlsList="nodownload">
    <source src="{{ site.baseurl }}/images/a_tale_of_two_vs.webm"/>
    <img src="{{ site.baseurl }}/images/a_tale_of_two_vs.gif"/>
  </video>
</div>

Notepad is a great text-editor for all text things whose lines ending in CRLF,
but what do you do for everything else? Editing everything without proper
line-breaks sounds like a nightmare. Opening Visual Studio for a single file
or [folder][VS2017folder] is definitely an option, but you'll be in for a
bit of a wait. For me, the answer was VS Code.

Run       | VS 2017 | VS Code
:--------:|---------|---------
1         | 3.5508  | 1.1607
2         | 2.9868  | 1.1258
3         | 3.4115  | 1.1736
4         | 2.4786  | 1.1928
5         | 3.3778  | 1.0983
6         | 2.9395  | 1.1373
7         | 3.1672  | 1.1528
8         | 2.8437  | 1.3238
9         | 3.4466  | 1.1818
10        | 2.9016  | 1.1408

Result    | VS 2017 | VS Code
----------|---------|--------
Avg       | 3.1104  | 1.1688
Min       | 2.4786  | 1.0983
Max       | 3.5508  | 1.3238

_The above times are given in seconds._

I decided to do some unprofessional profiling to see how long it takes to go
from launch to the start page in both VS 2017 and VS Code. On average, VS Code
is ready to go almost 2 seconds faster than VS 2017 is! That isn't a lot, but it
can add up if I'm opening up a lot of files or find myself needing to restart
my editor often.

You can dig into the specifics behind the settings and configurations that I
used for profiling in this [Gist][GistProfile].

[VS2017folder]:https://blogs.msdn.microsoft.com/vcblog/2016/10/05/bring-your-c-codebase-to-visual-studio-with-open-folder/
[VSvVSC]:https://gist.github.com/terrehbyte/f7a375d0da08b98c3929f6811ce2cc15
[GistProfile]:https://gist.github.com/terrehbyte/f7a375d0da08b98c3929f6811ce2cc15

### Cross-platform support

According to the [Steam Hardware & Software Survey][SHSS], the vast majority of
PC gamers are gaming on some variant of Windows. (that's 98.33% at the time of
writing) A similar statistic could be found amongst game developers, if only
just for the ease of play testing on a configuration not too dissimilar to what
most gamers would have.

> I'm interested in using something else for the sake of control as well as
> [ricing][define-ricing], but a number of my students use OS X or Ubuntu on
> their home machines.

Visual Studio is only officially supported on Windows, but a MonoDevelop-based
iteration is [available for Mac][VSMac]. While the two share the same branding,
the two are really wholly distinct products which have only recently begun to
share some logic after Microsoft's acquisition of its original maintainer, Xamarin.

Windows, Mac, and Linux are all officially supported by the VS Code team. That
makes for at least _one more tool_ that we can keep using we no longer feel
obligated to use Windows as our daily driver! This also means that my
Windows-free students have a tool that they can adopt as a part of their
toolstack.

> Most students aren't comfortable working with the terminal, so there's a lot
> of "WTF" looks on their face when they omit the `-m` switch when commiting
> with Git.
> 
> I suppose that rules out something like Vim as an alternative for them. ;)

While you'll be hard-pressed to find cross-platform support in older game
development tools, it does seem to be a consideration that today's tools are
devoting resources towards. I can only imagine that this was, in part, sparked
by an increasing need to deploy on a variety of platforms as opposed to any
one platform alone.

[SHSS]:http://store.steampowered.com/hwsurvey/
[define-ricing]:https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice
[VSMac]:https://www.visualstudio.com/vs/visual-studio-mac/

### High versatility through extensions and settings

![Screenshot of VS Code's extension panel]({{ site.baseurl }}/images/posts/vscode-ext.PNG)

Both [Visual Studio][VS-ext] and [VS Code][VSCode-ext] offer a plentiful
extension gallery that is easy to browse from your preferred web browser as well
as from within the app itself. This adds to the _extensibility_ (heh) of your
editor, allowing you to customize it to your particular preference and usecases.

VS Code has taken to more of a modular approach, building out support for
major languages like [C++][CCpp] and [C#][CSharp] as individual packages, though
TypeScript is included by default. These interface with a standard set of APIs
to provide for common code completion and symbol lookup functionality that you
would expect from any IDE with first-class support for your language of choice.

[VS-ext]:https://marketplace.visualstudio.com/vs
[VSCode-ext]:https://marketplace.visualstudio.com/vs

[CCpp]:https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
[CSharp]:https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp

## Wishlist

### A Better Windowing System

I haven't quite found anything with as nice of a windowing system as Visual
Studio itself, though both Atom and VS Code are making their way towards it.
It's just so simple to be able to tear off any tab and dock it, snap it, or
create a new window entirely.

Right now, you can choose between a one, two, or three editor pane layout that
stacks horizontally or vertically. That isn't as flexible, but gets the job done
well enough.

### Path Normalizing for Different File Systems

The [lack of path canonicalization][VScode-path-issue] has been giving me a
lot of grief when debugging my Unreal Engine 4 projects. Placing and managing
breakpoints in my source code is super smooth, but it's what happens when a
breakpoint is triggered that's the issue: two editors to the "same file" are
opened.

| Path Input                | Value                                |
|---------------------------|--------------------------------------|
| Path Opened by User       | `C:\MyProject\Source\MyGameMode.cpp` |
| Path Provided by Debugger | `C:\myproject\source\mygamemode.cpp` |

Both of these will normally resolve to the same path when working in an NTFS
file system, but the difference in casing causes VS Code to consider them as two
different files, resulting in two different editors being opened, thus
cluttering my editor. This is exacerbated when I step through logic spanning
multiple source files, all of which will spawn a multitude of editors in the
process.

> You can store two distinct files in the same path that only differs by case,
> but you'll need to both read and write to that file using something that
> doesn't depend on the Win32 API.
>
> For more information, see this Stack Overflow post:
> ["Why is NTFS case sensitive?"][NTFS].

[VScode-path-issue]:https://github.com/Microsoft/vscode/issues/12448
[NTFS]:https://superuser.com/questions/364057/why-is-ntfs-case-sensitive

## Closing Thoughts

With that all said, VS Code is definitely not for everyone. I'm a strong
believer of finding solutions and tools that best meet _your objectives_ as
opposed to working within the constraints of a single tool where possible. If
you have the option of choosing your solutions, then it's important to evaluate
whether there's something better out there that you should be moving towards.

Even the [VS Code FAQ][VSCFAQ] notes that its goal is only to be a lightweight
tool that's a solid alternative when you're just looking to code, build, and
debug your project. Leveraging bigger tools like NVIDIA Nsight or built-in
profiling and whatnot is still left to the bigger tools like Visual Studio.

[VSCFAQ]:https://code.visualstudio.covs-communitym/docs/supporting/faq#_what-is-the-difference-between-vs-code-and-