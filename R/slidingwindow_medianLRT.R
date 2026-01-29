#### Generate window based LRT estimates 

library(tidyverse)

library(windowscanr)
library(devtools)
### pca 

pca1m <- read_delim("pca1_m.out.lrt0.gz", delim = "\t", col_names = T)
pca2m <- read_delim("pca2_m.out.lrt0.gz", delim = "\t", col_names = T)



wingm <- read_delim("wings_m.out.lrt0.gz", delim = "\t", col_names = T)
combm <- read_delim("combarea_m.out.lrt0.gz", delim = "\t", col_names = T)
culmenm <- read_delim("culmen_m.out.lrt0.gz", delim = "\t", col_names = T)
headm <- read_delim("head_m.out.lrt0.gz", delim = "\t", col_names = T)
massm <- read_delim("mass_m.out.lrt0.gz", delim = "\t", col_names = T)
pinnaem <- read_delim("pinnae_m.out.lrt0.gz", delim = "\t", col_names = T)
tailm <- read_delim("tail_m.out.lrt0.gz", delim = "\t", col_names = T)
tarsusm <- read_delim("tarsus_m.out.lrt0.gz", delim = "\t", col_names = T)




### pca1_slidingwindow

pca1m <- filter(pca1m, LRT != -999.000000)
pca1m_window <- winScan(x = pca1m,
                       groups = "Chromosome",
                       position = "Position",
                       values = "LRT",
                       win_size = 50000,
                       win_step = 10000,
                       funs = "median",
                       cores = 32)
write.csv(pca1m_window, file="pca1m_window.csv", row.names=T)



pca2m <- filter(pca2m, LRT != -999.000000)
pca2m_window <- winScan(x = pca2m,
                        groups = "Chromosome",
                        position = "Position",
                        values = "LRT",
                        win_size = 50000,
                        win_step = 10000,
                        funs = "median",
                        cores = 32)
write.csv(pca2m_window, file="pca2m_window.csv", row.names=T)


wingm <- filter(wingm, LRT != -999.000000)
window_m_wing <- winScan(x = wingm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_wing, file="window_m_wing.csv", row.names=T)

combm <- filter(combm, LRT != -999.000000)
window_m_comb <- winScan(x = combm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_comb, file="window_m_comb.csv", row.names=T)

culmenm <- filter(culmenm, LRT != -999.000000)
window_m_culmen <- winScan(x = culmenm,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_m_culmen, file="window_m_culmen.csv", row.names=T)

headm <- filter(headm, LRT != -999.000000)
window_m_head <- winScan(x = headm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_head, file="window_m_head.csv", row.names=T)

massm <- filter(massm, LRT != -999.000000)
window_m_mass <- winScan(x = massm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_mass, file="window_m_mass.csv", row.names=T)

pinnaem <- filter(pinnaem, LRT != -999.000000)
window_m_pinnae <- winScan(x = pinnaem,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_m_pinnae, file="window_m_pinnae.csv", row.names=T)

tailm <- filter(tailm, LRT != -999.000000)
window_m_tailREDO <- winScan(x = tailm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)


write.csv(window_m_tailREDO, file="window_m_tailREDO.csv", row.names=T)

tarsusm <- filter(tarsusm, LRT != -999.000000)
window_m_tarsus <- winScan(x = tarsusm,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_m_tarsus, file="window_m_tarsus.csv", row.names=T)



