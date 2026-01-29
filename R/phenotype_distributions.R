#### Phenotypic Distributions 

library(tidyverse)
library(ggpubr)


wd<- "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/phenotype_InputFiles"

setwd(wd)

phenotype<- read.csv("male_phenotype_inputfile_02262025.csv")


## Change each to numeric variables 
phenotype$Wing_round<-as.numeric(phenotype$Wing_round)
phenotype$Tail_round<- as.numeric(phenotype$Tail_round)
phenotype$Pinnae_round<-as.numeric(phenotype$Pinnae_round)
phenotype$Comb_Area<-as.numeric(phenotype$Comb_Area)
phenotype$Head_round<-as.numeric(phenotype$Head_round)
phenotype$Culmen_round<-as.numeric(phenotype$Culmen_round)
phenotype$Tarsus_round<-as.numeric(phenotype$Tarsus_round)
phenotype$Mass_round<-as.numeric(phenotype$Mass_round)

### Calculating mean, sd and confidence interval of each variable
wings<- as.numeric(na.omit(phenotype$Wing_round))
mean_wing<- mean(wings)
sd_wing<- sd(wings)
conf_int_wing <- mean_wing + c(-1.96, 1.96) * sd_wing/sqrt(length(phenotype$Wing_round)) 
zscore_wing<- (wings-mean_wing)/sd_wing
wing_outlierID<- cbind(wings,zscore_wing)



## Tail Z score 

tail<- as.numeric(na.omit(phenotype$Tail_round))
mean_tail<- mean(tail)
sd_tail<- sd(tail)
conf_int_tail <- mean_tail + c(-1.96, 1.96) * sd_tail/sqrt(length(phenotype$Tail_round)) 
zscore_tail<- (tail-mean_tail)/sd_tail
tail_outlierID<- cbind(tail,zscore_tail)


## Pinnae Z scores 

Pinnae<- as.numeric(na.omit(phenotype$Pinnae_round))
mean_Pinnae<- mean(Pinnae)
sd_Pinnae<- sd(Pinnae)
conf_int_Pinnae <- mean_Pinnae + c(-1.96, 1.96) * sd_Pinnae/sqrt(length(phenotype$Pinnae_round)) 
zscore_Pinnae<- (Pinnae-mean_Pinnae)/sd_Pinnae
Pinnae_outlierID<- cbind(Pinnae,zscore_Pinnae)


### Head Length Z score 

Total_Head_Length<- as.numeric(na.omit(phenotype$Head_round))
mean_Total_Head_Length<- mean(Total_Head_Length)
sd_Total_Head_Length<- sd(Total_Head_Length)
conf_int_Total_Head_Length <- mean_Total_Head_Length + c(-1.96, 1.96) * sd_Total_Head_Length/sqrt(length(phenotype$Total_Head_Length_round)) 
zscore_Total_Head_Length<- (Total_Head_Length-mean_Total_Head_Length)/sd_Total_Head_Length
Total_Head_Length_outlierID<- cbind(Total_Head_Length,zscore_Total_Head_Length)

## Culmen Z score 


Culmen<- as.numeric(na.omit(phenotype$Culmen_round))
mean_Culmen<- mean(Culmen)
sd_Culmen<- sd(Culmen)
conf_int_Culmen <- mean_Culmen + c(-1.96, 1.96) * sd_Culmen/sqrt(length(phenotype$Culmen_round)) 
zscore_Culmen<- (Culmen-mean_Culmen)/sd_Culmen
Culmen_outlierID<- cbind(Culmen,zscore_Culmen)

## Tarsus Toe Z score 

Tarsus_toe<- as.numeric(na.omit(phenotype$Tarsus_round))
mean_Tarsus_toe<- mean(Tarsus_toe)
sd_Tarsus_toe<- sd(Tarsus_toe)
conf_int_Tarsus_toe <- mean_Tarsus_toe + c(-1.96, 1.96) * sd_Tarsus_toe/sqrt(length(phenotype$Tarsus_toe_round)) 
zscore_Tarsus_toe<- (Tarsus_toe-mean_Tarsus_toe)/sd_Tarsus_toe
Tarsus_toe_outlierID<- cbind(Tarsus_toe,zscore_Tarsus_toe)


## Mass Z score

Mass<- as.numeric(na.omit(phenotype$Mass_round))
mean_Mass<- mean(Mass)
sd_Mass<- sd(Mass)
conf_int_Mass <- mean_Mass + c(-1.96, 1.96) * sd_Mass/sqrt(length(phenotype$Mass_round)) 
zscore_Mass<- (Mass-mean_Mass)/sd_Mass
Mass_outlierID<- cbind(Mass,zscore_Mass)

## Comb Area z score 


combarea<- as.numeric(na.omit(phenotype$Comb_Area))
mean_combarea<- mean(combarea)
sd_combarea<- sd(combarea)
conf_int_combarea <- mean_combarea + c(-1.96, 1.96) * sd_combarea/sqrt(length(phenotype$Comb_Area_round)) 
zscore_combarea<- (combarea-mean_combarea)/sd_combarea
combarea_outlierID<- cbind(combarea, zscore_combarea)





### Explore distribution of the data 
p1<- ggplot(phenotype, aes(x=Wing_round, fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50, position = "Identity")+ggtitle("Wing Chord")+xlab("Wing Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p2<- ggplot(phenotype, aes(x=Tail_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Tail length")+xlab("Tail Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p3<- ggplot(phenotype, aes(x=Pinnae_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Pinnae Size")+xlab("Pinnae Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p4<- ggplot(phenotype, aes(x=Head_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Total Head Length")+xlab("Head Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p5<- ggplot(phenotype, aes(x=Culmen_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Culmen Size")+xlab("Culmen Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p6<- ggplot(phenotype, aes(x=Tarsus_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Tarsus Toe Length")+xlab("Tarsus Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p7<- ggplot(phenotype, aes(x=Mass_round,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Mass")+xlab("Mass (g)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())
p8<- ggplot(phenotype, aes(x=Comb_Area, fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Comb Area")+xlab("Comb Area (mm2)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        legend.position = "none")+
  ggtitle(element_blank())

plot1<- ggarrange(p1,p2,p3,p4,p5,p6,p7,p8, nrow = 3, ncol = 3)



p1adj<- ggplot(phenotype, aes(x=Wing_round_outlierremoved, fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50, position = "Identity")+ggtitle("Wing Chord")+xlab("Wing Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p2adj<- ggplot(phenotype, aes(x=Tail_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Tail length")+xlab("Tail Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p3adj<- ggplot(phenotype, aes(x=Pinnae_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Pinnae Size")+xlab("Pinnae Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p4adj<- ggplot(phenotype, aes(x=Head_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+xlab("Head Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
        axis.title = element_blank()
  )
p5adj<- ggplot(phenotype, aes(x=Culmen_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Culmen Size")+xlab("Culmen Size (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p6adj<- ggplot(phenotype, aes(x=Tarsus_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Tarsus Toe Length")+xlab("Tarsus Length (mm)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p7adj<- ggplot(phenotype, aes(x=Mass_round_outlierremoved,  fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Mass")+xlab("Mass (g)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())
p8adj<- ggplot(phenotype, aes(x=Comb_Area_Outlierremoved, fill = Binary_Age_Fcatalog))+geom_histogram(bins = 50)+ggtitle("Comb Area")+xlab("Comb Area (mm2)")+labs(fill = "Sex")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"),
  )+
  ggtitle(element_blank())

plot2<- ggarrange(p1adj,p2adj,p3adj,p4adj,p5adj,p6adj,p7adj,p8adj, nrow = 3, ncol = 3,common.legend = T, legend = "right")

plot2
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/FigureS1.tiff", units="in", width=30, height=15, dpi=300, compression = 'lzw')

## Display by age
phenotypef$Covariate_code<- as.factor(phenotypef$Covariate_code)



p1adj<- ggplot(phenotype, aes(x=Wing_round_outlierremoved, fill = Covariate_code))+geom_histogram(bins = 50, position = "Identity")+ggtitle("Wing Size")+xlab("Wing Size (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p2adj<- ggplot(phenotype, aes(x=Tail_round_outlierremoved,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Tail length")+xlab("Tail Length (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p3adj<- ggplot(phenotype, aes(x=Pinnae_round,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Pinnae Size")+xlab("Pinnae Size (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p4adj<- ggplot(phenotype, aes(x=Total_Head_Length_round_outlierremoved,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Total Head Length")+xlab("Wing Size (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p5adj<- ggplot(phenotype, aes(x=Culmen_round_outlierremoved,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Culmen Size")+xlab("Culmen Size (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p6adj<- ggplot(phenotype, aes(x=Tarsus_toe_round,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Tarsus Toe Length")+xlab("Tarsus Length (mm)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p7adj<- ggplot(phenotype, aes(x=Mass_round_outlierremoved,  fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Mass")+xlab("Mass (g)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())
p8adj<- ggplot(phenotype, aes(x=Comb_Area_round_outlierremoved, fill = Covariate_code))+geom_histogram(bins = 50)+ggtitle("Comb Area")+xlab("Comb Area (mm2)")+labs(fill = "Age")+
  theme(axis.text.x = element_text(size = 25, face = "bold"),
        axis.title.x = element_text(size = 30, face = "bold"),
        axis.title.y = element_text(size = 30, face="bold"),
        axis.text.y = element_text(size = 25, face = "bold"))+
  ggtitle(element_blank())

ggarrange(p1adj,p2adj,p3adj,p4adj,p5adj,p6adj,p7adj,p8adj, nrow = 3, ncol = 3, common.legend = T, legend = "right", guide_legend(title="Legend Title", label.theme=element_text(size=30)))

ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 4_LEPC/Manuscript/Figures/FigureS2.tiff", units="in", width=30, height=15, dpi=300, compression = 'lzw')




### Female data processing


phenotypeff<- read.csv("female_phenotype_inputfile_02102025.csv")



## Change each to numeric variables 
phenotypeff$Wing_round<-as.numeric(phenotypeff$Wing_round)
phenotypeff$Tail_round<- as.numeric(phenotypeff$Tail_round)
phenotypeff$Pinnae_round<-as.numeric(phenotypeff$Pinnae_round)
phenotypeff$Comb_area<-as.numeric(phenotypeff$Comb_area)
phenotypeff$Head_round<-as.numeric(phenotypeff$Head_round)
phenotypeff$Culmen_round<-as.numeric(phenotypeff$Culmen_round)
phenotypeff$Tarsus_round<-as.numeric(phenotypeff$Tarsus_round)
phenotypeff$Mass_round<-as.numeric(phenotypeff$Mass_round)

### Calculating mean, sd and confidence interval of each variable
wings<- as.numeric(na.omit(phenotypef$Wing_round))
mean_wing<- mean(wings)
sd_wing<- sd(wings)
conf_int_wing <- mean_wing + c(-1.96, 1.96) * sd_wing/sqrt(length(phenotypef$Wing_round)) 
zscore_wing<- (wings-mean_wing)/sd_wing
wing_outlierID<- cbind(wings,zscore_wing)



## Tail Z score 

tail<- as.numeric(na.omit(phenotypef$Tail_round))
mean_tail<- mean(tail)
sd_tail<- sd(tail)
conf_int_tail <- mean_tail + c(-1.96, 1.96) * sd_tail/sqrt(length(phenotypef$Tail_round)) 
zscore_tail<- (tail-mean_tail)/sd_tail
tail_outlierID<- cbind(tail,zscore_tail)


## Pinnae Z scores 

Pinnae<- as.numeric(na.omit(phenotypef$Pinnae_round))
mean_Pinnae<- mean(Pinnae)
sd_Pinnae<- sd(Pinnae)
conf_int_Pinnae <- mean_Pinnae + c(-1.96, 1.96) * sd_Pinnae/sqrt(length(phenotypef$Pinnae_round)) 
zscore_Pinnae<- (Pinnae-mean_Pinnae)/sd_Pinnae
Pinnae_outlierID<- cbind(Pinnae,zscore_Pinnae)


### Head Length Z score 

Total_Head_Length<- as.numeric(na.omit(phenotypef$Head_round))
mean_Total_Head_Length<- mean(Total_Head_Length)
sd_Total_Head_Length<- sd(Total_Head_Length)
conf_int_Total_Head_Length <- mean_Total_Head_Length + c(-1.96, 1.96) * sd_Total_Head_Length/sqrt(length(phenotypef$Total_Head_Length_round)) 
zscore_Total_Head_Length<- (Total_Head_Length-mean_Total_Head_Length)/sd_Total_Head_Length
Total_Head_Length_outlierID<- cbind(Total_Head_Length,zscore_Total_Head_Length)

## Culmen Z score 


Culmen<- as.numeric(na.omit(phenotypef$Culmen_round))
mean_Culmen<- mean(Culmen)
sd_Culmen<- sd(Culmen)
conf_int_Culmen <- mean_Culmen + c(-1.96, 1.96) * sd_Culmen/sqrt(length(phenotypef$Culmen_round)) 
zscore_Culmen<- (Culmen-mean_Culmen)/sd_Culmen
Culmen_outlierID<- cbind(Culmen,zscore_Culmen)

## Tarsus Toe Z score 

Tarsus_toe<- as.numeric(na.omit(phenotypef$Tarsus_round))
mean_Tarsus_toe<- mean(Tarsus_toe)
sd_Tarsus_toe<- sd(Tarsus_toe)
conf_int_Tarsus_toe <- mean_Tarsus_toe + c(-1.96, 1.96) * sd_Tarsus_toe/sqrt(length(phenotypef$Tarsus_toe_round)) 
zscore_Tarsus_toe<- (Tarsus_toe-mean_Tarsus_toe)/sd_Tarsus_toe
Tarsus_toe_outlierID<- cbind(Tarsus_toe,zscore_Tarsus_toe)


## Mass Z score

Mass<- as.numeric(na.omit(phenotypef$Mass_round))
mean_Mass<- mean(Mass)
sd_Mass<- sd(Mass)
conf_int_Mass <- mean_Mass + c(-1.96, 1.96) * sd_Mass/sqrt(length(phenotypef$Mass_round)) 
zscore_Mass<- (Mass-mean_Mass)/sd_Mass
Mass_outlierID<- cbind(Mass,zscore_Mass)

## Comb Area z score 


combarea<- as.numeric(na.omit(phenotypef$Comb_area))
mean_combarea<- mean(combarea)
sd_combarea<- sd(combarea)
conf_int_combarea <- mean_combarea + c(-1.96, 1.96) * sd_combarea/sqrt(length(phenotypef$Comb_Area_round)) 
zscore_combarea<- (combarea-mean_combarea)/sd_combarea
combarea_outlierID<- cbind(combarea, zscore_combarea)
