#!/bin/bash
#SBATCH -A fnrtowhee
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 14-00:00:00
#SBATCH --error=association_m_pca.err
#SBATCH --output=association_m_pca.out
#SBATCH --job-name=produce_association_pca__SLURMM_jobs

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_pca1.txt -doAsso 4 -cov male_pca_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pca1_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_pca_filelist.txt -P 64:


#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_pca1.txt -doAsso 4 -cov female_pca_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pca1_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_pca_filelist.txt -P 64:


/depot/fnrdewoody/apps/angsd/angsd -yQuant male_pca2.txt -doAsso 4 -cov male_pca_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pca2_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_pca_filelist.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant female_pca2.txt -doAsso 4 -cov female_pca_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pca2_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_pca_filelist.txt -P 64:
