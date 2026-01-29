#!/bin/bash
# FILENAME:  geneticload.sh

#SBATCH --account=fnrdewoody
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=30
#SBATCH --partition=gpu
#SBATCH --time=5:00:00
#SBATCH --job-name load



module load biocontainers
module load bcftools
module load snpeff
module load vcftools
module load samtools
module load bedops



### I will assess the genetic load of each specified genomic region


cd /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract

### Obtain vcf files of variants within each genomic window
bcftools mpileup -f ref.fa -b comb_bamfiles.txt  | bcftools call -mv -Ov -o comb_LEPC.vcf
bcftools mpileup -f ref.fa -b culmen_bamfiles.txt  | bcftools call -mv -Ov -o culmen_LEPC.vcf
bcftools mpileup -f ref.fa -b head_bamfiles.txt  | bcftools call -mv -Ov -o head_LEPC.vcf
bcftools mpileup -f ref.fa -b mass_bamfiles.txt | bcftools call -mv -Ov -o mass_LEPC.vcf
bcftools mpileup -f ref.fa -b pinnae_bamfiles.txt | bcftools call -mv -Ov -o pinnae_LEPC.vcf
bcftools mpileup -f ref.fa -b tail_bamfiles.txt  | bcftools call -mv -Ov -o tail_LEPC.vcf
bcftools mpileup -f ref.fa -b tarsus_bamfiles.txt | bcftools call -mv -Ov -o tarsus_LEPC.vcf
bcftools mpileup -f ref.fa -b wing_bamfiles.txt | bcftools call -mv -Ov -o wing_LEPC.vcf
bcftools mpileup -f ref.fa -b pca1m_bamfiles.txt | bcftools call -mv -Ov -o pca1m_LEPC.vcf
bcftools mpileup -f ref.fa -b pca2m_bamfiles.txt | bcftools call -mv -Ov -o pca2m_LEPC.vcf


##### snpEff variant annotation for each genomic window
cd /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/snpeff

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/comb_LEPC.vcf > comb_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/culmen_LEPC.vcf > culmen_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/head_LEPC.vcf > head_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/mass_LEPC.vcf > mass_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/pinnae_LEPC.vcf > pinnae_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/tail_LEPC.vcf > tail_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/tarsus_LEPC.vcf > tarsus_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/wing_LEPC.vcf > wing_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/pca1m_LEPC.vcf > pca1m_LEPC_eff.vcf

snpEff ann -stats -c snpEff.config \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v \
LEPC /scratch/negishi/amularo/aligned/final_bams/final_bams_reextract/pca1m_LEPC.vcf > pca1m_LEPC_eff.vcf



# vcf to bed
vcf2bed < comb_LEPC_eff.vcf > comb_LEPC_eff.bed
vcf2bed < culmen_LEPC_eff.vcf > culmen_LEPC_eff.bed
vcf2bed < head_LEPC_eff.vcf > head_LEPC_eff.bed
vcf2bed < mass_LEPC_eff.vcf > mass_LEPC_eff.bed
vcf2bed < pinnae_LEPC_eff.vcf > pinnae_LEPC_eff.bed
vcf2bed < tail_LEPC_eff.vcf > tail_LEPC_eff.bed
vcf2bed < tarsus_LEPC_eff.vcf > tarsus_LEPC_eff.bed
vcf2bed < wing_LEPC_eff.vcf > wing_LEPC_eff.bed
vcf2bed < pca1m_LEPC_eff.vcf > pca1m_LEPC_eff.bed
vcf2bed < pca2m_LEPC_eff.vcf > pca2m_LEPC_eff.bed


# Remove sites with warnings

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do

 grep "WARNING" ${i}_LEPC_eff.vcf | sed -e '1d' | cut -f1,2 > ${i}_LEPC_bad_sites_all.txt  # grep "WARNING" comb_LEPC_eff.vcf | sed -e '1d' | cut -f1,2 > comb_LEPC_bad_sites_all.txt

done 


for i in comb culmen head mass pinnae tail wing pca1m 
do

	vcftools --vcf ${i}_LEPC_eff.vcf --recode --recode-INFO-all \
	--stdout > ${i}_LEPC_good_snps.vcf
done 

### Only Tarsus has bad sites - so do this one individually
vcftools --vcf tarsus_LEPC_eff.vcf --recode --recode-INFO-all --stdout --exclude-positions tarsus_bad_sites_all.txt > tarsus_LEPC_good_snps.vcf



# Get high, moderate, low, and no-impact variants

for i in comb culmen head mass pinnae tail tarsus wing pca1m pca2m
do
	grep "HIGH" ${i}_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > ${i}_all_high_sites.txt
	grep "LOW" ${i}_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > ${i}_all_low_sites.txt
	grep "MODERATE" ${i}_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > ${i}_all_mod_sites.txt
	grep "MODIFIER" ${i}_LEPC_good_snps.vcf | sed -e '1d' | cut -f1,2 > ${i}_all_nc_sites.txt

done 

# Population Allele frequncies #
# Get frequency
#bcftools concat -o all.bcf -O u  *bcf

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
	vcftools --vcf ${i}_LEPC_good_snps.vcf --recode --recode-INFO-all \
	--stdout --positions ${i}_all_high_sites.txt \
	> ${i}_all_high_snps.vcf
done

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
	vcftools --vcf ${i}_LEPC_good_snps.vcf --recode --recode-INFO-all \
	--stdout --positions ${i}_all_low_sites.txt \
	> ${i}_all_low_snps.vcf
done

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
	vcftools --vcf ${i}_LEPC_good_snps.vcf --recode --recode-INFO-all \
	--stdout --positions ${i}_all_mod_sites.txt \
	> ${i}_all_mod_snps.vcf
done

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
	vcftools --vcf ${i}_LEPC_good_snps.vcf --recode --recode-INFO-all \
	--stdout --positions ${i}_all_nc_sites.txt \
	> ${i}_all_nc_snps.vcf
done





for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
for j in high low mod nc
do
	vcftools --vcf ${i}_all_${j}_snps.vcf --freq \
	--out ${i}_all_${j}_freq
done
done





# Get MAF

for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
for j in high low mod nc
do
	sed -e '1d' ${i}_all_${j}_freq.frq | cut -f6 \
	> ${i}_all_${j}_minor.freq
done


for i in comb culmen head mass pinnae tail tarsus wing pca1m 
do
cut -f 10- ${i}_all_nc_snps.vcf > ${i}_all_nc.geno
cut -f 10- ${i}_all_high_snps.vcf > ${i}_all_high.gen
cut -f 10- ${i}_all_mod_snps.vcf > ${i}_all_mod.geno
cut -f 10- ${i}_all_low_snps.vcf > ${i}_all_low.geno
done 

## FOR ESTIMATING GENETIC LOAD FOR EACH INDIIVUDAL ##
# To get the allele counts from the genotypes #
# 0/0 = 0 allele ; 0/1 = 1 allele; 1/1/ = 2 alleles
#mkdir ind_geno

for i in comb culmen head mass pinnae tail tarsus wing pca1m
do
for  ((j=1;j<=166;j++)); 
do


	cut -f${j} ${i}_all_high.gen | cut -f1 -d ':' > ind_geno/${i}_all_ind${j}_high.geno

	cut -f${j} ${i}_all_mod.geno | cut -f1 -d ':' > ind_geno/${i}_all_ind${j}_moderate.geno

	cut -f${j} ${i}_all_low.geno | cut -f1 -d ':' > ind_geno/${i}_all_ind${j}_low.geno

	cut -f${j} ${i}_all_nc.geno | cut -f1 -d ':' > ind_geno/${i}_all_ind${j}_modifier.geno
done
done 

cd ind_geno


for i in comb culmen head mass pinnae tail tarsus wing pca1m
do
pr -mts' ' -w1000 ${i}_all_*_high.geno > ${i}_all_high_allind_allele
pr -mts' ' -w1000 ${i}_all_*_moderate.geno > ${i}_all_mod_allind_allele
pr -mts' ' -w1000 ${i}_all_*_low.geno > ${i}_all_low_allind_allele
pr -mts' ' -w1000 ${i}_all_*_modifier.geno > ${i}_all_nc_allind_allele
done


