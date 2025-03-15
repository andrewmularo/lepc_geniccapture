#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 2-00:00:00
#SBATCH --error=association_m1.err
#SBATCH --output=association_m1.out
#SBATCH --job-name=produce_association1_SLURMM_jobs


/depot/fnrdewoody/apps/angsd/angsd -yQuant male_wing.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/wings_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_combarea.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/combarea_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_culmen.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/culmen_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_head.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/head_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:



