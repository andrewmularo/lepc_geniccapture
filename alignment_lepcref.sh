#!/bin/bash
#SBATCH -A fnrpupfish
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 1-00:00:00
#SBATCH --error=align.err
#SBATCH --output=align.out
#SBATCH --job-name=produce_align_SLURMM_jobs


module purge
module load bioinfo
module load bwa
module load picard-tools
module load bedops
module load GATK/3.6.0
module load samtools

#Move to fastq containing directory
cd /scratch/bell/amularo/LEPC/fastq_files
#Make sample list
#ls -1 *.fastq.gz | sed "s/_R[1-2]_001.fastq.gz//g" | uniq > sample.list
#Make directory to hold all SLURMM jobs
#mkdir jobs
#Define variables to shorten commands
REF=/scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa
DICT=/scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.dict
FILT=/scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ok.bed
#bwa index $REF
#samtools faidx $REF
PicardCommandLine CreateSequenceDictionary reference=$REF output=$DICT


while read -a line
do 
	echo "#!/bin/sh -l
#SBATCH -A fnrpupfish
#SBATCH -n 10
#SBATCH -t 05-00:00:00
#SBATCH --job-name=${line[0]}_aln
#SBATCH --error=${line[0]}_aln.e
#SBATCH --output=${line[0]}_aln.o
#SBATCH --mem=18G
module --force purge
module load bioinfo
module load bwa
module load picard-tools
module load bedops
module load GATK/3.6.0
module load samtools
#Move to the paired-end fastq containing folder
cd /scratch/bell/amularo/LEPC/fastq_files
# Align sample to indexed reference genome
bwa mem -t 10 -M -R \"@RG\tID:group1\tSM:${line[0]}\tPL:illumina\tLB:lib1\tPU:unit1\" \
/scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa \
${line[0]}_R1_001.fastq ${line[0]}_R2_001.fastq > /scratch/bell/amularo/LEPC/align_lepc_doublecheck/${line[0]}.sam
#Move to aligned directory
cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/
#Validate sam file
PicardCommandLine ValidateSamFile I=${line[0]}.sam MODE=SUMMARY O=${line[0]}.sam.txt
#Sort validated sam file by read coordinate
PicardCommandLine SortSam INPUT=${line[0]}.sam OUTPUT=sorted_${line[0]}.bam SORT_ORDER=coordinate
#Get summary stats on initial alignments:
samtools flagstat sorted_${line[0]}.bam > ${line[0]}_mapped.txt

samtools depth -a sorted_${line[0]}.bam \
| awk '{c++;s+=\$3}END{print s/c}' \
> ${line}.pre.meandepth.txt

samtools depth -a sorted_${line[0]}.bam \
| awk '{c++; if(\$3>0) total+=1}END{print (total/c)*100}' \
> ${line}.pre.1xbreadth.txt


#Mark duplicates
PicardCommandLine MarkDuplicates INPUT=sorted_${line[0]}.bam OUTPUT=dedup_${line[0]}.bam METRICS_FILE=metrics_${line[0]}.bam.txt OPTICAL_DUPLICATE_PIXEL_DISTANCE=2500
#Index in prep for realignment
PicardCommandLine BuildBamIndex INPUT=dedup_${line[0]}.bam
# local realignment of reads
GenomeAnalysisTK -T RealignerTargetCreator -nt 10 -R /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -I dedup_${line[0]}.bam -o ${line[0]}_forIndelRealigner.intervals
#Realign with established intervals
GenomeAnalysisTK -T IndelRealigner -R /scratch/bell/amularo/LEPC/Tympanuchus_pallidicinctus_reference/ref.fa -I dedup_${line[0]}.bam -targetIntervals ${line[0]}_forIndelRealigner.intervals -o ${line[0]}_indel.bam
#Make new directory
#Fix mate info
PicardCommandLine FixMateInformation INPUT=dedup_${line[0]}.bam OUTPUT=${line[0]}.fixmate.bam SO=coordinate CREATE_INDEX=true
#   Remove unmapped (4), secondary (256), QC failed (512), duplicate (1024), and
#   supplementary (2048) reads from indel-realigned BAMs, and keep only reads
#   mapped in a proper pair (2) to regions in a BED file (produced from QC_reference.sh)
samtools view -@ 10 -q 30 -b -F 3844 -f 2 -L $FILT ${line[0]}.fixmate.bam > /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/${line[0]}_filt.bam 
#Move into the final directory
cd /scratch/bell/amularo/LEPC/align_lepc_doublecheck/final_bams/
#Index bam file
PicardCommandLine BuildBamIndex INPUT=${line[0]}_filt.bam

samtools depth -a ${line[0]}_filt.bam \
| awk '{c++;s+=\$3}END{print s/c}' \
> ${line}.post.meandepth.txt

samtools depth -a ${line[0]}_filt.bam \
| awk '{c++; if(\$3>0) total+=1}END{print (total/c)*100}' \
> ${line}.post.1xbreadth.txt

echo done" > /scratch/bell/amularo/LEPC/jobs/${line[0]}_aln2.sh

done < /scratch/bell/amularo/LEPC/sample.list

while read -a sample
do
        cd /scratch/bell/amularo/LEPC/errors/
        sbatch /scratch/bell/amularo/LEPC/jobs/${sample}_aln2.sh
done < /scratch/bell/amularo/LEPC/sample.list
