library(tidyverse)
library(ggpubr)
library(reshape2)
### set working directory 

wd<- "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/Heterozygosity"

setwd(wd)

phenotype<- read.csv("male_phenotype_inputfile_02262025.csv")


pcascorem<- read.csv("male_pcascores.csv")


### Load  Data


globalm<- read.csv("global_m_het.csv")
pca1m<- read.csv("pca1m_het.csv")
pca2m<- read.csv("pca2m_het.csv")
wingm<- read.csv("wingm_het.csv")
tailm<- read.csv("tailm_het.csv")
tarsusm<- read.csv("tarsusm_het.csv")
massm<- read.csv("massm_het.csv")
combm<- read.csv("combm_het.csv")
culmenm<- read.csv("culmenm_het.csv")
pinnaem<- read.csv("pinnaem_het.csv")
headm<- read.csv("headm_het.csv")



### melt the matrices
globalm<- globalm %>% filter(X=="globalm_het")
globalm<- melt(globalm)
globalm<- globalm %>% select(c("variable","value"))
colnames(globalm)<- c("FID", "globalm_het")


pca1m<- pca1m %>% filter(X=="pca1m_het")
pca1m<- melt(pca1m)
pca1m<- pca1m %>% select(c("variable","value")) 
colnames(pca1m)<- c("FID", "pca1m_het")

a1<- inner_join(globalm, pca1m, by="FID")

pca2m<- pca2m %>% filter(X=="pca2m_het")
pca2m<- melt(pca2m)
pca2m<- pca2m %>% select(c("variable","value"))
colnames(pca2m)<- c("FID", "pca2m_het")

a2<- inner_join(a1, pca2m, by="FID")

wingm<- wingm %>% filter(X=="wingm_het")
wingm<- melt(wingm)
wingm<- wingm %>% select(c("variable","value"))
colnames(wingm)<- c("FID", "wingm_het")



a3<- inner_join(globalm, wingm)

tailm<- tailm %>% filter(X=="tailm_het")
tailm<- melt(tailm)
tailm<- tailm %>% select(c("variable","value"))
colnames(tailm)<- c("FID", "tailm_het")

a4<- inner_join(a3, tailm)

tarsusm<- tarsusm %>% filter(X=="tarsusm_het")
tarsusm<- melt(tarsusm)
tarsusm<- tarsusm %>% select(c("variable","value")) 
colnames(tarsusm)<- c("FID", "tarsusm_het")

a5<- inner_join(a4, tarsusm)

massm<- massm %>% filter(X=="massm_het")
massm<- melt(massm)
massm<- massm %>% select(c("variable","value"))
colnames(massm)<- c("FID", "massm_het")

a6<- inner_join(a5, massm)


combm<- combm %>% filter(X=="combm_het")
combm<- melt(combm)
combm<- combm %>% select(c("variable","value"))
colnames(combm)<- c("FID", "combm_het")

a7<- inner_join(a6, combm)


culmenm<- culmenm %>% filter(X=="culmenm_het")
culmenm<- melt(culmenm)
culmenm<- culmenm %>% select(c("variable","value")) 
colnames(culmenm)<- c("FID", "culmenm_het")

a8<- inner_join(a7, culmenm)


pinnaem<- pinnaem %>% filter(X=="pinnaem_het")
pinnaem<- melt(pinnaem)
pinnaem<- pinnaem %>% select(c("variable","value"))
colnames(pinnaem)<- c("FID", "pinnaem_het")

a9<- inner_join(a8, pinnaem)


headm<- headm %>% filter(X=="headm_het")
headm<- melt(headm)
headm<- headm %>% select(c("variable","value")) 
colnames(headm)<- c("FID", "headm_het")

hetm<- inner_join(a9, headm)


### final phenotype data
final_male<- inner_join(phenotype, hetm)


## final pca data
final_pca_male<- inner_join(pca1m, pcascorem)
final_pca_male<- inner_join(final_pca_male, pca2m)
final_pca_male<- inner_join(final_pca_male, globalm)


### Male correlation tests



### PCA1

# outlier 
cor.test(final_pca_male$pca1m_het, final_pca_male$PC1, method = "spearman")

# global
cor.test(final_pca_male$globalm_het, final_pca_male$PC1, method = "spearman")

### PCA2

# outlier 
cor.test(final_pca_male$pca2m_het, final_pca_male$PC2, method = "spearman")

# global

cor.test(final_pca_male$globalm_het, final_pca_male$PC2, method = "spearman")

### WING

# outlier 

cor.test(final_male$wingm_het, final_male$Wing_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Wing_round_outlierremoved, method = "spearman")


### TAIL 

# outlier 

cor.test(final_male$tailm_het, final_male$Tail_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Tail_round_outlierremoved, method = "spearman")


## TARSUS

# outlier 
cor.test(final_male$tarsusm_het, final_male$Tarsus_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Tarsus_round_outlierremoved, method = "spearman")



### CULMEN

# outlier 

cor.test(final_male$culmenm_het, final_male$Culmen_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Culmen_round_outlierremoved, method = "spearman")


### COMB 

# outlier 


cor.test(final_male$combm_het, final_male$Comb_Area_Outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Comb_Area_Outlierremoved, method = "spearman")



### HEAD 

# outlier 

cor.test(final_male$headm_het, final_male$Head_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Head_round_outlierremoved, method = "spearman")


### MASS

# outlier 

cor.test(final_male$massm_het, final_male$Mass_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Mass_round_outlierremoved, method = "spearman")


### PINNAE 

# outlier 

cor.test(final_male$pinnaem_het, final_male$Pinnae_round_outlierremoved, method = "spearman")


# global
cor.test(final_male$globalm_het, final_male$Pinnae_round_outlierremoved, method = "spearman")






### Compare PCA 
pca1m<- ggplot(final_pca_male, aes(x=PC1, y=pca1m_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Principal Component 1 Score")+
  labs(y=expression(h[PCA1]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))

pca1mglobal<- ggplot(final_pca_male, aes(x=PC1, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Principal Component 1 Score")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))

pcam1<- ggarrange(pca1mglobal,pca1m)

pca2m<- ggplot(final_pca_male, aes(x=PC2, y=pca1m_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Principal Component 2 Score")+
  labs(y=expression(h[PCA2]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


pca2mglobal<- ggplot(final_pca_male, aes(x=PC2, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Principal Component 2 Score")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


pcam2<- ggarrange(pca2mglobal, pca2m)

ggarrange(pcam1, pcam2, nrow = 2, ncol = 1)
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure5.tiff", units="in", width=15, height=7, dpi=300, compression = 'lzw')

### WING
wingm<- ggplot(final_male, aes(x=Wing_round_outlierremoved, y=wingm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  labs(y=expression(h[Wing]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


wingmglobal<- ggplot(final_male, aes(x=Wing_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m1<- ggarrange(wingmglobal, wingm)





## TAIL

tailm<- ggplot(final_male, aes(x=Tail_round_outlierremoved, y=tailm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tail Size (mm)")+
  labs(y=expression(h[Tail]))+
  theme(axis.title.x=element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


tailmglobal<- ggplot(final_male, aes(x=Tail_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tail Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m2<- ggarrange(tailmglobal, tailm)

## TARSUS

tarsusm<- ggplot(final_male, aes(x=Tarsus_round_outlierremoved, y=tarsusm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tarsus and Toe Size (mm")+
  labs(y=expression(h[Tarsus]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


tarsusmglobal<- ggplot(final_male, aes(x=Tarsus_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tarsus and Toe Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m3<- ggarrange(tarsusmglobal, tarsusm)

## COMB

combm<- ggplot(final_male, aes(x=Comb_Area_Outlierremoved, y=combm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  labs(y=expression(h[Comb]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


combmglobal<- ggplot(final_male, aes(x=Comb_Area_Outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m4<- ggarrange(combmglobal, combm)



## MASS

massm<- ggplot(final_male, aes(x=Mass_round_outlierremoved, y=massm_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  labs(y=expression(h[Mass]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


massmglobal<- ggplot(final_male, aes(x=Mass_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m5<- ggarrange(massmglobal, massm)

### CULMEN
culmenm<- ggplot(final_male, aes(x=Culmen_round_outlierremoved, y=culmenm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Culmen size (mm)")+
  labs(y=expression(h[Culmen]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


culmenmglobal<- ggplot(final_male, aes(x=Culmen_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Culmen Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m6<- ggarrange(culmenmglobal, culmenm)


## HEAD

headm<- ggplot(final_male, aes(x=Head_round_outlierremoved, y=headm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Head Size (mm)")+
  labs(y=expression(h[Head]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


headmglobal<- ggplot(final_male, aes(x=Head_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Head Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m7<- ggarrange(headmglobal, headm)

## PINNAE

pinnaem<- ggplot(final_male, aes(x=Pinnae_round_outlierremoved, y=pinnaem_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  labs(y=expression(h[Pinnae]))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


pinnaemglobal<- ggplot(final_male, aes(x=Pinnae_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))


m8<- ggarrange(pinnaemglobal, pinnaem)

males<- ggarrange(m1, m2, m3, m4, m5, m6, m7, m8, nrow = 4, ncol = 2)
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure6.tiff", units="in", width=15, height=7, dpi=300, compression = 'lzw')



#### Female 



globalf<- read.csv("global_f_het.csv")

phenotypef<- read.csv("female_phenotype_inputfile_02102025.csv")

### melt the matrices
globalf<- globalf %>% filter(X=="globalf_het")
globalf<- melt(globalf)
globalf<- globalf %>% select(c("variable","value"))
colnames(globalf)<- c("FID", "globalf_het")


### final phenotype data
final_female<- inner_join(phenotypef, globalf)



### female correlation tests

### WING

# global
cor.test(final_female$globalf_het, final_female$Wing_round_outlierremoved, method = "spearman")

### TAIL 



# global
cor.test(final_female$globalf_het, final_female$Tail_round_outlierremoved, method = "spearman")


## TARSUS

# global
cor.test(final_female$globalf_het, final_female$Tarsus_round_outlierremoved, method = "spearman")

### CULMEN


# global
cor.test(final_female$globalf_het, final_female$Culmen_round_outlierremoved, method = "spearman")


### COMB 


# global
cor.test(final_female$globalf_het, final_female$Comb_area_outlierremoved, method = "spearman")

### HEAD 

# global
final_female$Head_round_outlierremoved<- as.numeric(final_female$Head_round_outlierremoved)
cor.test(final_female$globalf_het, final_female$Head_round_outlierremoved, method = "spearman")


### MASS

# global
cor.test(final_female$globalf_het, final_female$Mass_round_outlierremoved, method = "spearman")


### PINNAE 


# global
cor.test(final_female$globalf_het, final_female$Pinnae_round_outlierremoved, method = "spearman")


### Correlation plots with genome-wide heterozygosity in females


f1<- ggplot(final_female, aes(x=Wing_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Wing Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))





f2<- ggplot(final_female, aes(x=Tail_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tail Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))




f3<- ggplot(final_female, aes(x=Tarsus_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Tarsus and Toe Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))





f4<- ggplot(final_female, aes(x=Comb_area_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))




f5<- ggplot(final_female, aes(x=Mass_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))




f6<- ggplot(final_female, aes(x=Culmen_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Culmen Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))





f7<- ggplot(final_female, aes(x=Head_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Head Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))




f8<- ggplot(final_female, aes(x=Pinnae_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  labs(y=expression(H))+
  theme(axis.title.x= element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10))




ggarrange(f1, f2, f3, f4, f5, f6, f7, f8, nrow = 4, ncol = 2)
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/FigureS3.tiff", units="in", width=15, height=7, dpi=300, compression = 'lzw')
