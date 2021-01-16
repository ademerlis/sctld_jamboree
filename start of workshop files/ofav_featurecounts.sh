#!/bin/bash
#BSUB -J featurecounts_ofav_subset
#BSUB -q general
#BSUB -P transcriptomics
#BSUB -o /projects/scratch/transcriptomics/allysondemerlis/scripts/featurecounts_ofav_subset.out
#BSUB -e /projects/scratch/transcriptomics/allysondemerlis/scripts/featurecounts_ofav_subset.err
#BSUB -n 8

#/projects/scratch/transcriptomics/allysondemerlis/scripts/featurecounts_ofav_subset.job
#purpose: quantify subset of Ofav sctld RNAseq using 
#featureCounts program to create a counts table on Pegasus

#specify variable containing sequence file prefixes, experiment design and directory paths

and="/projects/scratch/transcriptomics/allysondemerlis"

${and}/programs/subread-1.6.0-Linux-x86_64/bin/featureCounts -t gene \
-g ID \
-a ${and}/sequences/ofav_ncbi_genome.gff \
-o ${and}/projects/scltd_jamboree/ofav_subset.counts \
${and}/projects/sctld_jamboree/*Aligned.out.bam
