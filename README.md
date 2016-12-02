# Cross-Compile-Java-for-Raspberry-Pi
## by Rafael Fernández Flores (@Plata17).

## Description

Just a simple project for try to cross compile using Gradle a Java proyect on a x86 PC and send it via SSH to the PI, and execute it corectly.

I use pscp (putty) to send the output.jar file to the Raspberry Pi.

You can use the setup for whatever project you want :)

Just clone the project and start to work!

## Requeriments

First of all, you need to have gradle installed on your PC.
You can download it from here: https://gradle.org/gradle-download/
NOTE: You have to set gradle in your PATH environment variable in windows.

Then, you have to install pscp on yout PC. You can download it and put it on your project's directory, or set it on the windows PATH.
You also need plink installed.
You can download both from here: http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html

## Config

You need in the root folder of your project the pscp and plink files.

You can edit the user, password, ip, and other things editing the scripts on the folder shellscripts. They have .bat files executed by gradle.

## Usage

The build.gradle file have pre-configurated some tasks.

To build the project, type:

```
gradle -q build
```

This command creates an "output.jar" file automatically in "/build/libs".

For send your file to the Raspberry, type:

```
gradle -q sendPi
```

You can adjust all the parameters like user, password, output directory, and the Raspberry IP on the "build.gradle" file.

If you want to do these two steps at the same time, just type:

```
gradle -q makePi
```

You can also clean your Raspberry Pi project, just typping:

```
gradle -q cleanPi
```

This command deletes the file sended to the Raspberry Pi.


## I Hope it helps to somebody else.
