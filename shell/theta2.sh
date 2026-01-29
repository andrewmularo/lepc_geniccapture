#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 05:00:00
#SBATCH --error=theta_10_2.err
#SBATCH --output=theta_10_2.out
#SBATCH --job-name=produce_theta10_2_SLURMM_jobs


cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams

#### run angsd on reduced filtered files 

## males 
/depot/fnrdewoody/apps/angsd/angsd -bam tarsusm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tarsusm
/depot/fnrdewoody/apps/angsd/angsd -bam massm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/massm
/depot/fnrdewoody/apps/angsd/angsd -bam headm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/headm
/depot/fnrdewoody/apps/angsd/angsd -bam pca1m_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca1m
/depot/fnrdewoody/apps/angsd/angsd -bam pca2m_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca2m

cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/theta

## Estimate Site Frequency Spectra

## males
/depot/fnrdewoody/apps/angsd/misc/realSFS tarsusm.saf.idx -P 24 > tarsusm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS massm.saf.idx -P 24 > massm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS headm.saf.idx -P 24 > headm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS pca1m.saf.idx -P 24 > pca1m.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS pca2m.saf.idx -P 24 > pca2m.sfs


### estimate theta for each site 
# males 
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tarsusm.saf.idx -outname tarsusm -sfs tarsusm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta massm.saf.idx -outname massm -sfs massm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta headm.saf.idx -outname headm -sfs headm.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca1m.saf.idx -outname pca1m -sfs pca1m.sfs
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca2m.saf.idx -outname pca2m -sfs pca2m.sfs


## Estimate other statistics 

# males 
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tarsusm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat massm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat headm.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca1m.thetas.idx
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca2m.thetas.idx
