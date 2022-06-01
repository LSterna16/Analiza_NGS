#!/bin/bash

x="SRR06454"

for n in 5 6 7

do
	echo '................................................'
	echo 'Converts SAM:' $x$n'.sam' 'to:' $x$n'.bam'
	echo '................................................'

	samtools view -S -b $x$n'.sam' > $x$n'.bam'


	echo '................................................'
	echo 'Counts the number of alignments for:' $x$n
	echo '................................................'

	samtools flagstat $x$n'.bam' > $x$n'_flagstat.txt'

done
