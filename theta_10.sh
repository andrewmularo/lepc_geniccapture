#!/bin/bash
#SBATCH -A fnrtowhee
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 1-00:00:00
#SBATCH --error=theta_10.err
#SBATCH --output=theta_10.out
#SBATCH --job-name=produce_theta10_SLURMM_jobs

cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams

#### run angsd on reduced filtered files 

## males 

/depot/fnrdewoody/apps/angsd/angsd -bam tailm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tailm
#/depot/fnrdewoody/apps/angsd/angsd -bam wingm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/wingm
#/depot/fnrdewoody/apps/angsd/angsd -bam pinnaem_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pinnaem
#/depot/fnrdewoody/apps/angsd/angsd -bam culmenm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/culmenm
#/depot/fnrdewoody/apps/angsd/angsd -bam combm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/combm
#/depot/fnrdewoody/apps/angsd/angsd -bam tarsusm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tarsusm
#/depot/fnrdewoody/apps/angsd/angsd -bam massm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/massm
#/depot/fnrdewoody/apps/angsd/angsd -bam headm_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/headm
#/depot/fnrdewoody/apps/angsd/angsd -bam pca1m_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca1m
#/depot/fnrdewoody/apps/angsd/angsd -bam pca2m_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca2m

##females

/depot/fnrdewoody/apps/angsd/angsd -bam tailf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tailf
#/depot/fnrdewoody/apps/angsd/angsd -bam wingf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/wingf
#/depot/fnrdewoody/apps/angsd/angsd -bam pinnaef_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pinnaef
#/depot/fnrdewoody/apps/angsd/angsd -bam culmenf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/culmenf
#/depot/fnrdewoody/apps/angsd/angsd -bam combf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/combf
#/depot/fnrdewoody/apps/angsd/angsd -bam tarsusf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/tarsusf
#/depot/fnrdewoody/apps/angsd/angsd -bam massf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/massf
#/depot/fnrdewoody/apps/angsd/angsd -bam headf_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/headf
#/depot/fnrdewoody/apps/angsd/angsd -bam pca1f_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca1f
#/depot/fnrdewoody/apps/angsd/angsd -bam pca2f_10_filelist.txt -doSaf 1 -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -GL 1 -minQ 30 -minMapQ 30 -P 24 -out theta/pca2f

cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/theta

## Estimate Site Frequency Spectra

## males
/depot/fnrdewoody/apps/angsd/misc/realSFS tailm.saf.idx -P 24 > tailm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS wingm.saf.idx -P 24 > wingm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pinnaem.saf.idx -P 24 > pinnaem.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS culmenm.saf.idx -P 24 > culmenm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS combm.saf.idx -P 24 > combm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS tarsusm.saf.idx -P 24 > tarsusm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS massm.saf.idx -P 24 > massm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS headm.saf.idx -P 24 > headm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pca1m.saf.idx -P 24 > pca1m.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pca2m.saf.idx -P 24 > pca2m.sfs

# females 
/depot/fnrdewoody/apps/angsd/misc/realSFS tailf.saf.idx -P 24 > tailf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS wingf.saf.idx -P 24 > wingf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pinnaef.saf.idx -P 24 > pinnaef.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS culmenf.saf.idx -P 24 > culmenf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS combf.saf.idx -P 24 > combf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS tarsusf.saf.idx -P 24 > tarsusf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS massf.saf.idx -P 24 > massf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS headf.saf.idx -P 24 > headf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pca1f.saf.idx -P 24 > pca1f.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS pca2f.saf.idx -P 24 > pca2f.sfs


### estimate theta for each site 
# males 
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tailm.saf.idx -outname tailm -sfs tailm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta wingm.saf.idx -outname wingm -sfs wingm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pinnaem.saf.idx -outname pinnaem -sfs pinnaem.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta culmenm.saf.idx -outname culmenm -sfs culmenm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta combm.saf.idx -outname combm -sfs combm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tarsusm.saf.idx -outname tarsusm -sfs tarsusm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta massm.saf.idx -outname massm -sfs massm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta headm.saf.idx -outname headm -sfs headm.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca1m.saf.idx -outname pca1m -sfs pca1m.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca2m.saf.idx -outname pca2m -sfs pca2m.sfs


# females
/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tailf.saf.idx -outname tailf -sfs tailf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta wingf.saf.idx -outname wingf -sfs wingf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pinnaef.saf.idx -outname pinnaef -sfs pinnaef.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta culmenf.saf.idx -outname culmenf -sfs culmenf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta combf.saf.idx -outname combf -sfs combf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta tarsusf.saf.idx -outname tarsusf -sfs tarsusf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta massf.saf.idx -outname massf -sfs massf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta headf.saf.idx -outname headf -sfs headf.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca1f.saf.idx -outname pca1f -sfs pca1f.sfs
#/depot/fnrdewoody/apps/angsd/misc/realSFS saf2theta pca2f.saf.idx -outname pca2f -sfs pca2f.sfs



## Estimate other statistics 

# males 
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tailm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat wingm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pinnaem.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat culmenm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat combm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tarsusm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat massm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat headm.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca1m.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca2m.thetas.idx



# females 
/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tailf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat wingf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pinnaef.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat culmenf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat combf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat tarsusf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat massf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat headf.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca1f.thetas.idx
#/depot/fnrdewoody/apps/angsd/misc/thetaStat do_stat pca2f.thetas.idx
