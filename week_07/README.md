# Week 07: Scripts, I/O and more...

## Scripts

> Change your flag to yellow ![](img/yellow.jpeg)

So far we have been playing around with the interpreter, but we don't want to run long runs of code in the interpreter all the time. Also, with the interactive interpreter session will allow you to write a lot of lines of code, but once you close the session, you lose everything you’ve written. It's tedious and does not make a lot of sense specially if you need to run things several times. To solve this we are going to generate scripts. The usual way of writing Python scripts is by using plain text files. By convention, those files will use the `.py` extension. So, let's start by creating a folder for this week and write our script.

```
mkdir week_06
cd week_06
nano hello.py
```

Once the editor is open write the following code, save it and close the editor:

```python {.line-numbers}
#!/usr/bin/env python3

print('Hello World!')
```

> ***How does the interpreter run Python scripts?***
> 
> When you try to run Python scripts, a multi-step process begins. In this process the interpreter will:
> 
> 1. Process the statements of your script in a sequential fashion
> 2. Turns each line while its interpreting it into lower-level code so it can be ran
> 3. Runs your instructions in low-level code one by one.

To run the script we will use the `python3` command and press <kbd>Return</kbd>:

```
python3 hello.py
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)


## Writing files

> Change your flag to yellow ![](img/yellow.jpeg)

Now,  that we know how to run scripts, let's use all of the content that we have used today to learn how to write and read files by running scripts.

Create a new script with the name  `testwrite.py` and add the following code:

```python {.line-numbers}
#!/usr/bin/env python3

print('This is my first mid-size Python script')

nuc_names= {'a':'adenine','g':'guanine','c':'cytosine','t':'thymine'}

f = open("nucleotides.txt", "w")

for k, v in nuc_names.items():
	f.write("{} corresponds to {}\n".format(k,v))

f.close()

f = open("numbers.txt", "w")

for num in range(0,10):
	f.write("{}\n".format(num))

f.close()
```

Let's go through the script line by line. We are setting up the variable `nuc_names`, which is a dictionary, with keys being the nucleotides and the values the corresponding nucleotide name.

Then, we are openning the stream of a file with the function `open(filename,mode)`. The mode specifies how to work with the files:

| Character | Meaning															|
|-----------|-------------------------------------------------------------------|
| `r`       | ** open for reading (default)										|
| `w`       | ** open for writing, truncating the file first						|
| `x`       | ** create a new file and open it for writing							|
| `a`       | open for writing, appending to the end of the file if it exists	|
| `b`       | binary mode														|
| `t`       | text mode (default)												|
| `+`       | open a disk file for updating (reading and writing)				|
| `U`       | universal newline mode (deprecated)								|


Then, we have the ***for*** loop iterating over the dictionary to get both keys and values, and we want to add this information to a file. 
The function `f.write(content)` will add the content to the file, but the content also has to be a singe string, so we format our string, with our keys, values, the test and the character that represents the new line `\n`. This will then generate a line of content each time. 

And once all the content has been written, we need to let  the system know that we are not going to use that stream anymore, so we close it with `f.close()`.

For the second ***for*** loop, we are just writing numbers from 0 to 10, to a file, each number in a single line. The argument of the function `f.write(content)` has to be a string, so we need to transform our number to a string and in addition we have to add the character that represents the new line `\n`.

We can run the script with:

```
python3 testwrite.py
```

Now, let's check the output files:

```
ls -lh
cat nucleotides.txt
cat numbers.txt
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)

## Reading files 

> Change your flag to yellow ![](img/yellow.jpeg)


Now that we know how to write a file, let's read one of the files we generated, create a new script called `testread.py` with the following code:

```python {.line-numbers}
#!/usr/bin/env python3

print('This is my second mid-size Python script')

f = open("numbers.txt", "r")

print("Getting the first line:", f.readline())
print("Getting the rest of the lines:")
for number in f.readlines():
	print("Content of new line: ", int(number))
f.close()
```

Now, let's get over the script. We open the file with the function `open(filename, mode)`, this time with `mode=r` because we want to read the file.  Then we can get the content of a single line of the file with the function `f.readline()`. Then we can get all the lines of a file with the function `f.readlines()`. This function will return a list of strings, where each string is a line of the file. We now iterate over that list, like we did with the `nuc` variable before, and print the content of each element of the list. Since we had to add that `\n` (new line character) the output will be a little weird, so we will get that value to be considered as an integer with the function `int()` and we will have a nice list of numbers. Check the result by runnning the script with:

```
python3 testread.py
```
 
> Change your flag to green if you are good to continue ![](img/green.jpeg)
