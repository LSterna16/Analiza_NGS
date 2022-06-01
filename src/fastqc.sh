#!/bin/bash

file=""
x="SRR06454"
type=".fastq.gz"

five="5_"
six="6_"
seven="7_"

for n in 1 2

do
		echo $file$x$five$n$type 
		fastqc $file$x$five$n$type 
		echo $file$x$six$n$type 
		fastqc $file$x$six$n$type 
		echo $file$x$seven$n$type 
		fastqc $file$x$seven$n$type 
done
