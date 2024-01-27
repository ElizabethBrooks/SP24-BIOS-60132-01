#!/bin/bash
#$ -M ebrooks5@nd.edu
#$ -m abe
#$ -q debug
#$ -N RunTemplate

# cd to data
cd /afs/crc.nd.edu/user/e/ebrooks5/SP24-BIOS-60132-01_data

# load modules needed
module load Bio/2.0

# status message
echo "Starting QC..."

# run commands
for f in *fastq.gz; do
    fastqc $f;
done

# status message
echo "QC done!"