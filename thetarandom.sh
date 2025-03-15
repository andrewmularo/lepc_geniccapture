#!/bin/bash
#SBATCH -A fnrblack
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 05:00:00
#SBATCH --error=theta_random.err
#SBATCH --output=theta_random.out
#SBATCH --job-name=produce_thetarandom_SLURMM_jobs


cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams

#### run angsd on reduced filtered files 

#/depot/fnrdewoody/apps/angsd/angsd -bam male_randomsites_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/random



cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/theta

## Estimate Site Frequency Spectra

/depot/fnrdewoody/apps/angsd/misc/realSFS random.saf.idx -P 24 > random.sfs 

/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta random.saf.idx -outname random -sfs random.sfs



# Estimate other statistics  
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat random.thetas.idx
