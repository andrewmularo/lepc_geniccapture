#!/bin/bash
#SBATCH -A fnrtowhee
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 1-00:00:00
#SBATCH --error=het.err
#SBATCH --output=het.out
#SBATCH --job-name=produce_het_SLURMM_jobs


while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrtowhee
#SBATCH -n 10
#SBATCH -t 4-00:00:00
#SBATCH --job-name=${line[0]}_het_stats
#SBATCH --error=${line[0]}_het_stats.e
#SBATCH --output=${line[0]}_het_stats.o
#SBATCH --mem=50G


#Move to the angsd_output folder containing folder
cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams




/depot/fnrdewoody/apps/angsd/angsd -i ${line[0]}_filt.bam -ref /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -anc /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa  -dosaf 1 -minQ 30 -GL 1 -P 10 -out het/${line[0]} -doCounts 1 -setMinDepth 3

/depot/fnrdewoody/apps/angsd/misc/realSFS -P 26 -fold 1 het/${line[0]}.saf.idx > het/${line[0]}_est.ml" > /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/${line[0]}_het.sh

done < /scratch/bell/amularo/LEPC/sample_resume.list



# Submit jobs

while read -a sample
do
        cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/errors
        sbatch /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/jobs/${sample}_het.sh
done < /scratch/bell/amularo/LEPC/sample_resume.list
