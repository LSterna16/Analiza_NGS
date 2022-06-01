#!/bin/bash

x="SRR06454"

for n in 5 6 7

do
	echo '................................................'
	echo 'Stats for BAM:' $x$n'_sort.bam'
	echo '................................................'

	samtools stats $x$n'_sort.bam' > 'stats_'$x$n'.stats'


done
