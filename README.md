# The TMT Runtime Source Code
This repository contains the source code for the [TMT Runtime](https://github.com/TheModdingTree/tmt-runtime).<br>
The Runtime binaries themselves are intentionally stored separately to reduce the amount of code embedded inside the actual TMT Project Template.

## Purpose
The TMT Runtime has one very simple purpose: serve a TMT project's files into your default web browser and then open the browser automatically.

## Why?
The TMT Engine is written using ESModules, which do not work when you simply open a local HTML file over `file://`.<br>
A core principle of the TMT design philosophy is keeping a low barrier to entry. Asking users to figure out how to serve their files over localhost themselves would violate this philosophy.<br>
So, the Project Template includes simple scripts which start the runtime to preserve the simple "double click a file to run your mod locally" behavior that would be present without ESModules.

### No, I meant "Why is this README here and not in the Runtime repository?"
For the same reason the source code is here and not in the Runtime repository: reducing the code embedded in the Project Template.<br>
The Project Template directly embeds the Runtime repository as a submodule, meaning anything included in that repository will be included in the Project Template.

## Contributing
Generally, don't. This is an incredibly simple runtime designed for one purpose and is currently bug-free.<br><br>
HOWEVER, if you encounter an error on your operating system please do either PR a fix yourself or raise an issue!<br>
I (flamemasternxf) run Linux on my machine. 
It is my understanding that the runtime currently works perfectly on all operating systems, but I do not have the hardware to physically test the Windows and Mac runtimes.
