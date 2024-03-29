# eventrun
Runs a command when a [Linux input device](https://www.kernel.org/doc/Documentation/input/input.txt) sends an event, no matter if X runs. It works with any input event recognized by the evtest program.

### Usage
By default, eventrun is located in /usr/bin/eventrun, and is executable only by the root user. The input device to listen to and events are configurable in /etc/eventrun. Each eventrun instance can react on several input events on the same input device, if the configuration file is modified accordingly. Additionally, a SystemV-style service is installed in /etc/init.d, which allows to run this program daemonized on system start if the administrator enables it manually.

### Building and packaging
This program is only composed of shell scripts, so no compilation is necessary. It should work in any GNU/Linux box that has a POSIX shell and the needed dependencies.

However, it is distributed as a .deb package that is generated with a Makefile. To create the eventrun .deb package, you only need to make changes to the installed files, and then run:

```console
$ make
```

# Installation
You can get the official .deb package from the [releases page](https://github.com/AlexTMjugador/eventrun/releases). Installing the package is pretty straightforward:

```console
# dpkg -i eventrun_1.0-1.deb
```

If dpkg complains about missing dependencies, make sure you install them first.
