#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 1-00:00:00
#SBATCH --error=malehet.err
#SBATCH --output=malehet.out
#SBATCH --job-name=produce_het_SLURMM_jobs

while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrpupfish
#SBATCH -n 10
#SBATCH -t 14-00:00:00
#SBATCH --job-name=region_male_${line[0]}_het_stats
#SBATCH --error=region_male_${line[0]}_het_stats.e
#SBATCH --output=region_male_${line[0]}_het_stats.o
#SBATCH --mem=50G

module load bioinfo
module load samtools

#Move to the angsd_output folder containing folder
cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams

### PCA1

samtools view -b -L pca1m_10.bed ${line[0]} > pca1m_10_${line[0]}


/depot/fnrdewoody/apps/angsd/angsd -i pca1m_10_${line[0]} -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -dosaf 1 -minMapQ 30 -GL 1 -P 26 -out het/pca1m_10_${line[0]} -doCounts 1 -setMinDepth 3 

/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca1m_10_${line[0]}.saf.idx > het/pca1m_10_${line[0]}_est.ml


### PCA2

samtools view -b -L pca2m_10.bed ${line[0]} > pca2m_10_${line[0]}


/depot/fnrdewoody/apps/angsd/angsd -i pca2m_10_${line[0]} -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -dosaf 1 -minMapQ 30 -GL 1 -P 26 -out het/pca2m_10_${line[0]} -doCounts 1 -setMinDepth 3 

/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca2m_10_${line[0]}.saf.idx > het/pca2m_10_${line[0]}_est.ml" > /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/windowsm_pca_${line[0]}_het.sh



done < /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/male_filelist.txt



# Submit jobs

while read -a sample
do
        cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/errors
        sbatch /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/windowsm_pca_${sample}_het.sh
done < /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/male_filelist.txt
