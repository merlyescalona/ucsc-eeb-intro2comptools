# Week 05: Introduction to Python

Python is an interpreted or scripting programming language. It is useful for writing medium-sized scientific coding projects. By running a Python script each line is converted in real time into machine-language instructions. Other scripting programming languages are R, Matlab, perl or ruby. On the other hand, languages like C or  C++ allow us to make faster and more efficient programs. They are compiled programming languages, meaning they need to be translated into machine-language instruction beforehand. 

Why Learn Python? Python is general-purpose, versatile and popular. It’s great as a first language because it is concise, easy to read and has lots of power.

The engine that translates and runs Python is called the ***Python Interpreter*** and there are two ways to use it: 
- immediate/interactive mode: you type Python expressions into the Python Interpreter window, and the interpreter immediately shws the result.
- script mode:  where you'll write a program in a script and use the interpreter to execute the contents of the file. Scripts have the advantage that they can be saved to disk, printed, and so on.

The Python interpreter comes installed (by default) in macOS and it is already installed in your virtual machine (if you are using Windows, you can go to [week_00 > Installing Python](https://github.com/merlyescalona/ucsc-eeb-intro2comptools/tree/master/week_00#installing-python) ). You can check that you have it by typing in the terminal:

> Change your flag to yellow ![](img/yellow.jpeg)

```
which python
```

You will find that there are two versions of Python, `python2` and `python3`. Because `python2` is being phased out we will learn `python3`. Differences between versions are minimal. 

***NOTE***: when using scripts from collaborators always check which version was used.

We can access the `python3` interpreter just by typing:

```
python3
```

Now we are in the Python interpreter, you'll notice that there's this **`>>>`**. This is called the Python prompt, in the same way we have the **`$`** when in `bash`. The interpreter uses the prompt to let you know that it is ready for instructions.

```
Python 3.8.1 (tags/v3.8.1:1b293b6, Dec 18 2019, 23:11:46) [MSC v.1916 64 bit (AMD64)] on win32                   
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

Let's start with the basics, enter `2 + 2` at the prompt to have Python do some simple math.

```
2 +2
```

In Python `2+2` is called an ***expression**, and they have values and operators. That means you can use expressions anywhere in Python code that you could also use a value. In the previous example, `2 + 2`
is evaluated down to a single value, 4. A single value with no operators is also considered an expression, though it evaluates only to itself, and what Python would do is jut print it as shown here:

```
2
```

You can run plenty of other mathematical operators in Python expressions. Take into account 
there's an order for the execution (interpretation) of the operators, similar to that of mathematics. 

For example, what are the differences between the following expressions:

```
2 + 3 * 6
(2 +                           3) * 6
```

We can assign values to variables. Variables are simply names that refere to values. For instance, let'sassign the number `4` to the variable `bases`:

```
bases = 4
```

Though you can name your variables almost anything, Python does have some naming restrictions. Table 1-3 has examples of legal variable names. You can name a variable anything as long as it obeys the following three rules:

- It can be only one word with no spaces.
- It can use only letters, numbers, and the underscore (_) character.
- It can’t begin with a number.


| Valid variable names |       Invalid variable names                 |
|----------------------|----------------------------------------------|
| my_seq               | my-seq (hyphens are not allowed)             |
| mySeq                | my seq (spaces are not allowed)              |
| seq4                 | 4seq (can’t begin with a number)             |
| _42                  | 42 (can’t begin with a number)               |
| TOTAL_SUM            | TOTAL_$UM (special characters like $ are not allowed) |
| hello                | 'hello' (special characters like ' are not allowed)   |

> Change your flag to green if you are good to continue ![](img/green.jpeg)

Python has different types with different properties. We are going to review these:

## Integers

> Change your flag to yellow ![](img/yellow.jpeg)

We will assign the number 4 to the variable “bases”

```
bases = 4
```

We can check that bases was assigned by:

```
bases / 4
```

## Floats

Float are numbers with decimals, while it seems silly to have two types of data, integers and float have different properties (these differences were more important in python2). In any case it is important to keep this in mind in case you get error messages associated with integers and floats.

```
rate = 0.1
```

We can now multiply our two variables :

```
rate * bases
```

Alternatively, we can assign the result to a new variable and then check its value. Because we are in the interpreter we can write the name of the variable and get its value. 

```
change = rate * bases
change
```

## Functions

We can also use the function `print()` to get the value of the variable:

```
print(change)
```

We can check what type of data a variable is storing:

```
type(change)
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)


## Strings

> Change your flag to yellow ![](img/yellow.jpeg)

A string is a singular piece of data stored as a single object. In bioinformatics, DNA sequences are an example of strings. Notice that strings have to be indide quotes

```
seq = 'atgctgctgtgtcg'
print(seq)
type(seq)
```

### Operations on strings

We cannot perform mathematical operations with strings, even if they look like numbers. Some operators will be the same, but given that they data type is different, their function is different too. For example, to concatenate 2 strings (in our case sequences) we will use the `+` operator:

```
dobleseq=seq + seq
print(doubleseq)
```

We can also use `*`, in this case this will perform a repetittion.

```
bye="Bye"
bye*3
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)

## Lists

> Change your flag to yellow ![](img/yellow.jpeg)

Lists are useful to store ordered or unordered items. Notice that brackets surround the list, every item is separated by a comma, and non-numeric items are quoted

```
nuc = ['a','g','t','c']
```

A super-hyper-important thing in python is that items in list are indexed starting with 0. Meaning, that to invoke the first item of you need to do:

```
nuc[0]
```

Meanwhile, you can invoke the last item with:

```
nuc[3]
```

A cool trick to invoke the last item of list is: 

```
nuc[-1]
```

List are mutable. We can create a second list and concatenate it with the first:

```
amb = ['y','r','w','s','k','m']
nuc_amb = nuc + amb
print(nuc_amb)
```

You can see that the sum preserves the order. We can sort the items by:

```
nuc_amb.sort()
print(nuc_amb)
```
> Change your flag to green if you are good to continue ![](img/green.jpeg)


### Other operators

Operators are logical operations very useful for coding. For example we can check if bases equals 4. For this we need to use the otherwise we will be assigning the value 4.

```
4 is bases 
5 is bases
4 == bases
5 == bases
```

We can see test whether a motif is inside a sequence:

```
motif1 = 'acac'
motif1 in seq 

motif2 ='gtgt'
motif2 in seq
```
> Change your flag to green if you are good to continue ![](img/green.jpeg)

So far you know the basics of individual expressions and instructions. A program is a series of instructions/ But programs/scripts need a purpose, they are not a random set of instructions. We want to be able to guide our set of instructions according to the result of some of them. In this case the program would be able to skip, repeat or choose instructions. In order to organize the *flow* of our instructions,  we will learn ***if***, ***elif***, ***else*** statements.

## if statement

> Change your flag to yellow ![](img/yellow.jpeg)


The **if** statement is a powerful tool to execute code if a condition is satisfied. In plain English, an if statement could be read as:

> ***If this condition is true, execute the code in the clause.***

In Python, an if statement consists of the following:

```
if CONDITION:
    CLAUSE

NEXT_INSTRUCTION
```

```
if motif in seq:
    print('motif found in sequence')

```

> **Indentation**
> Most of the programming languages like C, C++, Java or R use braces `{ }` to define a block of code. Python uses indentation.
> A code block (body of a function, loop etc.) starts with indentation and ends with the first unindented line. The amount of indentation is up to you, but it must be consistent throughout that block.
> Generally four whitespaces are used for indentation and is preferred over tabs.


### else

Now, we have an instruction to follow if the condition is true, but what happens when we also want to do something if it not satisfied.

The format of this statement is:

```
if CONDITION:
    IF_CLAUSE
else:
    ELSE_CLAUSE

NEXT_INSTRUCTION
```

Following with the same example:

```
if motif in seq:
    print('motif found in sequence')
else:
    print('Error: the motif was not found.)

```

### elif

While only one of the `if` or `else` clauses will execute, you may have a case where you want one of many possible clauses to execute. The `elif` statement is an “else if” statement that always follows an `if` or another `elif` statement. It provides another condition that is checked only if all of the previous conditions were False. In code, an elif statement always consists of the following:


```
if CONDITION:
    CONDITION1_CLAUSE
elif CONDITION_2:
    CONDITION2_CLAUSE

NEXT_INSTRUCTION
```

For example, let's check if both of our motifs (`motif` and `motif1`) are in our sequence:

```
if motif in seq:
    print('motif found in sequence')
elif motif2 in seq:
    print('motif2 found in sequence')
```


What about if we want to check both motifs but we also want to do something if we don't find any of the 2 motifs.

```
if motif in seq:
    print('motif found in sequence')
elif motif2 in seq:
    print('motif2 found in sequence')
else:
    print('None of the motifs were found.)

```


> Change your flag to green if you are good to continue ![](img/green.jpeg)
