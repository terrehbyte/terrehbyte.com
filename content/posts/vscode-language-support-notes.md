---
author: terrehbyte
categories:
- vscode
- cpp
comments: true
date: "2025-08-06T00:35:00-07:00"
tagline: Notes on setting up non-web projects in VS Code
title: VS Code Language Support Notes
---

> **Note:** This is an excerpt of my personal notes that I've cleaned up a little for
> documenting my non-gamedev work and for sharing with others. -Terry

Web-oriented tech stack languages like JavaScript or TypeScript ship directly
with Visual Studio and have built-in support. Extensions are only needed to
further enhance the developer experience when working with specific frameworks.

Other languages or frameworks like C++ or C# can be incrementally added via
other first-party extensions maintained by Microsoft of third-party extensions
from others.

Since the task system allows you to execute shell commands, anything that offers
a CLI app or script for building it can be built by VS Code. Instead, the focus
of this article will be to identify languages that can support the following:

1. **Language Server Support (LSP)** for auto-complete/IntelliSense
2. **Task Configuration** for triggering builds, executing tests
3. **Launch Configuration** for launching and debugging

The ability to **generate configurations is preferred** over using specialized
commands for projects that follow the "write, build, run" paradigm would allow
you to maintain the same UX regardless of project type instead of remembering
specific commands for specific types of projects.

The process of **creating a new project in VS Code is complex** as it requires
human intervention, may differ greatly between project types, and may automate
certain steps in some cases or not in others. Users seeking a turnkey experience
that allows then to hit "New Project" and have few, if any steps, to follow to
achieve something ready to work with should consider alternatives like Visual
Studio or JetBrains Rider.

Additionally, installing dependencies for working with various languages or
project types is often left to the user. Some languages can automatically
download runtimes or SDKs as needed; results will vary.

## C++

**CMake-based** projects are well supported by using a combination of the
[**C/C++** extension][VSextC/C++] and the [**CMake Tools** extension][VSextCMakeTools],
both maintained by Microsoft (the latter was originally created by vector-of-bools).

CMake is a significant hurdle as it has its own language for describing your
project on top of C++'s need for you to understand how the underlying build
tools works (such as when prompted to select a compiler or kit for CMake).

**Single file projects** are also somewhat well-supported and are introduced in
the [quick start tutorials from Microsoft][VScppIntro] on C++ in VS Code. They
focus on building and debugging by directly invoking the build tools and
debugger through the task and launch configurations. They are included since
they are a part of the official instructions, but I don't personally use it
since a CMake project is a little more portable.

[VSextC/C++]:https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
[VSextCMakeTools]:https://github.com/microsoft/vscode-cmake-tools/blob/main/docs/README.md

[VScppIntro]:https://code.visualstudio.com/docs/cpp/introvideos-cpp
[CMakeTools]:https://github.com/microsoft/vscode-cmake-tools/blob/main/docs/README.md

### CMake Workflow (Commands)

CMake projects with CMakeLists.txt files can define targets that can be
built, launched, and debugged using CMake Tools' commands.

- **Extensions**
	- [C/C++][VSextC/C++] from Microsoft
	- [CMake Tools][VSextCMakeTools] from Microsoft
- **Minimal Setup**
	1. Open a workspace that contains a project with a populated CMakeLists.txt file
	2. Select a kit
	3. Run Command: "**CMake: Debug**" to build and debug your project
		- Command: "**CMake: Build**" can be used to simply build

The [CMake Tools extension][CMakeTools] can work with CMake to provide commands
that provide easy configuration, building, and debugging of CMake-compatible
projects.

CMake Tools also adds a lot of UI to VS Code that mimics the experience you
might find in other IDEs, allowing you to build/debug with your mouse instead
of your keyboard.

- **Activity Bar** gets a "CMake" activity that lets you inspect project status, browse project files, or run pinned commands
- **Status Bar** gets a variety of actions like building, debugging, selecting a kit, or changing the project configuration

### CMake Workflow (Configuration)

CMake projects with CMakeLists.txt files can also be built/run/debugged with
task configurations that invoke CMake Tools and launch configurations that are
partially resolved by CMake Tools.

- **Extensions**
	- [C/C++][VSextC/C++] from Microsoft
	- [CMake Tools][VSextCMakeTools] from Microsoft
- **Minimal Setup**
	1. Open a workspace that contains a project with a populated CMakeLists.txt file
	2. Select a kit
	3. Run Command: "**Task: Configure Default Build Task**" and select "**CMake: build**" to generate a working tasks.json file
		- See [CMake Tools: Configure with CMake Tools tasks/Build with CMake Tools tasks][CMakeToolsTasks] for more information
	4. Create a launch.json and manually write a configuration for debugging your project
		- See [CMake Tools: Debug and launch/Debug using a launch.json file][CMakeToolsDebug] for examples for different debuggers

[CMakeToolsTasks]:https://github.com/microsoft/vscode-cmake-tools/blob/main/docs/tasks.md#build-with-cmake-tools-tasks
[CMakeToolsDebug]:https://github.com/microsoft/vscode-cmake-tools/blob/main/docs/debug-launch.md#debug-using-a-launchjson-file

### Manual Workflow

The [introduction tutorials from Microsoft on C++][VScppIntro] in VS Code focus
on building and debugging by directly invoking the build tools and debugger
through the task and launch configurations.

- **Extensions**
	- [C/C++][VSextC/C++] from Microsoft
- **Minimal Setup**
	1. Create a workspace
	2. Add and open a **Main.cpp** file in that workspace
	3. Run Command: "**C/C++: Debug C/C++ File**" to generate a working tasks.json file
		- You will be prompted to select your compiler.
	4. Run Command: "**C/C++: Add Debug Configuration**" to generate a working launch.json file
		- You will be prompted to select your compiler again; this should be the same as the last one you picked.

Additional properties for working with the debugger are available on VS Code's
page on [C++/Configure Debugging][VScppLaunch].

[VScppLaunch]:https://code.visualstudio.com/docs/cpp/launch-json-reference

#### CodeLLDB Workflow

See also [CodeLLDB][VSextCodeLLDB], a mature third-party debugger primarily for
C++ and Rust powered by LLDB. It has its own [extensive documentation][CodeLLDBMAN]
on its GitHub repository.

[VSextCodeLLDB]:https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb
[CodeLLDBMAN]:https://github.com/vadimcn/codelldb/blob/master/MANUAL.md