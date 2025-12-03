
library(tidyverse)
library(ggpubr)
library(reshape2)


wd<- "C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load"

setwd(wd)


phenotype<- read.csv("male_phenotype_inputfile_02262025.csv")
trait_popload<- read.csv("trait_load_proportions_qc_nonc_tarsusremoved.csv")

ggplot(trait_popload, aes(x=reorder(Trait, Percent), y= Percent, fill = Type))+
  geom_bar(position = "stack", stat = "identity")+
  theme_classic()+
  xlab("Trait")+
  ylab("Proportion")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20),
        legend.text = element_text(size = 25),
        legend.title = element_text(size = 25))+
  scale_fill_manual(values = c("darkred", "darkblue", "black"))+ggtitle("Genetic Load for Phenotypes")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/load_proportions.tiff", units="in", width=15, height=15, dpi=300, compression = 'lzw')


## Individual Load

all<- read.csv("all_load.csv") ## Note - changed the variable from ID (original) to FID
all<- left_join(all, phenotype)


all_high<- all %>% select(FID, HIGH_HM_LOAD, HIGH_HT_LOAD) %>% melt() %>% left_join(all)
all_mod<- all %>% select(FID, MOD_HM_LOAD, MOD_HT_LOAD) %>% melt() %>% left_join(all)
all_low<- all %>% select(FID, LOW_HM_LOAD, LOW_HT_LOAD) %>% melt() %>% left_join(all)
all_nc<- all %>% select(FID, NC_HM_LOAD, NC_HT_LOAD) %>% melt() %>% left_join(all)

### Plots for load against phenotype 

#wing

one<- ggplot(all_high, aes(x=Wing_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=20),
        axis.title.y = element_text(size=20),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size = 15),
        legend.text = element_text(size = 15),
        legend.title = element_text(size = 15))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Wing_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Wing_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Wing_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Wing Chord (mm)")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/wingload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



# Tail

one<- ggplot(all_high, aes(x=Tail_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tail Length (mm)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Tail_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tail Length (mm)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Tail_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tail Length (mm)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Tail_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tail Length (mm)")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right",hjust = 3)
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/tailload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



# Tarsus

one<- ggplot(all_high, aes(x=Tarsus_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tarsus Length")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Tarsus_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tarsus Length")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Tarsus_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tarsus Length")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Tarsus_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Tarsus Length")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/tarsusload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')




# Head

one<- ggplot(all_high, aes(x=Head_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Head Length (mm)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Head_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Head Length (mm)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Head_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Head Length (mm)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Head_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Head Length (mm)")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/headload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')


# Pinnae

one<- ggplot(all_high, aes(x=Pinnae_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Pinnae Size")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Pinnae_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Pinnae Size")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Pinnae_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Pinnae Size")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Pinnae_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Pinnae Size")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/pinnaeload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



# Culmen

one<- ggplot(all_high, aes(x=Culmen_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Culmen Length (mm)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Culmen_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Culmen Length (mm)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Culmen_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Culmen Length (mm)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Culmen_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Culmen Length (mm)")+
  ylab("Modifier Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/culmenload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



# Mass

one<- ggplot(all_high, aes(x=Mass_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Mass_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Mass_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Mass_round_outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Mass (g)")+
  ylab("Modifier")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/massload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')




# Comb

one<- ggplot(all_high, aes(x=Comb_Area_Outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod, aes(x=Comb_Area_Outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low, aes(x=Comb_Area_Outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc, aes(x=Comb_Area_Outlierremoved, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("Comb Area (mm2)")+
  ylab("Modifier")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/combload.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')


##### Principal Components

pca<- read.csv("male_pcascores_update_notarsus.csv")
all_pca<- pca %>% left_join(all)

all_high_pca<- all %>% select(FID, HIGH_HM_LOAD, HIGH_HT_LOAD) %>% melt() %>% left_join(pca)
all_mod_pca<- all %>% select(FID, MOD_HM_LOAD, MOD_HT_LOAD) %>% melt() %>% left_join(pca)
all_low_pca<- all %>% select(FID, LOW_HM_LOAD, LOW_HT_LOAD) %>% melt() %>% left_join(pca)
all_nc_pca<- all %>% select(FID, NC_HM_LOAD, NC_HT_LOAD) %>% melt() %>% left_join(pca)




# PC1

one<- ggplot(all_high_pca, aes(x=PC1, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC1")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod_pca, aes(x=PC1, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC1")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low_pca, aes(x=PC1, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC1")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc_pca, aes(x=PC1, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC1")+
  ylab("Modifier")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/pc1load.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



# PC2

one<- ggplot(all_high_pca, aes(x=PC2, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC2")+
  ylab("High Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

two<- ggplot(all_mod_pca, aes(x=PC2, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC2")+
  ylab("Moderate Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

three<- ggplot(all_low_pca, aes(x=PC2, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC2")+
  ylab("Low Impact Load")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

four<- ggplot(all_nc_pca, aes(x=PC2, y = value, color = variable))+
  geom_point()+
  geom_smooth(method = "lm")+
  theme_classic()+
  xlab("PC2")+
  ylab("Modifier")+
  theme(axis.title.x= element_text(size=25),
        axis.title.y = element_text(size=25),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size =20),
        legend.text = element_text(size = 30),
        legend.title = element_text(size = 30))+
  ylim(0,0.3)+
  guides(color = guide_legend(title = "Load"))+
  scale_color_manual(values = c("darkred", "black"), labels = c("Realized", "Potential"))

ggarrange(one, two, three, four, common.legend = TRUE, legend = "right")
ggsave("C://Users/andre/OneDrive/Documents/NewComputerDownloads/Load/Figures/pc2load.tiff", units="in", width=17, height=15, dpi=300, compression = 'lzw')



#### Correlation Coefficients for each trait - NEED TO DOUBLE CHECK ALL OF THIS 
### IT WAS DIFFERENT FROM FIRST ITERATION

## High Impact

### DOUBLE CHECK PINNAE

cor.test(all$HIGH_HM_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$HIGH_HM_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HM_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$HIGH_HM_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$HIGH_HM_LOAD, all_pca$PC2, method = "spearman")

cor.test(all$HIGH_HT_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$HIGH_HT_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$HIGH_HT_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$HIGH_HT_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$HIGH_HT_LOAD, all_pca$PC2, method = "spearman")



## MOD Impact

### DOUBLE CHECK PINNAE

cor.test(all$MOD_HM_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$MOD_HM_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HM_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$MOD_HM_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$MOD_HM_LOAD, all_pca$PC2, method = "spearman")

cor.test(all$MOD_HT_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$MOD_HT_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$MOD_HT_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$MOD_HT_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$MOD_HT_LOAD, all_pca$PC2, method = "spearman")




## LOW Impact

### DOUBLE CHECK PINNAE

cor.test(all$LOW_HM_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$LOW_HM_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HM_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$LOW_HM_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$LOW_HM_LOAD, all_pca$PC2, method = "spearman")

cor.test(all$LOW_HT_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$LOW_HT_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$LOW_HT_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$LOW_HT_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$LOW_HT_LOAD, all_pca$PC2, method = "spearman")




## NC Impact

### DOUBLE CHECK PINNAE

cor.test(all$NC_HM_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$NC_HM_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$NC_HM_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$NC_HM_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$NC_HM_LOAD, all_pca$PC2, method = "spearman")

cor.test(all$NC_HT_LOAD, all$Wing_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Tail_round_outlierremoved, method = "spearman")
#cor.test(all$NC_HT_LOAD, all$Tarsus_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Pinnae_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Head_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Culmen_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Mass_round_outlierremoved, method = "spearman")
cor.test(all$NC_HT_LOAD, all$Comb_Area_Outlierremoved, method = "spearman")
cor.test(all_pca$NC_HT_LOAD, all_pca$PC1, method = "spearman")
cor.test(all_pca$NC_HT_LOAD, all_pca$PC2, method = "spearman")






