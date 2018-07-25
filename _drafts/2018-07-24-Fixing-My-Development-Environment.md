---
layout: post
title: Fixing My Development Environment
tagline: "I'm tired of adding random pieces to my environment, I thought I'd try wrangling it back together. "
date: 2018-07-24 00:00
author: terrehbyte
comments: true

categories: [gamedev, personal, work]
---

## A Brief Diagnosis 

My journey to wean myself off of being dependant on Visual Studio to handle all
of the setup involved in creating, compiling, debugging, or whatever actions I
normally do has also prompted a greater need to diversify my toolset. This means
having more SDKs and tools to install by hand instead of relying on Visual
Studio Installer workloads to simply handle that on my behalf.

I'm a junkie when it comes to keep things _prim, proper, and organized_, so you
might be able to imagine how aggreviating it is when it comes to where Windows
applications decide to install and store its data. Let's just take a second to
consider all of the different ways that this can come about, yes?

### Installation Paths

Let `%PROGRAMNAME%` also handle any variations that involve things like the
company name, suite name (e.g. Adobe Creative Cloud), and the like.

| Path                                          | Scope               |
|---------------------------------------------- |---------------------|
| C:\Program Files\%PROGRAMNAME%\               | System-wide, 64-bit |
| C:\Program Files (x86)\%PROGRAMNAME%\         | System-wide, 32-bit |
| C:\Users\%USERNAME%\AppData\\*\%PROGRAMNAME%\ | User-specific       |
| Wherever you put it                           | Not installed       |

Sometimes, programs are installed under the %APPDATA% directory due to limitations
imposed by their choice of installation software, such as [Squirrel](https://github.com/desktop/desktop/issues/2202).

The opposite problem can be found with Chocolatey packages, which doesn't seem
to have very strict requirements when it comes to how packages are packaged and
installed. That said, you can't entirely fault them since Windows, as acknowledged
by Chocolatey in their [FAQ](https://chocolatey.org/docs/create-packages#installation-paths).

### Application Data Paths

| Path                                          | Scope               | Contents                                                                                                         |
|-----------------------------------------------|---------------------|------------------------------------------------------------------------------------------------------------------|
| Windows Registry Keys                         | System-wide         | Configuration, working information                                                                               |
| C:\Program Data\%PROGRAMNAME%\                | System-wide         | Configuration                                                                                                    |
| C:\Program Files\%PROGRAMNAME%\               | System-wide, 64-bit | Configuration                                                                                                    |
| C:\Program Files (x86)\%PROGRAMNAME%\         | System-wide, 32-bit | Configuration                                                                                                    |
| C:\Users\%USERNAME%\\.config\%PROGRAMNAME%    | User-specific       | Configs (see [XDG base directory spec](https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html)) |
| C:\Users\%USERNAME%\\.%PROGRAMNAME%\          | User-specific       | Hidden "dot folder", à la UNIX or UNIX-like systems                                                              |
| C:\Users\%USERNAME%\AppData\\*\%PROGRAMNAME%\ | User-specific       |                                                                                                                  |
| C:\Users\%USERNAME%\Documents\%PROGRAMNAME%\  | User-specific       |                                                                                                                  |

Cross-platform applications are great but, either by design or ignorance, they don't always respect conventions
set by other platforms that they weren't originally intended for

They say that the grass is always greener on the other side, so I thought I'd
try to make the first step towards migrating onto Linux: installing MSYS2 and
relying on its package management system where possible.