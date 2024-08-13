#!/bin/bash
#SBATCH -A fnrtowhee
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 1-00:00:00
#SBATCH --error=pcahetf.err
#SBATCH --output=pcahetf.out
#SBATCH --job-name=produce_het_SLURMM_jobs


while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrtowhee
#SBATCH -n 10
#SBATCH -t 14-00:00:00
#SBATCH --job-name=region_female_pca_${line[0]}_het_stats
#SBATCH --error=region_female_pca_${line[0]}_het_stats.e
#SBATCH --output=region_female_pca_${line[0]}_het_stats.o
#SBATCH --mem=50G

module load bioinfo
module load samtools

#Move to the angsd_output folder containing folder
cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams

### PCA1

#samtools view -b -L pca1f_10.bed ${line[0]} > pca1f_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i pca1f_10_${line[0]} -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -dosaf 1 -minMapQ 30 -GL 1 -P 26 -out het/pca1f_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca1f_10_${line[0]}.saf.idx > het/pca1f_10_${line[0]}_est.ml



##### PCA2 


samtools view -b -L pca2f_10.bed ${line[0]} > pca2f_10_${line[0]}


/depot/fnrdewoody/apps/angsd/angsd -i pca2f_10_${line[0]} -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -dosaf 1 -minMapQ 30 -GL 1 -P 26 -out het/pca2f_10_${line[0]} -doCounts 1 -setMinDepth 3 

/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca2f_10_${line[0]}.saf.idx > het/pca2f_10_${line[0]}_est.ml" > /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/windowsf_pca_10_${line[0]}_het_redo.sh



done < /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/female_filelist2.txt



# Submit jobs

while read -a sample
do
        cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/errors
        sbatch /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/windowsf_pca_10_${sample}_het_redo.sh
done < /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/female_filelist2.txt
