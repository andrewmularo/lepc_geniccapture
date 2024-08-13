#### Generate window based LRT estimates 

library(tidyverse)

library(windowscanr)
library(devtools)
### pca 

pca1m <- read_delim("pca1_m.out.lrt0.gz", delim = "\t", col_names = T)
pca1f <- read_delim("pca1_f.out.lrt0.gz", delim = "\t", col_names = T)

pca2m <- read_delim("pca2_m.out.lrt0.gz", delim = "\t", col_names = T)
pca2f <- read_delim("pca2_f.out.lrt0.gz", delim = "\t", col_names = T)




wingm <- read_delim("wingsize_m.out.lrt0.gz", delim = "\t", col_names = T)
combm <- read_delim("combarea_m.out.lrt0.gz", delim = "\t", col_names = T)
culmenm <- read_delim("culmenlength_m.out.lrt0.gz", delim = "\t", col_names = T)
headm <- read_delim("headlength_m.out.lrt0.gz", delim = "\t", col_names = T)
massm <- read_delim("mass_m.out.lrt0.gz", delim = "\t", col_names = T)
pinnaem <- read_delim("pinnaesize_m.out.lrt0.gz", delim = "\t", col_names = T)
tailm <- read_delim("tailsize_m.out.lrt0.gz", delim = "\t", col_names = T)
tarsusm <- read_delim("tarsus_toe_m.out.lrt0.gz", delim = "\t", col_names = T)

wingf <- read_delim("wingsize_f.out.lrt0.gz", delim = "\t", col_names = T)
combf <- read_delim("combarea_f.out.lrt0.gz", delim = "\t", col_names = T)
culmenf <- read_delim("culmenlength_f.out.lrt0.gz", delim = "\t", col_names = T)# double check 
headf <- read_delim("headlength_f.out.lrt0.gz", delim = "\t", col_names = T)
massf <- read_delim("mass_f.out.lrt0.gz", delim = "\t", col_names = T)
pinnaef <- read_delim("pinnaesize_f.out.lrt0.gz", delim = "\t", col_names = T)
tailf <- read_delim("tailsize_f.out.lrt0.gz", delim = "\t", col_names = T)
tarsusf <- read_delim("tarsus_toe_f.out.lrt0.gz", delim = "\t", col_names = T) #double check 



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


pca1f <- filter(pca1f, LRT != -999.000000)
pca1f_window <- winScan(x = pca1f,
                        groups = "Chromosome",
                        position = "Position",
                        values = "LRT",
                        win_size = 50000,
                        win_step = 10000,
                        funs = "median",
                        cores = 32)
write.csv(pca1f_window, file="pca1f_window.csv", row.names=T)



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


pca2f <- filter(pca2f, LRT != -999.000000)
pca2f_window <- winScan(x = pca2f,
                        groups = "Chromosome",
                        position = "Position",
                        values = "LRT",
                        win_size = 50000,
                        win_step = 10000,
                        funs = "median",
                        cores = 32)
write.csv(pca2f_window, file="pca2f_window.csv", row.names=T)









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
window_m_tail <- winScan(x = tailm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_tail, file="window_m_tail.csv", row.names=T)

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



wingf <- filter(wingf, LRT != -999.000000)
window_f_wing <- winScan(x = wingf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_wing, file="window_f_wing.csv", row.names=T)
combf <- filter(combf, LRT != -999.000000)
window_f_comb <- winScan(x = combf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_comb, file="window_f_comb.csv", row.names=T)

culmenf <- filter(culmenf, LRT != -999.000000)
window_f_culmen <- winScan(x = culmenf,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_culmen, file="window_f_culmenm.csv", row.names=T)

headf <- filter(headf, LRT != -999.000000)
window_f_head <- winScan(x = headf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_head, file="window_f_head.csv", row.names=T)

massf <- filter(massf, LRT != -999.000000)
window_f_mass <- winScan(x = massf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_mass, file="window_f_mass.csv", row.names=T)

pinnaef <- filter(pinnaef, LRT != -999.000000)
window_f_pinnae <- winScan(x = pinnaef,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_pinnae, file="window_f_pinnae.csv", row.names=T)

tailf <- filter(tailf, LRT != -999.000000)
window_f_tail <- winScan(x = tailf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_tail, file="window_f_tail.csv", row.names=T)

tarsusf <- filter(tarsusf, LRT != -999.000000)
window_f_tarsus <- winScan(x = tarsusf,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_tarsus, file="window_f_tarsus.csv", row.names=T)


#### Close Relatives Removed

wingm_norelate <- read_delim("wingsize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
combm_norelate <- read_delim("combarea_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
culmenm_norelate <- read_delim("culmenlength_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
headm_norelate <- read_delim("headlength_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
massm_norelate <- read_delim("mass_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
pinnaem_norelate <- read_delim("pinnaesize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tailm_norelate <- read_delim("tailsize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tarsusm_norelate <- read_delim("tarsus_toe_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)

wingf_norelate <- read_delim("wingsize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
combf_norelate <- read_delim("combarea_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
culmenf_norelate <- read_delim("culmenlength_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
headf_norelate <- read_delim("headlength_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
massf_norelate <- read_delim("mass_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
pinnaef_norelate <- read_delim("pinnaesize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tailf_norelate <- read_delim("tailsize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tarsusf_norelate <- read_delim("tarsus_toe_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)

wingm_norelate <- filter(wingm_norelate, LRT != -999.000000)
window_m_wing_norelate <- winScan(x = wingm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_wing_norelate, file="window_m_wing_norelate.csv", row.names=T)

combm_norelate <- filter(combm_norelate, LRT != -999.000000)
window_m_comb_norelate <- winScan(x = combm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_comb_norelate, file="window_m_comb_norelate.csv", row.names=T)

culmenm_norelate <- filter(culmenm_norelate, LRT != -999.000000)
window_m_culmen_norelate <- winScan(x = culmenm_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_culmen_norelate, file="window_m_culmen_norelate.csv", row.names=T)

headm_norelate <- filter(headm_norelate, LRT != -999.000000)
window_m_head_norelate <- winScan(x = headm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_head_norelate, file="window_m_head_norelate.csv", row.names=T)

massm_norelate <- filter(massm_norelate, LRT != -999.000000)
window_m_mass_norelate <- winScan(x = massm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_mass_norelate, file="window_m_mass_norelate.csv", row.names=T)

pinnaem_norelate <- filter(pinnaem_norelate, LRT != -999.000000)
window_m_pinnae_norelate <- winScan(x = pinnaem_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_pinnae_norelate, file="window_m_pinnae_norelate.csv", row.names=T)

tailm_norelate <- filter(tailm_norelate, LRT != -999.000000)
window_m_tail_norelate <- winScan(x = tailm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_tail_norelate, file="window_m_tail_norelate.csv", row.names=T)

tarsusm_norelate <- filter(tarsusm_norelate, LRT != -999.000000)
window_m_tarsus_norelate <- winScan(x = tarsusm_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_tarsus_norelate, file="window_m_tarsus_norelate.csv", row.names=T)



wingf_norelate <- filter(wingf_norelate, LRT != -999.000000)
window_f_wing_norelate <- winScan(x = wingf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_wing_norelate, file="window_f_wing_norelate.csv", row.names=T)

combf_norelate <- filter(combf_norelate, LRT != -999.000000)
window_f_comb_norelate <- winScan(x = combf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_comb_norelate, file="window_f_comb_norelate.csv", row.names=T)

culmenf_norelate <- filter(culmenf_norelate, LRT != -999.000000)
window_f_culmen_norelate <- winScan(x = culmenf_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_culmen_norelate, file="window_f_culmenm_norelate.csv", row.names=T)

headf_norelate <- filter(headf_norelate, LRT != -999.000000)
window_f_head_norelate <- winScan(x = headf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_head_norelate, file="window_f_head_norelate.csv", row.names=T)

massf_norelate <- filter(massf_norelate, LRT != -999.000000)
window_f_mass_norelate <- winScan(x = massf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_mass_norelate, file="window_f_mass_norelate.csv", row.names=T)

pinnaef_norelate <- filter(pinnaef_norelate, LRT != -999.000000)
window_f_pinnae_norelate <- winScan(x = pinnaef_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_pinnae_norelate, file="window_f_pinnae_norelate.csv", row.names=T)

tailf_norelate <- filter(tailf_norelate, LRT != -999.000000)
window_f_tail_norelate <- winScan(x = tailf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores#### Generate window based LRT estimates 

library(tidyverse)

library(windowscanr)
library(devtools)
### pca 

pca1m <- read_delim("pca1_m.out.lrt0.gz", delim = "\t", col_names = T)
pca1f <- read_delim("pca1_f.out.lrt0.gz", delim = "\t", col_names = T)

pca2m <- read_delim("pca2_m.out.lrt0.gz", delim = "\t", col_names = T)
pca2f <- read_delim("pca2_f.out.lrt0.gz", delim = "\t", col_names = T)




wingm <- read_delim("wingsize_m.out.lrt0.gz", delim = "\t", col_names = T)
combm <- read_delim("combarea_m.out.lrt0.gz", delim = "\t", col_names = T)
culmenm <- read_delim("culmenlength_m.out.lrt0.gz", delim = "\t", col_names = T)
headm <- read_delim("headlength_m.out.lrt0.gz", delim = "\t", col_names = T)
massm <- read_delim("mass_m.out.lrt0.gz", delim = "\t", col_names = T)
pinnaem <- read_delim("pinnaesize_m.out.lrt0.gz", delim = "\t", col_names = T)
tailm <- read_delim("tailsize_m.out.lrt0.gz", delim = "\t", col_names = T)
tarsusm <- read_delim("tarsus_toe_m.out.lrt0.gz", delim = "\t", col_names = T)

wingf <- read_delim("wingsize_f.out.lrt0.gz", delim = "\t", col_names = T)
combf <- read_delim("combarea_f.out.lrt0.gz", delim = "\t", col_names = T)
culmenf <- read_delim("culmenlength_f.out.lrt0.gz", delim = "\t", col_names = T)# double check 
headf <- read_delim("headlength_f.out.lrt0.gz", delim = "\t", col_names = T)
massf <- read_delim("mass_f.out.lrt0.gz", delim = "\t", col_names = T)
pinnaef <- read_delim("pinnaesize_f.out.lrt0.gz", delim = "\t", col_names = T)
tailf <- read_delim("tailsize_f.out.lrt0.gz", delim = "\t", col_names = T)
tarsusf <- read_delim("tarsus_toe_f.out.lrt0.gz", delim = "\t", col_names = T) #double check 



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


pca1f <- filter(pca1f, LRT != -999.000000)
pca1f_window <- winScan(x = pca1f,
                        groups = "Chromosome",
                        position = "Position",
                        values = "LRT",
                        win_size = 50000,
                        win_step = 10000,
                        funs = "median",
                        cores = 32)
write.csv(pca1f_window, file="pca1f_window.csv", row.names=T)



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


pca2f <- filter(pca2f, LRT != -999.000000)
pca2f_window <- winScan(x = pca2f,
                        groups = "Chromosome",
                        position = "Position",
                        values = "LRT",
                        win_size = 50000,
                        win_step = 10000,
                        funs = "median",
                        cores = 32)
write.csv(pca2f_window, file="pca2f_window.csv", row.names=T)









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
window_m_tail <- winScan(x = tailm,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_m_tail, file="window_m_tail.csv", row.names=T)

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



wingf <- filter(wingf, LRT != -999.000000)
window_f_wing <- winScan(x = wingf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_wing, file="window_f_wing.csv", row.names=T)
combf <- filter(combf, LRT != -999.000000)
window_f_comb <- winScan(x = combf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_comb, file="window_f_comb.csv", row.names=T)

culmenf <- filter(culmenf, LRT != -999.000000)
window_f_culmen <- winScan(x = culmenf,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_culmen, file="window_f_culmenm.csv", row.names=T)

headf <- filter(headf, LRT != -999.000000)
window_f_head <- winScan(x = headf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_head, file="window_f_head.csv", row.names=T)

massf <- filter(massf, LRT != -999.000000)
window_f_mass <- winScan(x = massf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_mass, file="window_f_mass.csv", row.names=T)

pinnaef <- filter(pinnaef, LRT != -999.000000)
window_f_pinnae <- winScan(x = pinnaef,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_pinnae, file="window_f_pinnae.csv", row.names=T)

tailf <- filter(tailf, LRT != -999.000000)
window_f_tail <- winScan(x = tailf,
                         groups = "Chromosome",
                         position = "Position",
                         values = "LRT",
                         win_size = 50000,
                         win_step = 10000,
                         funs = "median",
                         cores = 32)

write.csv(window_f_tail, file="window_f_tail.csv", row.names=T)

tarsusf <- filter(tarsusf, LRT != -999.000000)
window_f_tarsus <- winScan(x = tarsusf,
                           groups = "Chromosome",
                           position = "Position",
                           values = "LRT",
                           win_size = 50000,
                           win_step = 10000,
                           funs = "median",
                           cores = 32)

write.csv(window_f_tarsus, file="window_f_tarsus.csv", row.names=T)


#### Close Relatives Removed

wingm_norelate <- read_delim("wingsize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
combm_norelate <- read_delim("combarea_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
culmenm_norelate <- read_delim("culmenlength_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
headm_norelate <- read_delim("headlength_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
massm_norelate <- read_delim("mass_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
pinnaem_norelate <- read_delim("pinnaesize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tailm_norelate <- read_delim("tailsize_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tarsusm_norelate <- read_delim("tarsus_toe_m_norelate.out.lrt0.gz", delim = "\t", col_names = T)

wingf_norelate <- read_delim("wingsize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
combf_norelate <- read_delim("combarea_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
culmenf_norelate <- read_delim("culmenlength_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
headf_norelate <- read_delim("headlength_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
massf_norelate <- read_delim("mass_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
pinnaef_norelate <- read_delim("pinnaesize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tailf_norelate <- read_delim("tailsize_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)
tarsusf_norelate <- read_delim("tarsus_toe_f_norelate.out.lrt0.gz", delim = "\t", col_names = T)

wingm_norelate <- filter(wingm_norelate, LRT != -999.000000)
window_m_wing_norelate <- winScan(x = wingm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_wing_norelate, file="window_m_wing_norelate.csv", row.names=T)

combm_norelate <- filter(combm_norelate, LRT != -999.000000)
window_m_comb_norelate <- winScan(x = combm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_comb_norelate, file="window_m_comb_norelate.csv", row.names=T)

culmenm_norelate <- filter(culmenm_norelate, LRT != -999.000000)
window_m_culmen_norelate <- winScan(x = culmenm_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_culmen_norelate, file="window_m_culmen_norelate.csv", row.names=T)

headm_norelate <- filter(headm_norelate, LRT != -999.000000)
window_m_head_norelate <- winScan(x = headm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_head_norelate, file="window_m_head_norelate.csv", row.names=T)

massm_norelate <- filter(massm_norelate, LRT != -999.000000)
window_m_mass_norelate <- winScan(x = massm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_mass_norelate, file="window_m_mass_norelate.csv", row.names=T)

pinnaem_norelate <- filter(pinnaem_norelate, LRT != -999.000000)
window_m_pinnae_norelate <- winScan(x = pinnaem_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_pinnae_norelate, file="window_m_pinnae_norelate.csv", row.names=T)

tailm_norelate <- filter(tailm_norelate, LRT != -999.000000)
window_m_tail_norelate <- winScan(x = tailm_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_m_tail_norelate, file="window_m_tail_norelate.csv", row.names=T)

tarsusm_norelate <- filter(tarsusm_norelate, LRT != -999.000000)
window_m_tarsus_norelate <- winScan(x = tarsusm_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_m_tarsus_norelate, file="window_m_tarsus_norelate.csv", row.names=T)



wingf_norelate <- filter(wingf_norelate, LRT != -999.000000)
window_f_wing_norelate <- winScan(x = wingf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_wing_norelate, file="window_f_wing_norelate.csv", row.names=T)

combf_norelate <- filter(combf_norelate, LRT != -999.000000)
window_f_comb_norelate <- winScan(x = combf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_comb_norelate, file="window_f_comb_norelate.csv", row.names=T)

culmenf_norelate <- filter(culmenf_norelate, LRT != -999.000000)
window_f_culmen_norelate <- winScan(x = culmenf_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_culmen_norelate, file="window_f_culmenm_norelate.csv", row.names=T)

headf_norelate <- filter(headf_norelate, LRT != -999.000000)
window_f_head_norelate <- winScan(x = headf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_head_norelate, file="window_f_head_norelate.csv", row.names=T)

massf_norelate <- filter(massf_norelate, LRT != -999.000000)
window_f_mass_norelate <- winScan(x = massf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_mass_norelate, file="window_f_mass_norelate.csv", row.names=T)

pinnaef_norelate <- filter(pinnaef_norelate, LRT != -999.000000)
window_f_pinnae_norelate <- winScan(x = pinnaef_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_pinnae_norelate, file="window_f_pinnae_norelate.csv", row.names=T)

tailf_norelate <- filter(tailf_norelate, LRT != -999.000000)
window_f_tail_norelate <- winScan(x = tailf_norelate,
                                  groups = "Chromosome",
                                  position = "Position",
                                  values = "LRT",
                                  win_size = 50000,
                                  win_step = 10000,
                                  funs = "median",
                                  cores = 32)

write.csv(window_f_tail_norelate, file="window_f_tail_norelate.csv", row.names=T)

tarsusf_norelate <- filter(tarsusf_norelate, LRT != -999.000000)
window_f_tarsus_norelate <- winScan(x = tarsusf_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_tarsus_norelate, file="window_f_tarsus_norelate.csv", row.names=T)


 = 32)

write.csv(window_f_tail_norelate, file="window_f_tail_norelate.csv", row.names=T)

tarsusf_norelate <- filter(tarsusf_norelate, LRT != -999.000000)
window_f_tarsus_norelate <- winScan(x = tarsusf_norelate,
                                    groups = "Chromosome",
                                    position = "Position",
                                    values = "LRT",
                                    win_size = 50000,
                                    win_step = 10000,
                                    funs = "median",
                                    cores = 32)

write.csv(window_f_tarsus_norelate, file="window_f_tarsus_norelate.csv", row.names=T)


