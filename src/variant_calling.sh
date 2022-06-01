#!/bin/bash



for n in 5 6 7

do
	echo '.......................................................'
	echo 'Variant calling with bcftools:' 'BAM/SRR06454'$n
	echo '.......................................................'
		
	bcftools mpileup -Ou -f GCF_000146045.2_R64_genomic.fna 'BAM/SRR06454'$n'_sort.bam' | bcftools call --ploidy 1 -mv -Ob | bcftools view -i '%QUAL>=20' > 'vcfs/SRR06454'$n'.vcf'

done
