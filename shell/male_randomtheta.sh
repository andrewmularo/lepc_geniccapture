#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 05:00:00
#SBATCH --error=male_randomtheta.err
#SBATCH --output=male_randomtheta.out
#SBATCH --job-name=produce_randomtheta_SLURMM_jobs


while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrpupfish
#SBATCH -n 10
#SBATCH -t 05:00:00
#SBATCH --job-name=region_male_${line[0]}_randomtheta_stats
#SBATCH --error=region_male_${line[0]}_randomtheta_stats.e
#SBATCH --output=region_male_${line[0]}_randomtheta_stats.o
#SBATCH --mem=50G


module load bioinfo
module load samtools

#Move to the angsd_output folder containing folder

cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams

samtools view -b -L male_1000sites.bed ${line[0]} > male_1000sites_${line[0]}"  > /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/jobs/windowsm_${line[0]}_randomtheta.sh



done < /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/male_filelist.txt


# Submit jobs

while read -a sample
do
        cd /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/errors
        sbatch /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/jobs/windowsm_${sample}_randomtheta.sh
done < /scratch/bell/amularo/LEPC_rerun_feb2025/aligned/final_bams/male_filelist.txt
