# Week 06: Complex data types, loops, I/O, scripts and more...

## Dictionaries

> Change your flag to yellow ![](img/yellow.jpeg)

Dictionaries are great to store paired data, they are defined with curly brackets:

```
nuc_names= {'a':'adenine','g':'guanine','c':'cytosine','t':'thymine'}
```

In our dictionary the single letters `a g c t` are the keys, while the names `adenine guanine cytosine thymine` are the values

Here is an example about how using dictionaries can make our life easier. We want to replace our list with another list with its names.

```
nuc = ['a','g','t','c']
```

We know the element we want to replace:

```
nuc[0]
```

We can manually replace `a` by adenine by:

```
nuc[0] = 'adenine'

nuc
```

It will be inefficient to re-assign every element manually. Instead we can use a loop and the dictionary to do it.

## Loops

Loops are powerful functions that iterate an action over items. We learnt some basic loops for `bash`. 

### `for` loop

We will start with the ***for loop***. These loops are traditionally used when you have a block of code which you want to repeat a fixed number of times. The ***for*** statement iterates over the member of a sequence in order, executing a block of instructions each time.

```
for VARIABLE in ITERABLE_SEQUENCE:
	BLOCK
```

For example,  we can print easily, one by one every element of our list:

```
nuc = ['a','g','t','c']
for item in nuc:
	print(item)

```

Notice that `item` is a variable, an arbitrary name that we assigned to every element in the list. We can replace `item` by whatever and will get the same result. Assigning meaningful names will make our code more readable and understandable:

```
for nucleotide in nuc:
	print(nucleotide)
```

We can now employ our dictionary to replace every element in the list, but how do we access the elements of a dictionary?? Do you remember how we can call function out of variables because they, given the type of data they are, have this property?

Dictionaries have a lot of fuctions, if we want to look for the functions of a variable we can use `help(VARIABLE)`.

```
help(nuc_names)
```
 
The `help()` function, with no argument, it will open an interactive help system on the interpreter console (you can exit with `quit` or <kbd> ctrl</kbd> + <kbd>c</kbd>). If the argument is a string (any word), then the string is looked up as the name of a module, function, class, method, keyword, or documentation topic, and a help page is printed on the console.
 
This will show us all the different functions related to this variable and all the attributes that the variable has.

We can also use the function `dir()`, without arguments, it return the list of names in the current local scope. With an argument, attempt to return a list of valid attributes for that object. I consider this to be a summarized help, it shows you only the names of the attributes and functions without a long exaplanation.


Now that we know some of the functions that the dictionary has, we can work with it and print all the keys:

```
for k in nuc_names.keys():
	print(k)
```

We can also print the values:

```
for v in nuc_names.values():
	print(v)
```

But, we can also print both key and value at the same time:

```
for k, v in nuc_names.items():
	print(v)
```

And, we can even be more literal in our printing:

```
for k, v in nuc_names.items():
    print(k,' is the abbreviation for ',v)
```


Now we can build a loop statement that iterates over our list and dictionary, and modify our list given the information stored in our dictionary:

```
for index in range(0,4):
	nuc_to_replace = nuc[index]
	nuc[index] = nuc_names[nuc_to_replace] 

nuc
```

Great!

> Change your flag to green if you are good to continue ![](img/green.jpeg)

### `while` loop

> Change your flag to yellow ![](img/yellow.jpeg)

***while*** loops, like the ***For*** Loop, are used for repeating sections of code - but unlike a ***for*** loop, the while loop will not run n times, but until a defined condition is no longer met. If the condition is initially false, the loop body will not be executed at all.

This is an example when the condition is satisfied:

```
x = 1
while True:
    print("To infinity and beyond! Time: ", x)
    x += 1
```

This is an example when the conition is never satisfied:

```
while False:
    print("To infinity and beyond! Bummer, this will never happen. ")
```

Now, let's try to finish the loop when variable `x` has reached the value 10.

```
x = 1
while x<10:
    print("Until  x is not 10! Right now, x=", x)
    x += 1

x
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)

