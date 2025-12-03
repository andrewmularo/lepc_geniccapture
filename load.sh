#!/bin/bash
# FILENAME:  geneticload.sh

#SBATCH --account=fnrdewoody
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=30
#SBATCH --partition=gpu
#SBATCH --time=24:00:00
#SBATCH --job-name load


module load biocontainers
module load bcftools
module load snpeff
module load vcftools
module load samtools
module load bedops


#cd /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract

#bcftools mpileup -f ref.fa -b bamfiles.txt | bcftools call -mv -Ov -o male_LEPC.vcf


cd /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/snpeff

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/male_LEPC.vcf > male_LEPC_eff.vcf

# vcf to bed
vcf2bed < male_LEPC_eff.vcf > male_LEPC_eff.bed



# Remove sites with warnings

grep "WARNING" male_LEPC_eff.vcf | sed -e '1d' | cut -f1,2 > male_LEPC_bad_sites_all.txt


vcftools --vcf male_LEPC_eff.vcf --recode --recode-INFO-all \
--stdout --exclude-positions male_LEPC_bad_sites_all.txt --minQ 30 \
> male_LEPC_good_snps.vcf


# Get high, moderate, low, and no-impact variants

grep "HIGH" male_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > all_high_sites.txt

grep "LOW" male_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > all_low_sites.txt

grep "MODERATE" male_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > all_mod_sites.txt

grep "MODIFIER" male_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > all_nc_sites.txt

# Population Allele frequncies #
# Get frequency
#bcftools concat -o all.bcf -O u  *bcf
for i in high low mod nc
do
	vcftools --vcf male_LEPC_good_snps.vcf --recode --recode-INFO-all \
	--stdout --positions all_${i}_sites.txt \
	> all_${i}_snps.vcf

done

for i in high low mod nc 
do
	vcftools --vcf all_${i}_snps.vcf --freq \
	--out all_${i}_freq

done

# Get MAF

for i in high low mod nc
do
	sed -e '1d' all_${i}_freq.frq | cut -f6 \
	> all_${i}_minor.freq
done

cut -f 10- all_nc_snps.vcf > all_nc.geno
cut -f 10- all_high_snps.vcf > all_high.gen
cut -f 10- all_mod_snps.vcf > all_mod.geno
cut -f 10- all_low_snps.vcf > all_low.geno

## FOR ESTIMATING GENETIC LOAD FOR EACH INDIIVUDAL ##
# To get the allele counts from the genotypes #
# 0/0 = 0 allele ; 0/1 = 1 allele; 1/1/ = 2 alleles
#mkdir ind_geno
for  ((i=1;i<=166;i++)); 
do


	cut -f${i} all_high.gen | cut -f1 -d ':' > ind_geno/all_ind${i}_high.geno

	cut -f${i} all_mod.geno | cut -f1 -d ':' > ind_geno/all_ind${i}_moderate.geno

	cut -f${i} all_low.geno | cut -f1 -d ':' > ind_geno/all_ind${i}_low.geno 

        cut -f${i} all_nc.geno | cut -f1 -d ':' > ind_geno/all_ind${i}_modifier.geno
done

cd ind_geno

pr -mts' ' -w1000 all_*_high.geno > all_high_allind_allele
pr -mts' ' -w1000 all_*_moderate.geno > all_mod_allind_allele
pr -mts' ' -w1000 all_*_low.geno > all_low_allind_allele
pr -mts' ' -w1000 all_*_modifier.geno > all_nc_allind_allele
