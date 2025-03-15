#### manhattan plots 


#install.packages("qqman")

#library(qqman)
library(tidyverse)
library(ggpubr)

### set working directory 

wd<- "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/Association"

setwd(wd)



## trait windows 

wingm<- read.csv("window_m_wing.csv")
tarsusm<- read.csv("window_m_tarsus.csv")
tailm<- read.csv("window_m_tail.csv")
pinnaem<- read.csv("window_m_pinnae.csv")
massm<- read.csv("window_m_mass.csv")
headm<- read.csv("window_m_head.csv")
culmenm<- read.csv("window_m_culmen.csv")
combm<- read.csv("window_m_comb.csv")


### PCA 

pca1m_window<- read.csv("pca1m_window.csv")

pca2m_window<- read.csv("pca2m_window.csv")


pca1mplot<- ggplot(pca1m_window, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 6.276817)+
  theme(
    legend.position = "none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("PCA1")+xlab("Window")+ylab("Median LRT")

pca2mplot<- ggplot(pca2m_window, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 2.985089)+
  theme(
    legend.position = "none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("PCA2")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,8))




ggarrange(pca1mplot, pca2mplot)
ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure3.tiff", units="in", width=15, height=7, dpi=300, compression = 'lzw')



## Males 

wingplotm<- ggplot(wingm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 2.378867)+
  theme(
    legend.position = "none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Wing Chord")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


tarsusplotm<- ggplot(tarsusm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 5.8663895)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Tarsus Length")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


tailplotm<- ggplot(tailm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 3.194004)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Tail Length")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


pinnaeplotm<- ggplot(pinnaem, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 3.189592)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Pinnae Size")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


massplotm<- ggplot(massm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() +
  geom_hline(yintercept = 4.246552)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Mass")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


headplotm<- ggplot(headm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw() + 
  geom_hline(yintercept = 4.178808)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Head Length")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


culmenplotm<- ggplot(culmenm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw()+ 
  geom_hline(yintercept = 3.971831)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Culmen Length")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))

combplotm<- ggplot(combm, aes(x=win_no, y=LRT_median, color = Chromosome))+
  geom_point()+
  # Custom the theme:
  theme_bw()+
  geom_hline(yintercept = 2.91874)+
  theme( 
    legend.position="none",
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank()
  )+scale_color_manual(values=rep(c("black","grey"), 98))+
  ggtitle("Comb Area")+xlab("Window")+ylab("Median LRT")+
  ylim(c(0,10))


ggarrange(wingplotm, tailplotm, tarsusplotm, pinnaeplotm, massplotm, 
          headplotm, combplotm, culmenplotm, nrow = 4, ncol = 2, legend = "none")

ggsave("C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Manuscript/Figures/Figure4.tiff", units="in", width=15, height=15, dpi=300, compression = 'lzw')


### Obtaining all representative scaffolds

a<-left_join(wingm, tailm)
b<- left_join(a, tarsusm)
c<- left_join(b, pinnaem)
d<- left_join(c, massm)
e<- left_join(d, headm)
f<- left_join(e, culmenm)
g<- left_join(f, combm)
h<- left_join(g, pca1m_window)
male_condensed<- left_join(h, pca2m_window)
write.csv(male_condensed, "C://Users/andre/OneDrive/Documents/Dissertation/Chapter 3_LEPC/Analysis_Scripts/LEPC_reference/Theta/male_windowscaffolds.csv")


