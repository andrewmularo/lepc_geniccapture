library(tidyverse)
library(ggpubr)
library(reshape2)
### set working directory 

wd<- "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 4_LEPC/Analysis_Scripts/LEPC_reference/Heterozygosity"

setwd(wd)

phenotype<- read.csv("final_phenotypedata_outlieradjusted.csv")
phenotypem<- phenotype %>% filter(Confirmed_Sex == "M")
phenotypef<- phenotype %>% filter(Confirmed_Sex == "F")

pcascorem<- read.csv("male_pcascores.csv")
pcascoref<- read.csv("female_pcascores.csv")


### Load  Data


globalm<- read.csv("global_het.csv")
pca1m<- read.csv("pca1m_10_het.csv")
pca2m<- read.csv("pca2m_10_het.csv")
wingm<- read.csv("wingm_10_het.csv")
tailm<- read.csv("tailm_10_het.csv")
tarsusm<- read.csv("tarsusm_10_het.csv")
massm<- read.csv("massm_10_het.csv")
combm<- read.csv("combm_10_het.csv")
culmenm<- read.csv("culmenm_10_het.csv")
pinnaem<- read.csv("pinnaem_10_het.csv")
headm<- read.csv("headm_10_het.csv")



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



a3<- inner_join(a2, wingm)

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
final_male<- inner_join(phenotypem, hetm)


## final pca data
final_pca_male<- inner_join(pca1m, pcascorem)
final_pca_male<- inner_join(final_pca_male, pca2m)
final_pca_male<- inner_join(final_pca_male, globalm)

### Male correlation tests


### PCA1

# outlier 
cor.test(final_pca_male$pca1m_het, final_pca_male$PC1)

# global
cor.test(final_pca_male$globalm_het, final_pca_male$PC1)

### PCA2
cor.test(final_pca_male$pca2m_het, final_pca_male$PC2)

# outlier 
cor.test(final_pca_male$pca2m_het, final_pca_male$PC2)

# global

cor.test(final_pca_male$globalm_het, final_pca_male$PC2)

### WING

# outlier 

cor.test(final_male$wingm_het, final_male$Wing_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Wing_round_outlierremoved)

### TAIL 

# outlier 

cor.test(final_male$tailm_het, final_male$Tail_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Tail_round_outlierremoved)


## TARSUS

# outlier 
cor.test(final_male$tarsusm_het, final_male$Tarsus_toe_round)


# global
cor.test(final_male$globalm_het, final_male$Tarsus_toe_round)



### CULMEN

# outlier 

cor.test(final_male$culmenm_het, final_male$Culmen_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Culmen_round_outlierremoved)


### COMB 

# outlier 


cor.test(final_male$combm_het, final_male$Comb_Area_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Comb_Area_round_outlierremoved)



### HEAD 

# outlier 

cor.test(final_male$headm_het, final_male$Total_Head_Length_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Total_Head_Length_round_outlierremoved)


### MASS

# outlier 

cor.test(final_male$massm_het, final_male$Mass_round_outlierremoved)


# global
cor.test(final_male$globalm_het, final_male$Mass_round_outlierremoved)


### PINNAE 

# outlier 

cor.test(final_male$pinnaem_het, final_male$Pinnae_round)


# global
cor.test(final_male$globalm_het, final_male$Pinnae_round)






### Compare PCA 
pca1m<- ggplot(final_pca_male, aes(x=pca1m_het, y=pca1m_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier")+
  theme_classic()+
  xlab("Principal Component 1 Score")+
  ylab("")

pca1mglobal<- ggplot(final_pca_male, aes(x=PC1, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Principal Component 1 Score")+
  ylab("")

pcam1<- ggarrange(pca1mglobal,pca1m)

pca2m<- ggplot(final_pca_male, aes(x=PC2, y=pca1m_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Principal Component 2 Score")+
  ylab("")

pca2mglobal<- ggplot(final_pca_male, aes(x=PC2, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Principal Component 2 Score")+
  ylab("")

pcam2<- ggarrange(pca2mglobal, pca2m)

ggarrange(pcam1, pcam2, nrow = 2, ncol = 1)

### WING
wingm<- ggplot(final_male, aes(x=Wing_round_outlierremoved, y=wingm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Wing Size (mm)")+
  ylab("")

wingmglobal<- ggplot(final_male, aes(x=Wing_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Wing Size (mm)")+
  ylab("")

m1<- ggarrange(wingm, wingmglobal)



## TAIL

tailm<- ggplot(final_male, aes(x=Tail_round_outlierremoved, y=tailm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Tail Size (mm")+
  ylab("")

tailmglobal<- ggplot(final_male, aes(x=Tail_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Tail Size (mm)")+
  ylab("")

m2<- ggarrange(tailm, tailmglobal)

## TARSUS

tarsusm<- ggplot(final_male, aes(x=Tarsus_toe_round, y=tarsusm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Tarsus and Toe Size (mm")+
  ylab("")

tarsusmglobal<- ggplot(final_male, aes(x=Tarsus_toe_round, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Tarsus and Toe Size (mm)")+
  ylab("")

m3<- ggarrange(tarsusm, tarsusmglobal)

## COMB

combm<- ggplot(final_male, aes(x=Comb_Area_round_outlierremoved, y=combm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("")

combmglobal<- ggplot(final_male, aes(x=Comb_Area_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("")

m4<- ggarrange(combm, combmglobal)



## MASS

massm<- ggplot(final_male, aes(x=Mass_round_outlierremoved, y=massm_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("")

massmglobal<- ggplot(final_male, aes(x=Mass_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  
  theme_classic()+
  xlab("Mass (g)")+
  ylab("")

m5<- ggarrange(massm, massmglobal)

### CULMEN
culmenm<- ggplot(final_male, aes(x=Culmen_round_outlierremoved, y=culmenm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Culmen size (mm)")+
  ylab("")

culmenmglobal<- ggplot(final_male, aes(x=Culmen_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Culmen Size (mm)")+
  ylab("")

m6<- ggarrange(culmenm, culmenmglobal)


## HEAD

headm<- ggplot(final_male, aes(x=Total_Head_Length_round_outlierremoved, y=headm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Head Size (mm)")+
  ylab("")

headmglobal<- ggplot(final_male, aes(x=Total_Head_Length_round_outlierremoved, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Head Size (mm)")+
  ylab("")

m7<- ggarrange(headm, headmglobal)

## PINNAE

pinnaem<- ggplot(final_male, aes(x=Pinnae_round, y=pinnaem_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  ylab("")

pinnaemglobal<- ggplot(final_male, aes(x=Pinnae_round, y=globalm_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  ylab("")

m8<- ggarrange(pinnaem, pinnaemglobal)

ggarrange(m1, m2, m3, m4, m5, m6, m7, m8, nrow = 4, ncol = 2)



cor.test(final_pca_male$pca1m_het, final_pca_male$globalm_het)
cor.test(final_pca_male$pca2m_het, final_pca_male$globalm_het)

cor.test(final_male$wingm_het, final_male$globalm_het)
cor.test(final_male$tailm_het, final_male$globalm_het)
cor.test(final_male$tarsusm_het, final_male$globalm_het)
cor.test(final_male$culmenm_het, final_male$globalm_het)
cor.test(final_male$combm_het, final_male$globalm_het)
cor.test(final_male$headm_het, final_male$globalm_het)
cor.test(final_male$massm_het, final_male$globalm_het)
cor.test(final_male$pinnaem_het, final_male$globalm_het)



#### Female 



globalf<- read.csv("globalf_het.csv")
pca1f<- read.csv("pca1f_10_het.csv")
pca2f<- read.csv("pca2f_10_het.csv")
wingf<- read.csv("wingf_10_het.csv")
tailf<- read.csv("tailf_10_het.csv")
tarsusf<- read.csv("tarsusf_10_het.csv")
massf<- read.csv("massf_10_het.csv")
combf<- read.csv("combf_10_het.csv")
culmenf<- read.csv("culmenf_10_het.csv")
pinnaef<- read.csv("pinnaef_10_het.csv")
headf<- read.csv("headf_10_het.csv")


### melt the matrices
globalf<- globalf %>% filter(X=="globalf_het")
globalf<- melt(globalf)
globalf<- globalf %>% select(c("variable","value"))
colnames(globalf)<- c("FID", "globalf_het")


pca1f<- pca1f %>% filter(X=="pca1f_het")
pca1f<- melt(pca1f)
pca1f<- pca1f %>% select(c("variable","value")) 
colnames(pca1f)<- c("FID", "pca1f_het")

a1<- inner_join(globalf, pca1f, by="FID")

pca2f<- pca2f %>% filter(X=="pca2f_het")
pca2f<- melt(pca2f)
pca2f<- pca2f %>% select(c("variable","value"))
colnames(pca2f)<- c("FID", "pca2f_het")

a2<- inner_join(a1, pca2f, by="FID")

wingf<- wingf %>% filter(X=="wingf_het")
wingf<- melt(wingf)
wingf<- wingf %>% select(c("variable","value"))
colnames(wingf)<- c("FID", "wingf_het")



a3<- inner_join(a2, wingf)

tailf<- tailf %>% filter(X=="tailf_het")
tailf<- melt(tailf)
tailf<- tailf %>% select(c("variable","value"))
colnames(tailf)<- c("FID", "tailf_het")

a4<- inner_join(a3, tailf)

tarsusf<- tarsusf %>% filter(X=="tarsusf_het")
tarsusf<- melt(tarsusf)
tarsusf<- tarsusf %>% select(c("variable","value")) 
colnames(tarsusf)<- c("FID", "tarsusf_het")

a5<- inner_join(a4, tarsusf)


massf<- massf %>% filter(X=="massf_het")
massf<- melt(massf)
massf<- massf %>% select(c("variable","value"))
colnames(massf)<- c("FID", "massf_het")

a6<- inner_join(a5, massf)


combf<- combf %>% filter(X=="combf_het")
combf<- melt(combf)
combf<- combf %>% select(c("variable","value"))
colnames(combf)<- c("FID", "combf_het")

a7<- inner_join(a6, combf)


culmenf<- culmenf %>% filter(X=="culmenf_het")
culmenf<- melt(culmenf)
culmenf<- culmenf %>% select(c("variable","value")) 
colnames(culmenf)<- c("FID", "culmenf_het")

a8<- inner_join(a7, culmenf)


pinnaef<- pinnaef %>% filter(X=="pinnaef_het")
pinnaef<- melt(pinnaef)
pinnaef<- pinnaef %>% select(c("variable","value"))
colnames(pinnaef)<- c("FID", "pinnaef_het")

a9<- inner_join(a8, pinnaef)


headf<- headf %>% filter(X=="headf_het")
headf<- melt(headf)
headf<- headf %>% select(c("variable","value")) 
colnames(headf)<- c("FID", "headf_het")

hetf<- inner_join(a9, headf)


### final phenotype data
final_female<- inner_join(phenotypef, hetf)


## final pca data
final_pca_female<- inner_join(pca1f, pcascoref)
final_pca_female<- inner_join(final_pca_female, pca2f)
final_pca_female<- inner_join(final_pca_female, globalf)

### female correlation tests


### PCA1

# outlier 
cor.test(final_pca_female$pca1f_het, final_pca_female$PC1)

# global
cor.test(final_pca_female$globalf_het, final_pca_female$PC1)

### PCA2
cor.test(final_pca_female$pca2f_het, final_pca_female$PC2)


# global

cor.test(final_pca_female$globalf_het, final_pca_female$PC2)

### WING

# outlier 

cor.test(final_female$wingf_het, final_female$Wing_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Wing_round_outlierremoved)

### TAIL 

# outlier 

cor.test(final_female$tailf_het, final_female$Tail_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Tail_round_outlierremoved)


## TARSUS

# outlier 
cor.test(final_female$tarsusf_het, final_female$Tarsus_toe_round)


# global
cor.test(final_female$globalf_het, final_female$Tarsus_toe_round)



### CULMEN

# outlier 

cor.test(final_female$culmenf_het, final_female$Culmen_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Culmen_round_outlierremoved)


### COMB 

# outlier 


cor.test(final_female$combf_het, final_female$Comb_Area_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Comb_Area_round_outlierremoved)



### HEAD 

# outlier 

cor.test(final_female$headf_het, final_female$Total_Head_Length_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Total_Head_Length_round_outlierremoved)


### MASS

# outlier 

cor.test(final_female$massf_het, final_female$Mass_round_outlierremoved)


# global
cor.test(final_female$globalf_het, final_female$Mass_round_outlierremoved)


### PINNAE 

# outlier 

cor.test(final_female$pinnaef_het, final_female$Pinnae_round)


# global
cor.test(final_female$globalf_het, final_female$Pinnae_round)






### Compare PCA 
pca1f<- ggplot(final_pca_female, aes(x=PC1, y=pca1f_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier")+
  theme_classic()+
  xlab("Principal Component 1 Score")+
  ylab("")

pca1fglobal<- ggplot(final_pca_female, aes(x=PC1, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Principal Component 1 Score")+
  ylab("")

pcaf1<- ggarrange(pca1fglobal,pca1f)

pca2f<- ggplot(final_pca_female, aes(x=PC2, y=pca1f_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Principal Component 2 Score")+
  ylab("")

pca2fglobal<- ggplot(final_pca_female, aes(x=PC2, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Principal Component 2 Score")+
  ylab("")

pcaf2<- ggarrange(pca2fglobal, pca2f)

ggarrange(pcaf1, pcaf2, nrow = 2, ncol = 1)

### WING
wingf<- ggplot(final_female, aes(x=Wing_round_outlierremoved, y=wingf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Wing Size (mm)")+
  ylab("")

wingfglobal<- ggplot(final_female, aes(x=Wing_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Wing Size (mm)")+
  ylab("")

m1<- ggarrange(wingf, wingfglobal)



## TAIL

tailf<- ggplot(final_female, aes(x=Tail_round_outlierremoved, y=tailf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Tail Size (mm")+
  ylab("")

tailfglobal<- ggplot(final_female, aes(x=Tail_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Tail Size (mm)")+
  ylab("")

m2<- ggarrange(tailf, tailfglobal)

## TARSUS

tarsusf<- ggplot(final_female, aes(x=Tarsus_toe_round, y=tarsusf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Tarsus and Toe Size (mm")+
  ylab("")

tarsusfglobal<- ggplot(final_female, aes(x=Tarsus_toe_round, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Tarsus and Toe Size (mm)")+
  ylab("")

m3<- ggarrange(tarsusf, tarsusfglobal)

## COMB

combf<- ggplot(final_female, aes(x=Comb_Area_round_outlierremoved, y=combf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("")

combfglobal<- ggplot(final_female, aes(x=Comb_Area_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("")

m4<- ggarrange(combf, combfglobal)



## MASS

massf<- ggplot(final_female, aes(x=Mass_round_outlierremoved, y=massf_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("")

massfglobal<- ggplot(final_female, aes(x=Mass_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method = "lm")+
  
  theme_classic()+
  xlab("Mass (g)")+
  ylab("")

m5<- ggarrange(massf, massfglobal)

### CULMEN
culmenf<- ggplot(final_female, aes(x=Culmen_round_outlierremoved, y=culmenf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Culmen size (mm)")+
  ylab("")

culmenfglobal<- ggplot(final_female, aes(x=Culmen_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Culmen Size (mm)")+
  ylab("")

m6<- ggarrange(culmenf, culmenfglobal)


## HEAD

headf<- ggplot(final_female, aes(x=Total_Head_Length_round_outlierremoved, y=headf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Head Size (mm)")+
  ylab("")

headfglobal<- ggplot(final_female, aes(x=Total_Head_Length_round_outlierremoved, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Head Size (mm)")+
  ylab("")

m7<- ggarrange(headf, headfglobal)

## PINNAE

pinnaef<- ggplot(final_female, aes(x=Pinnae_round, y=pinnaef_het))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("Outlier ")+
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  ylab("")

pinnaefglobal<- ggplot(final_female, aes(x=Pinnae_round, y=globalf_het))+
  geom_point()+
  geom_smooth(method="lm")+
  
  theme_classic()+
  xlab("Pinnae Size (mm)")+
  ylab("")

m8<- ggarrange(pinnaef, pinnaefglobal)

ggarrange(m1, m2, m3, m4, m5, m6, m7, m8, nrow = 4, ncol = 2)






cor.test(final_pca_female$pca1f_het, final_pca_female$globalf_het)
cor.test(final_pca_female$pca2f_het, final_pca_female$globalf_het)

cor.test(final_female$wingf_het, final_female$globalf_het)
cor.test(final_female$tailf_het, final_female$globalf_het)
cor.test(final_female$tarsusf_het, final_female$globalf_het)
cor.test(final_female$culmenf_het, final_female$globalf_het)
cor.test(final_female$combf_het, final_female$globalf_het)
cor.test(final_female$headf_het, final_female$globalf_het)
cor.test(final_female$massf_het, final_female$globalf_het)
cor.test(final_female$pinnaef_het, final_female$globalf_het)
