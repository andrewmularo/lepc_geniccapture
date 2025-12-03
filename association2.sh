#!/bin/bash
#SBATCH -A fnrblack
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 5-00:00:00
#SBATCH --error=association_m2.err
#SBATCH --output=association_m2.out
#SBATCH --job-name=produce_association2_SLURMM_jobs



/depot/fnrdewoody/apps/angsd/angsd -yQuant male_mass.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/mass_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant male_pinnae.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pinnae_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant male_tail.txt -doAsso 4 -cov male_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tail_m.out -fai /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:


