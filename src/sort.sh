#!/bin/bash

x="SRR06454"

out="_sort"

for n in 5 6 7

do
	echo '................................................'
	echo 'Sorts BAM:' $x$n'.bam'
	echo '................................................'

	samtools sort $x$n'.bam' -o $x$n$out'.bam'


done
