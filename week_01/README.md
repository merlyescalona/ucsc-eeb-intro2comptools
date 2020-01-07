
# Week one

## Before class

You should have access to the linux environment, running virtual box if you have a windows machine or native in your mac.

### Open terminal
> Add the yellow flag to the right corner of your laptop ![](img/yellow.jpeg)

Also called command line, terminal is an application located in :
Mac: applications > utilities > Terminal.app
Ubuntu: 

You might want to add this application to your dock for rapid access

> Change your flag to green if you are good to continue ![](img/green.jpeg)

### Navigation of your computer using terminal

> Change your flag to yellow ![](img/yellow.jpeg)

Now that you have open terminal you will see a black screen waiting for commands. First we need to know where in the computer we are located by typing:

```
pwd
```
now press <kbd>return</kbd>


`pwd` prints a complete path to your working directory. Now that we know our location in the computer. The default location after you have open terminal is your `home` directory 

For reference here is the general file structure in linux-based systems

![](img/week_01_directory_structure.png)

![](img/week_01_pathname.jpg)

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

> Change your flag to green if you are good to continue ![](img/green.jpeg)

Now that you know to identify your working directory and list the items now we will learn how to created directories and move across directories.

> Change your flag to Yellow ![](img/yellow.jpeg)

Let's move into the Documents folder:

```
cd Documents
```

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
cd week_1
```

you can check that you are really there by checking your Present Working Directory `pwd`

If you want to go back to the parent directory you simply type:

```
cd ..
```

You can always return to your `home` directory by:

```
cd
```

***TIP:*** To change directories type `cd ` and then **drag and drop** the folder you want to go. This will reduce the ammount of typing if the desired folder you wat to relocate to is too nested in the file hierarchy. let's drag and drop the folder `week_1` in after typing `cd `, then press `enter`

You can see that the drag and drop method adds the complete path of the folder instead of the relative path.

You can infer, from the way the command line works, that spaces inside folder and file names can be problematic. For example, let's see what thappens when we try to create a folder "test 1" inside `week_1`

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

> Change your flag to green if you are good to continue ![](img/green.jpeg)

### Creating a managing files

> Change your flag to yellow ![](img/yellow.jpeg)

A practical way to create a file is to use the text editor `nano`. Let's create a new file by typing:

```
nano personal_log_1.txt
```

After excecuting the command nano will open and you can start adding text to your new file, let's type:

```
I love coding
```

Notice that at the bottom of the window, there are commands instructions. To exit and save press:

<kbd>control</kbd> + <kbd>x</kbd>

Then answer:

<kbd>y</kbd>

Finally press:

<kbd>return</kbd>


If you `ls` your new file should appear there. We can print the contect of a file to the screen easily by typing:

```
cat personal_log_1.txt
```

***TIP:*** When typing file and folder names you can press the `tab` key to autocomplete a name, notice that the letters typed have to be long enough to match only a single item. In this case just by typing `cat per` and then pressing `tab` we should be able to obtain the complete command desired.


It turns out that we want `personal_log_1.txt` inside a folder called `personal_entries`. First we need to create the directory by:

```
mkdir personal_entries
```

Now we need to move our text file inside the new folder, notice that origin goes first and destination goes last:

```
mv personal_log_1.txt personal_entries/
```

Check the file was moved by listing the contents of `personal_entries` typing:

```
ls personal_entries
```

`mv` can also be used to rename files, let's remane `personal_log_1.txt` with `personal_log_001.txt`

```
cd personal_entries
mv personal_log_1.txt personal_log_001.txt
```

Finally we can make a copy of `personal_log_001.txt` to create a second file:

```
cp personal_log_001.txt personal_log_002.r
```

we can check the contents of the copied file:

```
cat personal_log_002.r
```

Notice that regarding the extension of the file `.txt` / `.r` cat prints the contents of the file to the screen.

> Change your flag to green if you are good to continue ![](img/green.jpeg)

### using wild cards

> Change your flag to yellow ![](img/yellow.jpeg)

In cases where directories contain thousands of files, it might not be practical to list all contents. Instead we can use wildcards * to list only files of interest.

Let's create a third file, just so we have more files to list:

```
cp personal_log_002.r data_002.txt
```

We can list only files that end with ".txt"

```
ls *.txt
```

List only files that start with "personal":

```
ls personal*
```

List only files that contain the string "002":

```
ls *002*
```

### removing files

With great power comes great resposability! Files removed throught the terminal are gone forever, they DON't go to a trash bin from where they can be reinstated. You can remove a file just by typing:

```
rm personal_log_002.r
```

You can remove all the ".txt" files:

```
rm *.txt
```

***EXTREME CAUTION `rm *` will remove ALL the files inside the directory forever!***




