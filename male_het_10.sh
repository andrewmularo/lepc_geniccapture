#!/bin/bash
#SBATCH -A fnrblack
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 2:00:00
#SBATCH --error=maletraithet3.err
#SBATCH --output=maletraithet3.out
#SBATCH --job-name=produce_het_trait2_SLURMM_jobs


while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrblack
#SBATCH -n 10
#SBATCH -t 2:00:00
#SBATCH --job-name=region_male_${line[0]}_het3_stats
#SBATCH --error=region_male_${line[0]}_het3_stats.e
#SBATCH --output=region_male_${line[0]}_het3_stats.o
#SBATCH --mem=50G

module load bioinfo
module load samtools

#Move to the angsd_output folder containing folder
cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams

### PCA1

#samtools view -b -L pca1m_10.bed ${line[0]} > pca1m_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i pca1m_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/pca1m_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca1m_10_${line[0]}.saf.idx > het/pca1m_10_${line[0]}_est.ml

### PCA2

#samtools view -b -L pca2m_10.bed ${line[0]} > pca2m_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i pca2m_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/pca2m_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/pca2m_10_${line[0]}.saf.idx > het/pca2m_10_${line[0]}_est.ml


## Comb

samtools view -b -L combm_10.bed ${line[0]} > combm_10_${line[0]}


/depot/fnrdewoody/apps/angsd/angsd -i combm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/combm_10_${line[0]} -doCounts 1 -setMinDepth 3 

/depot/fnrdewoody/apps/angsd/misc/realSFS het/combm_10_${line[0]}.saf.idx > het/combm_10_${line[0]}_est.ml


## Culmen

#samtools view -b -L culmenm_10.bed ${line[0]} > culmenm_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i culmenm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/culmenm_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/culmenm_10_${line[0]}.saf.idx > het/culmenm_10_${line[0]}_est.ml



## Head

#samtools view -b -L headm_10.bed ${line[0]} > headm_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i headm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/headm_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/headm_10_${line[0]}.saf.idx > het/headm_10_${line[0]}_est.ml



## Mass

samtools view -b -L massm_10.bed ${line[0]} > massm_10_${line[0]}


/depot/fnrdewoody/apps/angsd/angsd -i massm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/massm_10_${line[0]} -doCounts 1 -setMinDepth 3 

/depot/fnrdewoody/apps/angsd/misc/realSFS het/massm_10_${line[0]}.saf.idx > het/massm_10_${line[0]}_est.ml


## Pinnae

#samtools view -b -L pinnaem_10.bed ${line[0]} > pinnaem_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i pinnaem_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/pinnaem_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/pinnaem_10_${line[0]}.saf.idx > het/pinnaem_10_${line[0]}_est.ml



## Tail 

#samtools view -b -L tailm_10.bed ${line[0]} > tailm_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i tailm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/tailm_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/tailm_10_${line[0]}.saf.idx > het/tailm_10_${line[0]}_est.ml


## Tarsus 

#samtools view -b -L tarsusm_10.bed ${line[0]} > tarsusm_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i tarsusm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/tarsusm_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/tarsusm_10_${line[0]}.saf.idx > het/tarsusm_10_${line[0]}_est.ml




## Wing 
#samtools view -b -L wingm_10.bed ${line[0]} > wingm_10_${line[0]}


#/depot/fnrdewoody/apps/angsd/angsd -i wingm_10_${line[0]} -ref /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -anc /scratch/bell/amularo/LEPC_rerun_feb2025/LEPC_genome/ref.fa  -dosaf 1 -minQ 30 -minMapQ 30 -GL 1 -P 26 -out het/wingm_10_${line[0]} -doCounts 1 -setMinDepth 3 

#/depot/fnrdewoody/apps/angsd/misc/realSFS het/wingm_10_${line[0]}.saf.idx > het/wingm_10_${line[0]}_est.ml" > /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/jobs/windowsm_${line[0]}_het.sh



done < /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/male_reduced_filelist.txt



# Submit jobs

while read -a sample
do
        cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/errors
        sbatch /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/jobs/windowsm_${sample}_het.sh
done < /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/male_reduced_filelist.txt
