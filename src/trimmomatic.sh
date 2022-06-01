#!/bin/bash

x="SRR06454"
type=".fastq.gz"

out="trimmed_"
one="_1"
two="_2"

slid='4:20'
ml='20'

p="_paired"
u="_unpaired"

for n in 5 6 7

do

	echo '................................................'
	echo 'Trimming with:' $slid $ml 'on file:' $x$n$type
	echo '................................................'

	java -jar /home/Admin/Downloads/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 $x$n$one$type $x$n$two$type $out$n$one$p'.fastq' $out$n$one$u'.fastq' $out$n$two$p'.fastq' $out$n$two$u'.fastq' SLIDINGWINDOW:$slid MINLEN:$ml


done
