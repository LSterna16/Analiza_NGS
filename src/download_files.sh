#!/bin/bash
do
  fastq-dump -X 1000000 --gzip --split-files SRR064545
  fastq-dump -X 1000000 --gzip --split-files SRR064546
  fastq-dump -X 1000000 --gzip --split-files SRR064547
done
echo Done
