#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 14-00:00:00
#SBATCH --error=association_f.err
#SBATCH --output=association_f.out
#SBATCH --job-name=produce_association__female_SLURMM_jobs


###### Close relatives between females removed

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_wingsize_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/wingsize_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_combarea_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/combarea_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_culmenlength_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/culmenlength_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_headlength_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/headlength_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_mass_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/mass_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_pinnaesize_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pinnaesize_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_tailsize_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tailsize_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_tarsus_toe_norelate.txt -doAsso 4 -cov female_covariate_norelate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tarsus_toe_f_norelate.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist_norelate.txt -P 64:


### All females included

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_wingsize.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/wingsize_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_combarea.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/combarea_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant female_culmensize.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/culmenlength_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_headlength.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/headlength_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_mass.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/mass_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_pinnaesize.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/pinnaesize_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

#/depot/fnrdewoody/apps/angsd/angsd -yQuant female_tailsize.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tailsize_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:

/depot/fnrdewoody/apps/angsd/angsd -yQuant female_tarsussize.txt -doAsso 4 -cov female_age_covariate.txt -GL 1 -minQ 30 -minMapQ 30 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -doCounts 1 -setMinDepthInd 5 -doPost 1 -out association/tarsus_toe_f.out -fai /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa.fai -doMajorMinor 1 -doMaf 1 -SNP_pval 1e-6 -minHigh 15 -bam female_filelist2.txt -P 64:
