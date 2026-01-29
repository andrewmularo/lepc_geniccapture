#!/bin/bash
#SBATCH -A fnrtowhee
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 05:00:00
#SBATCH --error=theta_10_1.err
#SBATCH --output=theta_10_1.out
#SBATCH --job-name=produce_theta10_1_SLURMM_jobs


cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams

#### run angsd on reduced filtered files 

## males 

/depot/fnrdewoody/apps/angsd/angsd -bam tailm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tailm
/depot/fnrdewoody/apps/angsd/angsd -bam wingm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/wingm
/depot/fnrdewoody/apps/angsd/angsd -bam pinnaem_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pinnaem
/depot/fnrdewoody/apps/angsd/angsd -bam culmenm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/culmenm
/depot/fnrdewoody/apps/angsd/angsd -bam combm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/combm



cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/theta

## Estimate Site Frequency Spectra

## males
/depot/fnrdewoody/apps/angsd/misc/realSFS tailm.saf.idx -P 24 > tailm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS wingm.saf.idx -P 24 > wingm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS pinnaem.saf.idx -P 24 > pinnaem.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS culmenm.saf.idx -P 24 > culmenm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS combm.saf.idx -P 24 > combm.sfs



### estimate theta for each site 
# males 
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tailm.saf.idx -outname tailm -sfs tailm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta wingm.saf.idx -outname wingm -sfs wingm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pinnaem.saf.idx -outname pinnaem -sfs pinnaem.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta culmenm.saf.idx -outname culmenm -sfs culmenm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta combm.saf.idx -outname combm -sfs combm.sfs




# Estimate other statistics 

# males 
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tailm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat wingm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pinnaem.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat culmenm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat combm.thetas.idx


