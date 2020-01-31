#script that prints the number of sequences in a fasta file 
for file in *.fas; do echo $file >> results.txt ; grep -c '>' $file >> results.txt; done

echo done
