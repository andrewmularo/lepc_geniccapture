#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 14-00:00:00
#SBATCH --error=association_m.err
#SBATCH --output=association_m.out
#SBATCH --job-name=produce_association_SLURMM_jobs




###### Close relatives between males removed

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_wingsize_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/wingsize_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_combarea_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/combarea_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant male_culmenlength_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/culmenlength_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant male_headlength_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/headlength_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant male_mass_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/mass_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_pinnaesize_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pinnaesize_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_tailsize_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tailsize_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_tarsus_toe_norelate.txt -doAsso 4 -cov male_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tarsus_toe_m_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist_norelate.txt -P 64:


### All males included

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_wingsize.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/wingsize_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_combarea.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/combarea_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_culmenlength.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/culmenlength_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_headlength.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/headlength_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_mass.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/mass_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_pinnaesize.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pinnaesize_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_tailsize.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tailsize_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant male_tarsus_toe.txt -doAsso 4 -cov male_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tarsus_toe_m.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam male_filelist.txt -P 64:



