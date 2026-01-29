#!/bin/bash
#SBATCH -A highmem
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 1-00:00:00
#SBATCH --error=geneannotation.err
#SBATCH --output=geneannotation.out
#SBATCH --job-name=geneannotation_SLURMM_jobs

module load bioinfo
module load biocontainers
module load bedtools

bedtools intersect -a lepcgenes.bed -b pca1m.bed > pca1m_genes.txt
bedtools intersect -a lepcgenes.bed -b pca2m.bed > pca2m_genes.txt


bedtools intersect -a lepcgenes.bed -b pca1f.bed > pca1f_genes.txt
bedtools intersect -a lepcgenes.bed -b pca2f.bed > pca1f_genes.txt

#bedtools intersect -a lepcgenes.bed -b wingm.bed > wingm_genes.txt
#bedtools intersect -a lepcgenes.bed -b tailm.bed > tailm_genes.txt
#bedtools intersect -a lepcgenes.bed -b tarsusm.bed > tarsusm_genes.txt
#bedtools intersect -a lepcgenes.bed -b pinnaem.bed > pinnaem_genes.txt
#bedtools intersect -a lepcgenes.bed -b headm.bed > headm_genes.txt 
#bedtools intersect -a lepcgenes.bed -b culmenm.bed > culmenm_genes.txt
#bedtools intersect -a lepcgenes.bed -b combm.bed > combm_genes.txt
#bedtools intersect -a lepcgenes.bed -b massm.bed > massm_genes.txt 

#bedtools intersect -a lepcgenes.bed -b wingf.bed > wingf_genes.txt
#bedtools intersect -a lepcgenes.bed -b tailf.bed > tailf_genes.txt
#bedtools intersect -a lepcgenes.bed -b tarsusf.bed > tarsusf_genes.txt
#bedtools intersect -a lepcgenes.bed -b pinnaef.bed > pinnaef_genes.txt
#bedtools intersect -a lepcgenes.bed -b headf.bed > headf_genes.txt 
#bedtools intersect -a lepcgenes.bed -b culmenf.bed > culmenf_genes.txt
#bedtools intersect -a lepcgenes.bed -b combf.bed > combf_genes.txt
#bedtools intersect -a lepcgenes.bed -b massf.bed > massf_genes.txt
