
## Project: “Pooled linkage analysis for discovery of Saccharomyces cerevisiae functional mutations by whole genome sequencing”

SRA:SRP003355, Whole Genome Sequencing
Experiments: 3 (3 samples)
Runs: 3 (3.8Gbp; 2.5Gb)
Organism: Saccharomyces cerevisiae
Layout: PAIRED
The purpose of this experiment was to identify mutated genes in vac6 and vac22 yeast mutants. 

# Pipeline:
1. Downloading reference genome (RefSeq GCF_000146045.2) and annotation using https://www.ncbi.nlm.nih.gov/refseq/ site. 
2. Downloading 1000000 reads SRA:SRP003355 
3. Doing quality control using fastqc command.fastqc.sh bash script was used. 
  - There was no adapters
  - Per base sequence quality could be improved for all files
4. Trimmomatic tool was used (trim.sh script) to improve the quality
5. Redoing quality control using fastqc command to check if the quality is improved.
  - The quality was improved
6. Mapping was done using hisat2 tool. At first index files were created using a reference genome (downloaded data from point 1. of pipeline). Then mapping was done for all files.
7. Samtools tool was used to  get .bam files (binary substitute for .sam files), falgstat - counts the number of alignments for each FLAG type,  to sorts files and stats – produces comprehensive statistics from alignment files.
8. Detection of polymorphisms. For polymorphisms detection I used bcftools, because this program can generated VCF or BCF containing genotype likelihoods for one or multiple alignment (BAM or CRAM) files. mpileup - multi-way pileup producing genotype likelihoods As output file, vcf was produced, that can be found in data/VCF files
9. The identified variants could not be annotated due to problems with SnpEff
