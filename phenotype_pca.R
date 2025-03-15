library(vegan)
library(tidyverse)
library(ggfortify)
library(psych)
library(ggpubr)

setwd("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/Phenotype_InputFiles")


data_m<- read.csv("male_phenotype_inputfile_02262025.csv")



data_m<- data_m %>% dplyr::select(c(1,3,12,20,23,26,32,35,38,41,44)) %>% na.omit
data_m$Covariate_code<- as.factor(data_m$Covariate_code)


corr_data_m <- data_m[c("Wing_round_outlierremoved",
                        "Tail_round_outlierremoved", 
                        "Pinnae_round_outlierremoved",
                        "Comb_Area_Outlierremoved",
                        "Head_round_outlierremoved",
                        "Culmen_round_outlierremoved",
                        "Tarsus_round_outlierremoved",
                        "Mass_round_outlierremoved")] # grouping all independent continuous factors into a single object to facilitate running the correlations

corr_m <- corr.test(corr_data_m, use = "pairwise", method = "pearson", adjust = "none") # runs the pairwise correlations between the independent continuous factors.
#write.csv(corr_m$r, "autocorrelation_males.csv")


pca_m<- prcomp(data_m[c(4:11)],center=T, scale=T)


maleplot<- autoplot(pca_m, data = data_m, x=1, y=2, colour = "Covariate_code",
         loadings = F, loadings.label = F, loadings.label.size = 5, size = 3)+theme_classic()+
  theme(plot.title = element_text(size = 32, face = "bold"), 
        axis.title.x = element_text(size = 25, face = "bold"),
        axis.title.y = element_text(size = 25, face = "bold"),
        axis.text.x = element_text(size = 20, face = "bold"),
        axis.text.y = element_text(size = 20, face = "bold"),
        legend.text = element_text(size = 25, face = "bold"),
        legend.title = element_text(size = 25, face = "bold"))+
  scale_colour_discrete(name = "Estimated Age", 
                      breaks = c("0", "1", "-999"),
                      labels = c("Adult", "Juvenile", "Unknown"))

summary(pca_m)

score_m<- scores(pca_m)
male_pcascores<- cbind(data_m, score_m) %>% dplyr::select(PC1, PC2, PC3, PC4, PC5, FID, BAM, Covariate_code)

rda(data_m[c(4:11)],center=T, scale=T)


write.csv(male_pcascores, "male_pcascores.csv")


maleplot
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure2.tiff", width=25, height=25, dpi=300)


