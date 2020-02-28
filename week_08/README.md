# Week 08 - Python packages and BioPython

> Change your flag to yellow ![](img/yellow.jpeg)

## Python functions and modules

We have learned how to use scripts for relatively small tasks. As the  script gets longer, you may want to split it into several files for easier maintenance. Also, you may want to use a handy function that you’ve written in several programs without copying its definition into each program, or you want to use someone else's function.

To support this, Python has a way to put definitions in a file and use them in a script or in an interactive instance of the interpreter. Such a file is called a ***module***; definitions from a ***module*** can be ***imported*** into other modules or into the main module. 

For example, let's imagine we want to store the functionality we have been using to count sequences of a FASTA file as a module. First,  let's create a directory for the current week.

```bash
mkdir week_08
cd week_08
```

Then open your favorite editor, write the following code and save it as `seqcount.py` in the folder you have just created:

```python
#!/usr/bin/env python3

def seq_count(filename):
    counter=0
    f = open(filename, "r")
    for line in f.readlines():
        if ">" in line:
            counter+=1
    f.close()
    return counter


def seq_count_write_file(inputfilename, outputfilename):
    counter=0
    f = open(inputfilename, "r")
    for line in f.readlines():
        if ">" in line:
            counter+=1
    f.close()
    f2 = open(outputfilename, "w")
    f2.write("File {} has {} sequences.\n".format(outputfilename, counter))
    f2.close()
    print("{} file has been written.".format(outputfilename))
```

To be able to run this code and get the proper output, let's also download some FASTA files from here and save them into your `week_08` directory:
-  [genes_1.fas](https://raw.githubusercontent.com/merlyescalona/ucsc-eeb-intro2comptools/master/week_07/data/genes_1.fas)
-  [genes_2.fas](https://raw.githubusercontent.com/merlyescalona/ucsc-eeb-intro2comptools/master/week_07/data/genes_2.fas)

Now, on your terminal open the `python3` interpreter, and type:

```python
import seqcount
seqcount.seq_count("genes_1.fas")
seqcount.seq_count("genes_2.fas")
seqcount.seq_count_write_file("genes_1.fas","num_seqs_genes1.txt" )
seqcount.seq_count_write_file("genes_2.fas","num_seqs_genes2.txt" )
```

Now:
- Line 1 will define how to call a module, in our cas this is a local module (we created it), but it works for all the ones we are going to download.
- Lines 2 and 3 are calling the function `seq_count` from our module for the 2 different FASTA files. This function will return the number of lines from the specific FASTA file.
- Lines 4 and 5 are calling the function `seq_count_write_file` from our module for the 2 different FASTA files. Different to the previous function, this one will write the count into a file.

> Change your flag to green if you are good to continue ![](img/green.jpeg)

## Packages

> Change your flag to yellow ![](img/yellow.jpeg)

***Packages** are a way of structuring Python's modules. We use the "dotted module names" convention to access the modules of a package. For example, the module name `A.B` designates a submodule named `B` in a package named `A`. This is useful because some packages might have the same variable or function names and do different things. We will see further along how they work. 

Python has a wide array of packages that are very useful for coding. Installing them can be a difficult but fortunately there are software/package managers that make this task very easy. `brew` is one of these package managers for macOS.

In `bash`, let's install `brew`:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Here is the documentation for `brew`: https://brew.sh

Now we need to install `python3` with `brew`:

```
brew install python
```

Now we need to install pip:

```
brew install pip
```

Finally we can installing python packages:

```
pip3 install pandas
```

We will also need biopython:

```
pip3 install biopython
```

See if the installations worked by running the `python3` interpreter and typing:

| pandas                      |                 BioPython |
|-----------------------------|---------------------------|
| `import pandas`             | `import Bio`              |
| `print(pandas.__version__)` | `print(Bio.__version__)`  | 

If we get no errors, all the modules have been installed correctly.

> Change your flag to green if you are good to continue ![](img/green.jpeg)


## What is `biopython`?

`biopython` is a collection of python modules that contain code for manipulating biological data. Many handle sequence data and common analysis and processing of the data including reading and writing all common file formats. `biopython` will also run blast for you and parse the output into objects inside your script. This requires just a few lines of code. 

For more resources on `biopython` go [here](https://github.com/merlyescalona/ucsc-eeb-intro2comptools/blob/master/resources.md). 


### Working with DNA sequences

> Change your flag to yellow ![](img/yellow.jpeg)

This is the core of the `biopython` package. The main name of the package is `Bio` and then we have a submodule called `Seq` and the actual class we are interested in is also called `Seq`. Let's type the following in our python interpreter.

```python
import Bio.Seq 
my_seq = Bio.Seq.Seq("AGTACACTGGT")
type(my_seq)
my_seq
print(my_seq)
my_seq.alphabet
```

We see something new in here, now we use things called `class`. Classes provide a means of bundling data and functionality together. Creating a new class creates a new type of object.

> For example, we can think of a class called `Car`, a generalization, cars can have attributes and methods (functions) they can do. As attributes, we can think of color, number of tyres, type of tyres,  number of doors, model, manufacturer.... As methods, we can thing of the actions it can do, start,  accelerate,  move the wheel, turn lights on....
> 
> Now that we have defined a class `Car`, if we want to instantiate (create) an spefic car with its features (attributes), we would be creating an object. If we were to transform this into a `python` code, this would be something like:
> ```
> my_car = Car(name="Neo", color="black", number_of_tyres=4)
> my_car
> 
> ```


In addition to having an alphabet, the `Seq` object differs from the Python `string` in the methods it supports. For instance, you can’t do the following with a plain string:

```python
my_seq
my_seq.complement()
my_seq.reverse_complement()
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)


### Parsing sequence file formats

> Change your flag to yellow ![](img/yellow.jpeg)

If you open the `genes_1.fas` FASTA file in your favourite text editor, you’ll see that the file starts like this:

```
>C_clav19256
GGAAAACTCTGACCCAAATTATCTCAAGTCCAAACAACTTTCAGTTACCAGGGAAAAGGT
TGATGTTCCTGACGTGGCTGTTGAAACTGATGTATCAATGGAAGAAACTGAAAAGATCCA
TTTGCCCAATATTTATCAGGACATGGTCTCATTTAAAAGTTCTCTAGTGGATGATAAAGT
CTTGCTTCTTGATACGCCCGAAGATGAAAAATTCTTGTCCAGGTCTGTGGGGATTGAAGA
ACCATCTGAGGCAGTATTGCAAAATGCTAGTTCAGAGTGGAAAAGGTATGAAATGGTAAC
AACCCGACTATCGCAGGAACTTGCCGAACAGTTACGTCTGGTGATGGAACCAACTCT
```

It contains 76 records (sequences), each has a line starting with `>`(greater-than symbol) followed by the sequence on one or more lines. Now, we can read the file with `biopython` like this, in the interpreter type:

```python
from Bio import SeqIO

for seq_record in SeqIO.parse("genes_1.fas", "fasta"):
    print(seq_record.id)
    print(len(seq_record))
    print(repr(seq_record.seq))
```

We see there's another way of loading/importing modules or submodules of a package. This is helpful because it reduces the amount of prefixes we have to use to work with an specific module.

The variable `seq_record`, of class `SeqRecord`, is a single element of all the records we obtain from `SeqIO.parse()` would look like this: 

```
SeqRecord(
    seq=Seq('CTGATGCTGTTGATGATAACAGCTATAATCAGGTGGATAACAATTCACAACATA...TTG', SingleLetterAlphabet()),
    id='C_arab98080', 
    name='C_arab98080', 
    description='C_arab98080', 
    dbxrefs=[])
```

This is all the information of a `SeqRecord` class we can access. With this, we could then solve the original problem of counting number of sequences from a file in a different way. For instance, open your favorite editor and create a file called `seqcount_biopython.py` with the following content:

```python
from Bio import SeqIO

#option 1
counter=0
for seq_record in SeqIO.parse("genes_1.fas", "fasta"):
    counter+=1

print("Option 1: genes_1.fas")
print(counter)

# option 2
records=SeqIO.to_dict(SeqIO.parse("genes_1.fas", "fasta"))
counter2=len(records)

print("Option 2: genes_1.fas")
print(counter2)
```

Then run it with:

```bash
python3 seqcount_biopython.py
```

- `Option 1` iterates over all the records (where each record has all the information of a sequence, the description, the ID and the nucleotide sequence itself). Meaning if we have 100 sequences, we will have 100 records.So we just need to count the number of times we can go over the records.

- `Option 2`, uses a different approach, there's an option in this pacakge that allow us to transform the result of the `SeqIO.parse()` function into a dictionary, and we know how to get the number of elements of a dictionary by using the function `len()`.  Let's identify the problem one line at a time.

```python
from Bio import SeqIO
records=SeqIO.parse("genes_1.fas", "fasta")
type(records)
counter=len(records)
records=SeqIO.to_dict(SeqIO.parse("genes_1.fas", "fasta"))
type(records)
counter2=len(records)
```