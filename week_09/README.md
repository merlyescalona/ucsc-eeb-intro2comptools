# Week 09 - More iteration and Pandas

> Change your flag to yellow ![](img/yellow.jpeg)

## Creating dataframes

Being able to create and modify data frames is powerful to record and analyze data. Pandas is a python package that allows you to do just that. 

We have been able to count sequences and calculate their length by using customs scripts and biopython. Wouldn't it be great if we can store all this data in a dataframe save it as a table?

We are going to create a script that iterates over a list of fasta files, iterates over them, and creates a dataframe with useful information.

First we are going to write a loop that iterates over every fasta file in a folder. Please download the file fasta files found here:
https://www.dropbox.com/sh/t0khu2icdoc09cw/AAAfanTV4IPrhMAfgkNFjurla?dl=0

Open your favorite text editor and paste the following code. Save the file in the same folder as your fasta files as seq_counter.py

```
#!/usr/bin/env python3

# script to read the number of sequences in all fasta files inside a folder

import glob
import pandas as pd
from Bio import SeqIO

print("getting list of fasta files")
files = glob.glob("*.fas")
print(files)
```

Execute the file:

```
python3 seq_counter.py
```
You will that so far we have been able to store all the filenames that end with `*.fas` in a list.

Now we are going to create a dataframe with the information we want to record. Using pandas. Append the following text at the end of your file:

```
print("creating dataframe")
c = ["gene","sample","length"]
stats = pd.DataFrame(columns=c)
print(stats.head)
```
When we print head we see an empty dataframe, which now we are going to populate using a loop:

```
for file in files:
    print("reading file " + file)
    gene_name = file.split(".")[0]
    print(gene_name)
    for seq_record in SeqIO.parse(file, "fasta"):
        sample_name = seq_record.id
        print(sample_name)
        seq_len = len(seq_record)
        print(seq_len)
        
        stats = stats.append({"gene":gene_name,"sample":sample_name,"length":seq_len}, ignore_index=True)

print(stats.head)
```
Notice that there is one loop nested in another. Now we need to save the dataframe by adding the following code at the end of the file:

```
stats.to_csv(path_or_buf="gene_stats.csv")
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)

## Modifying dataframes

> Change your flag to yellow ![](img/yellow.jpeg)

You can also subselected dataframes easily with pandas. For this exercise we will be using python interactively. Type:

```
python3
import pandas as pd
df = pd.read_csv("gene_stats.csv")
df.head
```

We have imported our dataframe :)

We can for example subselect only the sequences in genes_2 by:

```
df_g2 = df.loc[df["gene"] == "genes_2"]
df_g2
```

We can identify the 10 longest sequences by:

```
 df_g2 = df_g2.sort_values(by="length", ascending=False)
 df_g2
```
You will see that now our dataframe is ordered. Now we need to subselect the top 10 longest sequences:

```
df_g2_top = df_g2.head(n=10)
df_g2_top
```

> Change your flag to green if you are good to continue ![](img/green.jpeg)
