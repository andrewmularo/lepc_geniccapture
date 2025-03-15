library(tidyverse)
library(ggpubr)
library(reshape2)
### set working directory 
wd<- "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/Theta"

setwd(wd)

male_scaffolds<- read.csv("male_windowscaffolds.csv")

## 1000 random sites for whole genome proxy

male_random<- male_scaffolds[sample(nrow(male_scaffolds), size = 1000),]

write_csv(male_random, "male_1000sites.csv")


## Read pestPG files
pca1m<- read_delim("pca1m.thetas.idx.pestPG", delim = "\t", col_names = T)
pca2m<- read_delim("pca2m.thetas.idx.pestPG", delim = "\t", col_names = T)
wingm<- read_delim("wingm.thetas.idx.pestPG", delim = "\t", col_names = T)
tailm<- read_delim("tailm.thetas.idx.pestPG", delim = "\t", col_names = T)
tarsusm<- read_delim("tarsusm.thetas.idx.pestPG", delim = "\t", col_names = T)
massm<- read_delim("massm.thetas.idx.pestPG", delim = "\t", col_names = T)
combm<- read_delim("combm.thetas.idx.pestPG", delim = "\t", col_names = T)
culmenm<- read_delim("culmenm.thetas.idx.pestPG", delim = "\t", col_names = T)
pinnaem<- read_delim("pinnaem.thetas.idx.pestPG", delim = "\t", col_names = T)
headm<- read_delim("headm.thetas.idx.pestPG", delim = "\t", col_names = T)


male_wholegenome<- read_delim("random.thetas.idx.pestPG", delim = "\t", col_names = T)


## MUTATE COLUMN WITH PHENOTYPE NAME
pca1m<- pca1m %>% mutate(trait = "PC1")
pca2m<- pca2m %>% mutate(trait = "PC2")
wingm<- wingm %>% mutate(trait = "Wing")
tailm<- tailm %>% mutate(trait = "Tail")
tarsusm<- tarsusm %>% mutate(trait = "Tarsus")
massm<- massm %>% mutate(trait = "Mass")
combm<- combm %>% mutate(trait = "Comb")
culmenm<- culmenm %>% mutate(trait = "Culmen")
pinnaem<- pinnaem %>% mutate(trait = "Pinnae")
headm<- headm %>% mutate(trait = "Head")


## Male whole genome average
male_wholegenome<- male_wholegenome %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))

dim(male_wholegenome) # 53 rows

sum(male_wholegenome$wattersons)/53 # 0.005727386
sum(male_wholegenome$nuDiv)/53 # 0.00506392
sum(male_wholegenome$Tajima)/53 # -0.4376378



#Calculate Watterns Theta and Nucleotide Diversity 

pca1m<- pca1m %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
pca2m<- pca2m %>%  mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
wingm<- wingm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
tailm<- tailm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
tarsusm<- tarsusm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
massm<-  massm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
combm<-  combm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
culmenm<-  culmenm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
pinnaem<-  pinnaem %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))
headm<-  headm %>% mutate(wattersons = (tW/nSites)) %>% mutate(nuDiv = (tP/nSites))

# Male Plot 

male_theta<- rbind(pca1m, pca2m, wingm, tailm, tarsusm, combm, culmenm, pinnaem, headm, massm)



m_wattersons_plot<- ggplot(male_theta, aes(x = reorder(trait, wattersons), y=wattersons, fill = trait, color = trait))+
  geom_boxplot()+
  theme_classic()+
  geom_hline(yintercept = 0.005727386)+
  xlab("Trait")+
  ylab("Watternsons Theta")+
  theme(legend.position = "none")+
  scale_color_manual(values=c(rep("#006400", 10))) +
  scale_fill_manual(values = c(rep("#006400", 10)))+
  theme(axis.title.x= element_text(size=25, face = "bold"),
        axis.title.y = element_text(size=25, face = "bold"),
        axis.text.x = element_text(size=20, face = "bold"),
        axis.text.y = element_text(size = 20, face = "bold"))

m_nudiversity_plot<- ggplot(male_theta, aes(x = reorder(trait, nuDiv), y=nuDiv,fill = trait, color = trait))+
  geom_boxplot()+
  theme_classic()+
  geom_hline(yintercept = 0.00506392)+
  xlab("Trait")+
  ylab("Nucleotide Diversity")+
  theme(legend.position = "none")+
  scale_color_manual(values=c(rep("#006400", 10))) +
  scale_fill_manual(values = c(rep("#006400", 10)))+
  theme(axis.title.x= element_text(size=25, face = "bold"),
        axis.title.y = element_text(size=25, face = "bold"),
        axis.text.x = element_text(size=20, face = "bold"),
        axis.text.y = element_text(size = 20, face = "bold"))

m_tajima_plot<- ggplot(male_theta, aes(x = reorder(trait, Tajima), y=Tajima,fill = trait, color = trait))+
  geom_boxplot()+
  geom_hline(yintercept = 0, linetype= "dashed")+
  theme_classic()+
  geom_hline(yintercept = -0.4376378)+
  xlab("Trait")+
  ylab("Tajima's D")+
  theme(legend.position = "none")+
  scale_color_manual(values=c(rep("#006400", 10))) +
  scale_fill_manual(values = c(rep("#006400", 10)))+
  theme(axis.title.x= element_text(size=25, face = "bold"),
        axis.title.y = element_text(size=25, face = "bold"),
        axis.text.x = element_text(size=20, face = "bold"),
        axis.text.y = element_text(size = 20, face = "bold"))

ggarrange(m_wattersons_plot, m_nudiversity_plot, m_tajima_plot, ncol = 1, nrow = 3)

ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure9.tiff", units="in", width=15, height=15, dpi=300, compression = 'lzw')
