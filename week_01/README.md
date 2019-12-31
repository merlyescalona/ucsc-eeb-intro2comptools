# Week one

## Before class

You should have access to the linux environment, running virtual box if you have a windows machine or native in your mac.

### Open terminal
***Add the yellow flag to the right corner of your laptop***

Also called command line, this is an application:
Mac: applications > utilities > Terminal.app
Ubuntu: 

You might want to add this applciation to your dock for rapid access

***Change your flag to green if you are good to continue***

### Navigation of your computer using terminal
Now that you have open terminal you will see a black screen waiting for commands. First we need to know where in the computer we are located:

pwd= print working directory, now we know our location in the computer

***Change your flag to Yellow***

```
pwd
```

The default location after you have open terminal is your `home` directory 

We can list the contents of the directory by typing

```
ls
```

The command `ls` can be accompanied with several options to provide more details about the items found inside the folder. For example the option `-l` includes a longer description of the items.

```
ls -l
```

The `ls -a` option shows files tthat start with ".", these files are hiddend files usually not shown on your screen.

```
ls -a
```

Do you have any hidden files in your folder?

You can combine different options to obtain the information desired by using the options `-la` together the output will show you longer details of items, including hidden files

```
ls -la
```

You can find about all the options a command has by typing

```
info ls
```

Stuck in the window, you can scroll with the spacebar and/or with the arrows of you keyboard. If you want to exit the informative screen just type `q`.

A friendly combination of options for `ls` is:

```
ls -lash
```

**Can you tell us what does the options `-s` and `-h` do?**

***Change your flag to green if you are good to continue***






