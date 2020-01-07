# The Unix shell / terminal / command-line

The Unix shell is both a command-line interface (CLI) and a scripting language, allowing such repetitive tasks to be done automatically and fast. With the proper commands, the shell can repeat tasks with or without some modification as many times as we want. 

The shell is a program where users can type commands. With the shell, it’s possible to invoke complicated programs like climate modeling software or simple commands that create an empty directory with only one line of code. The most popular Unix shell is `Bash` (the **B**ourne **A**gain **SH**ell — so-called because it’s derived from a shell written by Stephen Bourne). `Bash` is the default shell on most modern implementations of Unix.

Using the shell will take some effort and some time to learn. While a graphic user interfaces (GUI) presents you with choices to select, CLI choices are not automatically presented to you, so you must learn a few commands like new vocabulary in a language you’re studying. However, unlike a spoken language, a small number of "words" (i.e. commands) gets you a long way.

The grammar of a shell allows you to combine, in an almost unlimited fashion, existing tools into powerful pipelines and handle large volumes of data automatically. Sequences of commands can be written into a script, improving the reproducibility of workflows.

In addition, the command line is often the easiest way to interact with remote machines and supercomputers. Familiarity with the shell is near essential to run a variety of specialized tools and resources including high-performance computing systems. As clusters and cloud computing systems become more popular for scientific data crunching, being able to interact with the shell is becoming a necessary skill. We can build on the command-line skills covered here to tackle a wide range of scientific questions and computational challenges.

---

[Source: the Software Carpentry, Data Carpentry, and Library Carpentry instructional material](http://swcarpentry.github.io/shell-novice/01-intro/index.html) 

*Under the Creative Commons Attribution license ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/))*


# Files and directories

Directories are the Unix equivalent of folders on a PC or Mac. They are organised in a hierarchy, so directories can have sub-directories and so on. 

![](../week_01/img/week_01_directory_structure.png)

*[Source: devOpsAGE](https://www.devopsage.com/file-system-hierarchy-of-linux/)*

## Structure of a pahtname

![](../week_01/img/week_01_pathname.jpg)

*[Source: eTutorials.org](http://etutorials.org/Linux+systems/red+hat+linux+9+professional+secrets/Part+II+Exploring+Red+Hat+Linux/Chapter+7+Red+Hat+Linux+Basics/Understanding+the+Linux+File+System/)*

If there is a file called `genome.seq` in the `dna` directory its location or full path can be
expressed as `/home/user/dna/genome.seq`. The full path can be also referred as **absolute path**.
If we are under the directory `/home/user/`, and we would like to write the **relative path** of 
the  same file, we would do it like: `dna/genome.seq` or `./dna/genome.seq`.

The location or directory that you are in is referred to as the **current working directory**.

There are some short cuts for referring to directories:
- `.`: Current directory (one full stop)
- `..`: Directory above (two full stops)
- `~`: Home directory (tilde)
- `/`: Root of the file system (like C: in Windows)


# Other resources

> **NOTE**: This list will be constantly updated.

- Software Carpentry: The Unix Shell: http://swcarpentry.github.io/shell-novice/
- Software Carpentry: Other lessons: https://software-carpentry.org/lessons/index.html