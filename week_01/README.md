# Week one

## Before class

You should have access to the linux environment, running virtual box if you have a windows machine or native in your mac.

### Open terminal
> Add the yellow flag to the right corner of your laptop

Also called command line, this is an application:
Mac: applications > utilities > Terminal.app
Ubuntu: 

You might want to add this applciation to your dock for rapid access

> Change your flag to green if you are good to continue

### Navigation of your computer using terminal
Now that you have open terminal you will see a black screen waiting for commands. First we need to know where in the computer we are located:

pwd= print working directory, now we know our location in the computer

> Change your flag to yellow

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
man ls
```

Stuck in the window? You can scroll with the spacebar and/or with the arrows of you keyboard. If you want to exit the informative screen just type `q`.

A friendly combination of options for `ls` is:

```
ls -lash
```

**Can you tell us what does the options `-s` and `-h` do?**

> Change your flag to green if you are good to continue

Now that you know to identify your working directory and list the items now we will learn how to created directories and move across directories.

> Change your flag to Yellow

To create a new directory labeled "week_1" type:

```
mkdir week_1
```

List the items inside your working directory and confirm the folder has been created

```
ls
```

To Change Directories into the newly created folder type:

```
cd week_01
```

you can check that you are really there by checking your Present Working Directory `pwd`

```
pwd
```

You can infer from the way the command line works that spaces inside folder and file names can be problematic. For example, let's see what thappens when we try to create a folder "test 1" inside `week_1`

```
mkdir test 1
```
What happened?

The command line interprets "test" and "1" as different argunments.

***From now on avoid using spaces in file and folder names, use _ instead***

We can remove both unwanted directories by typing 

```
rmdir 1 test
```

> Change your flag to green if you are good to continue










TIPS

To change directories type `cd ` and then **drag and drop** the folder you want to go. This will reduce the ammount of typing if the desired folder you wat to relocate to is too nested in the file hierarchy.

When typing file and folder names you can press the `tab` key to autocomplete a name, but notice that the letters typed have to be long enough to match only a single item.










