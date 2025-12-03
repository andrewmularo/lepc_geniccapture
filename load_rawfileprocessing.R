library(tidyverse)
library(reshape2)


### All nocoding genetic load



i1 <- read_delim("all_ind1_modifier.geno", delim = "\t", col_names = T)
i2 <- read_delim("all_ind2_modifier.geno", delim = "\t", col_names = T)
i3 <- read_delim("all_ind3_modifier.geno", delim = "\t", col_names = T)
i4 <- read_delim("all_ind4_modifier.geno", delim = "\t", col_names = T)
i5 <- read_delim("all_ind5_modifier.geno", delim = "\t", col_names = T)
i6 <- read_delim("all_ind6_modifier.geno", delim = "\t", col_names = T)
i7 <- read_delim("all_ind7_modifier.geno", delim = "\t", col_names = T)
i8 <- read_delim("all_ind8_modifier.geno", delim = "\t", col_names = T)
i9 <- read_delim("all_ind9_modifier.geno", delim = "\t", col_names = T)
i10 <- read_delim("all_ind10_modifier.geno", delim = "\t", col_names = T)
i11 <- read_delim("all_ind11_modifier.geno", delim = "\t", col_names = T)
i12 <- read_delim("all_ind12_modifier.geno", delim = "\t", col_names = T)
i13 <- read_delim("all_ind13_modifier.geno", delim = "\t", col_names = T)
i14 <- read_delim("all_ind14_modifier.geno", delim = "\t", col_names = T)
i15 <- read_delim("all_ind15_modifier.geno", delim = "\t", col_names = T)
i16 <- read_delim("all_ind16_modifier.geno", delim = "\t", col_names = T)
i17 <- read_delim("all_ind17_modifier.geno", delim = "\t", col_names = T)
i18 <- read_delim("all_ind18_modifier.geno", delim = "\t", col_names = T)
i19 <- read_delim("all_ind19_modifier.geno", delim = "\t", col_names = T)
i20 <- read_delim("all_ind20_modifier.geno", delim = "\t", col_names = T)


i21 <- read_delim("all_ind21_modifier.geno", delim = "\t", col_names = T)
i22 <- read_delim("all_ind22_modifier.geno", delim = "\t", col_names = T)
i23 <- read_delim("all_ind23_modifier.geno", delim = "\t", col_names = T)
i24 <- read_delim("all_ind24_modifier.geno", delim = "\t", col_names = T)
i25 <- read_delim("all_ind25_modifier.geno", delim = "\t", col_names = T)
i26 <- read_delim("all_ind26_modifier.geno", delim = "\t", col_names = T)
i27 <- read_delim("all_ind27_modifier.geno", delim = "\t", col_names = T)
i28 <- read_delim("all_ind28_modifier.geno", delim = "\t", col_names = T)
i29 <- read_delim("all_ind29_modifier.geno", delim = "\t", col_names = T)
i30 <- read_delim("all_ind30_modifier.geno", delim = "\t", col_names = T)
i31 <- read_delim("all_ind31_modifier.geno", delim = "\t", col_names = T)
i32 <- read_delim("all_ind32_modifier.geno", delim = "\t", col_names = T)
i33 <- read_delim("all_ind33_modifier.geno", delim = "\t", col_names = T)
i34 <- read_delim("all_ind34_modifier.geno", delim = "\t", col_names = T)
i35 <- read_delim("all_ind35_modifier.geno", delim = "\t", col_names = T)
i36 <- read_delim("all_ind36_modifier.geno", delim = "\t", col_names = T)
i37 <- read_delim("all_ind37_modifier.geno", delim = "\t", col_names = T)
i38 <- read_delim("all_ind38_modifier.geno", delim = "\t", col_names = T)
i39 <- read_delim("all_ind39_modifier.geno", delim = "\t", col_names = T)
i40 <- read_delim("all_ind40_modifier.geno", delim = "\t", col_names = T)
i41 <- read_delim("all_ind41_modifier.geno", delim = "\t", col_names = T)
i42 <- read_delim("all_ind42_modifier.geno", delim = "\t", col_names = T)
i43 <- read_delim("all_ind43_modifier.geno", delim = "\t", col_names = T)
i44 <- read_delim("all_ind44_modifier.geno", delim = "\t", col_names = T)
i45 <- read_delim("all_ind45_modifier.geno", delim = "\t", col_names = T)
i46 <- read_delim("all_ind46_modifier.geno", delim = "\t", col_names = T)
i47 <- read_delim("all_ind47_modifier.geno", delim = "\t", col_names = T)
i48 <- read_delim("all_ind48_modifier.geno", delim = "\t", col_names = T)
i49 <- read_delim("all_ind49_modifier.geno", delim = "\t", col_names = T)


i50 <- read_delim("all_ind50_modifier.geno", delim = "\t", col_names = T)
i51 <- read_delim("all_ind51_modifier.geno", delim = "\t", col_names = T)
i52 <- read_delim("all_ind52_modifier.geno", delim = "\t", col_names = T)
i53 <- read_delim("all_ind53_modifier.geno", delim = "\t", col_names = T)
i54 <- read_delim("all_ind54_modifier.geno", delim = "\t", col_names = T)
i55 <- read_delim("all_ind55_modifier.geno", delim = "\t", col_names = T)
i56 <- read_delim("all_ind56_modifier.geno", delim = "\t", col_names = T)
i57 <- read_delim("all_ind57_modifier.geno", delim = "\t", col_names = T)
i58 <- read_delim("all_ind58_modifier.geno", delim = "\t", col_names = T)
i59 <- read_delim("all_ind59_modifier.geno", delim = "\t", col_names = T)
i60 <- read_delim("all_ind60_modifier.geno", delim = "\t", col_names = T)
i61 <- read_delim("all_ind61_modifier.geno", delim = "\t", col_names = T)
i62 <- read_delim("all_ind62_modifier.geno", delim = "\t", col_names = T)
i63 <- read_delim("all_ind63_modifier.geno", delim = "\t", col_names = T)
i64 <- read_delim("all_ind64_modifier.geno", delim = "\t", col_names = T)
i65 <- read_delim("all_ind65_modifier.geno", delim = "\t", col_names = T)
i66 <- read_delim("all_ind66_modifier.geno", delim = "\t", col_names = T)
i67 <- read_delim("all_ind67_modifier.geno", delim = "\t", col_names = T)
i68 <- read_delim("all_ind68_modifier.geno", delim = "\t", col_names = T)
i69 <- read_delim("all_ind69_modifier.geno", delim = "\t", col_names = T)
i70 <- read_delim("all_ind70_modifier.geno", delim = "\t", col_names = T)
i71 <- read_delim("all_ind71_modifier.geno", delim = "\t", col_names = T)
i72 <- read_delim("all_ind72_modifier.geno", delim = "\t", col_names = T)
i73 <- read_delim("all_ind73_modifier.geno", delim = "\t", col_names = T)
i74 <- read_delim("all_ind74_modifier.geno", delim = "\t", col_names = T)
i75 <- read_delim("all_ind75_modifier.geno", delim = "\t", col_names = T)
i76 <- read_delim("all_ind76_modifier.geno", delim = "\t", col_names = T)
i77 <- read_delim("all_ind77_modifier.geno", delim = "\t", col_names = T)
i78 <- read_delim("all_ind78_modifier.geno", delim = "\t", col_names = T)
i79 <- read_delim("all_ind79_modifier.geno", delim = "\t", col_names = T)
i80 <- read_delim("all_ind80_modifier.geno", delim = "\t", col_names = T)
i81 <- read_delim("all_ind81_modifier.geno", delim = "\t", col_names = T)
i82 <- read_delim("all_ind82_modifier.geno", delim = "\t", col_names = T)
i83 <- read_delim("all_ind83_modifier.geno", delim = "\t", col_names = T)
i84 <- read_delim("all_ind84_modifier.geno", delim = "\t", col_names = T)
i85 <- read_delim("all_ind85_modifier.geno", delim = "\t", col_names = T)
i86 <- read_delim("all_ind86_modifier.geno", delim = "\t", col_names = T)
i87 <- read_delim("all_ind87_modifier.geno", delim = "\t", col_names = T)
i88 <- read_delim("all_ind88_modifier.geno", delim = "\t", col_names = T)
i89 <- read_delim("all_ind89_modifier.geno", delim = "\t", col_names = T)
i90 <- read_delim("all_ind90_modifier.geno", delim = "\t", col_names = T)
i91 <- read_delim("all_ind91_modifier.geno", delim = "\t", col_names = T)
i92 <- read_delim("all_ind92_modifier.geno", delim = "\t", col_names = T)
i93 <- read_delim("all_ind93_modifier.geno", delim = "\t", col_names = T)
i94 <- read_delim("all_ind94_modifier.geno", delim = "\t", col_names = T)
i95 <- read_delim("all_ind95_modifier.geno", delim = "\t", col_names = T)
i96 <- read_delim("all_ind96_modifier.geno", delim = "\t", col_names = T)
i97 <- read_delim("all_ind97_modifier.geno", delim = "\t", col_names = T)
i98 <- read_delim("all_ind98_modifier.geno", delim = "\t", col_names = T)
i99 <- read_delim("all_ind99_modifier.geno", delim = "\t", col_names = T)


i100 <- read_delim("all_ind100_modifier.geno", delim = "\t", col_names = T)
i101 <- read_delim("all_ind101_modifier.geno", delim = "\t", col_names = T)
i102 <- read_delim("all_ind102_modifier.geno", delim = "\t", col_names = T)
i103 <- read_delim("all_ind103_modifier.geno", delim = "\t", col_names = T)
i104 <- read_delim("all_ind104_modifier.geno", delim = "\t", col_names = T)
i105 <- read_delim("all_ind105_modifier.geno", delim = "\t", col_names = T)
i106 <- read_delim("all_ind106_modifier.geno", delim = "\t", col_names = T)
i107 <- read_delim("all_ind107_modifier.geno", delim = "\t", col_names = T)
i108 <- read_delim("all_ind108_modifier.geno", delim = "\t", col_names = T)
i109 <- read_delim("all_ind109_modifier.geno", delim = "\t", col_names = T)
i110 <- read_delim("all_ind110_modifier.geno", delim = "\t", col_names = T)
i111 <- read_delim("all_ind111_modifier.geno", delim = "\t", col_names = T)
i112 <- read_delim("all_ind112_modifier.geno", delim = "\t", col_names = T)
i113 <- read_delim("all_ind113_modifier.geno", delim = "\t", col_names = T)
i114 <- read_delim("all_ind114_modifier.geno", delim = "\t", col_names = T)
i115 <- read_delim("all_ind115_modifier.geno", delim = "\t", col_names = T)
i116 <- read_delim("all_ind116_modifier.geno", delim = "\t", col_names = T)
i117 <- read_delim("all_ind117_modifier.geno", delim = "\t", col_names = T)
i118 <- read_delim("all_ind118_modifier.geno", delim = "\t", col_names = T)
i119 <- read_delim("all_ind119_modifier.geno", delim = "\t", col_names = T)
i120 <- read_delim("all_ind120_modifier.geno", delim = "\t", col_names = T)
i121 <- read_delim("all_ind121_modifier.geno", delim = "\t", col_names = T)
i122 <- read_delim("all_ind122_modifier.geno", delim = "\t", col_names = T)
i123 <- read_delim("all_ind123_modifier.geno", delim = "\t", col_names = T)
i124 <- read_delim("all_ind124_modifier.geno", delim = "\t", col_names = T)
i125 <- read_delim("all_ind125_modifier.geno", delim = "\t", col_names = T)
i126 <- read_delim("all_ind126_modifier.geno", delim = "\t", col_names = T)
i127 <- read_delim("all_ind127_modifier.geno", delim = "\t", col_names = T)
i128 <- read_delim("all_ind128_modifier.geno", delim = "\t", col_names = T)
i129 <- read_delim("all_ind129_modifier.geno", delim = "\t", col_names = T)


i130 <- read_delim("all_ind130_modifier.geno", delim = "\t", col_names = T)
i131 <- read_delim("all_ind131_modifier.geno", delim = "\t", col_names = T)
i132 <- read_delim("all_ind132_modifier.geno", delim = "\t", col_names = T)
i133 <- read_delim("all_ind133_modifier.geno", delim = "\t", col_names = T)
i134 <- read_delim("all_ind134_modifier.geno", delim = "\t", col_names = T)
i135 <- read_delim("all_ind135_modifier.geno", delim = "\t", col_names = T)
i136 <- read_delim("all_ind136_modifier.geno", delim = "\t", col_names = T)
i137 <- read_delim("all_ind137_modifier.geno", delim = "\t", col_names = T)
i138 <- read_delim("all_ind138_modifier.geno", delim = "\t", col_names = T)
i139 <- read_delim("all_ind139_modifier.geno", delim = "\t", col_names = T)
i140 <- read_delim("all_ind140_modifier.geno", delim = "\t", col_names = T)
i141 <- read_delim("all_ind141_modifier.geno", delim = "\t", col_names = T)
i142 <- read_delim("all_ind142_modifier.geno", delim = "\t", col_names = T)
i143 <- read_delim("all_ind143_modifier.geno", delim = "\t", col_names = T)
i144 <- read_delim("all_ind144_modifier.geno", delim = "\t", col_names = T)
i145 <- read_delim("all_ind145_modifier.geno", delim = "\t", col_names = T)
i146 <- read_delim("all_ind146_modifier.geno", delim = "\t", col_names = T)
i147 <- read_delim("all_ind147_modifier.geno", delim = "\t", col_names = T)
i148 <- read_delim("all_ind148_modifier.geno", delim = "\t", col_names = T)
i149 <- read_delim("all_ind149_modifier.geno", delim = "\t", col_names = T)
i150 <- read_delim("all_ind150_modifier.geno", delim = "\t", col_names = T)
i151 <- read_delim("all_ind151_modifier.geno", delim = "\t", col_names = T)
i152 <- read_delim("all_ind152_modifier.geno", delim = "\t", col_names = T)
i153 <- read_delim("all_ind153_modifier.geno", delim = "\t", col_names = T)
i154 <- read_delim("all_ind154_modifier.geno", delim = "\t", col_names = T)
i155 <- read_delim("all_ind155_modifier.geno", delim = "\t", col_names = T)
i156 <- read_delim("all_ind156_modifier.geno", delim = "\t", col_names = T)
i157 <- read_delim("all_ind157_modifier.geno", delim = "\t", col_names = T)
i158 <- read_delim("all_ind158_modifier.geno", delim = "\t", col_names = T)
i159 <- read_delim("all_ind159_modifier.geno", delim = "\t", col_names = T)
i160 <- read_delim("all_ind160_modifier.geno", delim = "\t", col_names = T)
i161 <- read_delim("all_ind161_modifier.geno", delim = "\t", col_names = T)
i162 <- read_delim("all_ind162_modifier.geno", delim = "\t", col_names = T)
i163 <- read_delim("all_ind163_modifier.geno", delim = "\t", col_names = T)
i164 <- read_delim("all_ind164_modifier.geno", delim = "\t", col_names = T)
i165 <- read_delim("all_ind165_modifier.geno", delim = "\t", col_names = T)
i166 <- read_delim("all_ind166_modifier.geno", delim = "\t", col_names = T)


nc_load<- cbind(i1,i10,i100,i101,i102,i103,i104,i105,i106, i107,i108, i109, i11, i110, i111,i112,
                i113,i114,i115,i116,i117,i118,i119,i12,i120,i121,i122,i123,i124,i125,i126,i127,i128,
                i129,i13,i130,i131,i132,i133,i134,i135,i136,i137,i138,i139,i14,i140,i141,i142,i143,
                i144,i145,i146,i147,i148,i149,i15,i150,i151,i152,i153,i154,i155,i156,i157,i158,i159,
                i16,i160, i161,i162,i163,i164,i165,i166,i17,i18,i19,i2,i20,i21,i22,i23,i24,i25,i26,
                i27,i28,i29,i3,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i4,i40,i41,i42,i43,i44,i45,
                i46,i47,i48,i49,i5,i50,i51,i52,i53,i54,i55,i56,i57,i58,i59,i6,i60,i61,i62,i63,i64,
                i65,i66,i67,i68,i69,i7,i70,i71,i72,i73,i74,i75,i76,i77,i78,i79,i8,i80,i81,i82,i83,
                i84,i85,i86,i87,i88,i89,i9,i90,i91,i92,i93,i94,i95,i96,i97,i98,i99)

# head(nc_load[-c(1:236),])



colnames(nc_load)<- nc_load[237,]
nc_load<- nc_load[-c(1:236),] 

### Non-coding - homozygous

F370 	<- nc_load %>% filter(F370 == "1/1") %>% count()
F372	<- nc_load %>% filter(F372 == "1/1") %>% count()
F373	<- nc_load %>% filter(F373 == "1/1") %>% count()
F374	<- nc_load %>% filter(F374 == "1/1") %>% count()
F375	<- nc_load %>% filter(F375 == "1/1") %>% count()
F376	<- nc_load %>% filter(F376 == "1/1") %>% count()
F377	<- nc_load %>% filter(F377 == "1/1") %>% count()
F378	<- nc_load %>% filter(F378 == "1/1") %>% count()
F379	<- nc_load %>% filter(F379 == "1/1") %>% count()
F380	<- nc_load %>% filter(F380 == "1/1") %>% count()
F381	<- nc_load %>% filter(F381 == "1/1") %>% count()
F382	<- nc_load %>% filter(F382 == "1/1") %>% count()
F384	<- nc_load %>% filter(F384 == "1/1") %>% count()
F385	<- nc_load %>% filter(F385 == "1/1") %>% count()
F386	<- nc_load %>% filter(F386 == "1/1") %>% count()
F388	<- nc_load %>% filter(F388 == "1/1") %>% count()
F389	<- nc_load %>% filter(F389 == "1/1") %>% count()
F390	<- nc_load %>% filter(F390 == "1/1") %>% count()
F391	<- nc_load %>% filter(F391 == "1/1") %>% count()
F392	<- nc_load %>% filter(F392 == "1/1") %>% count()
F395	<- nc_load %>% filter(F395 == "1/1") %>% count()
F396	<- nc_load %>% filter(F396 == "1/1") %>% count()
F397	<- nc_load %>% filter(F397 == "1/1") %>% count()
F398	<- nc_load %>% filter(F398 == "1/1") %>% count()
F399	<- nc_load %>% filter(F399 == "1/1") %>% count()
F400	<- nc_load %>% filter(F400 == "1/1") %>% count()
F401	<- nc_load %>% filter(F401 == "1/1") %>% count()
F402	<- nc_load %>% filter(F402 == "1/1") %>% count()
F403	<- nc_load %>% filter(F403 == "1/1") %>% count()
F404	<- nc_load %>% filter(F404 == "1/1") %>% count()
F405	<- nc_load %>% filter(F405 == "1/1") %>% count()
F406	<- nc_load %>% filter(F406 == "1/1") %>% count()
F407	<- nc_load %>% filter(F407 == "1/1") %>% count()
F408	<- nc_load %>% filter(F408 == "1/1") %>% count()
F409	<- nc_load %>% filter(F409 == "1/1") %>% count()
F410	<- nc_load %>% filter(F410 == "1/1") %>% count()



F411	<- nc_load %>% filter(F411 == "1/1") %>% count()
F412	<- nc_load %>% filter(F412 == "1/1") %>% count()
F413	<- nc_load %>% filter(F413 == "1/1") %>% count()
F414	<- nc_load %>% filter(F414 == "1/1") %>% count()
F415	<- nc_load %>% filter(F415 == "1/1") %>% count()
F416	<- nc_load %>% filter(F416 == "1/1") %>% count()
F417	<- nc_load %>% filter(F417 == "1/1") %>% count()
F419	<- nc_load %>% filter(F419 == "1/1") %>% count()
F420	<- nc_load %>% filter(F420 == "1/1") %>% count()
F421	<- nc_load %>% filter(F421 == "1/1") %>% count()
F422	<- nc_load %>% filter(F422 == "1/1") %>% count()
F424	<- nc_load %>% filter(F424 == "1/1") %>% count()
F425	<- nc_load %>% filter(F425 == "1/1") %>% count()
F427	<- nc_load %>% filter(F427 == "1/1") %>% count()
F428	<- nc_load %>% filter(F428 == "1/1") %>% count()
F429	<- nc_load %>% filter(F429 == "1/1") %>% count()
F431	<- nc_load %>% filter(F431 == "1/1") %>% count()
F434	<- nc_load %>% filter(F434 == "1/1") %>% count()
F437	<- nc_load %>% filter(F437 == "1/1") %>% count()
F438	<- nc_load %>% filter(F438 == "1/1") %>% count()
F441	<- nc_load %>% filter(F441 == "1/1") %>% count()
F442	<- nc_load %>% filter(F442 == "1/1") %>% count()
F443	<- nc_load %>% filter(F443 == "1/1") %>% count()



F445	<- nc_load %>% filter(F445 == "1/1") %>% count()
F450	<- nc_load %>% filter(F450 == "1/1") %>% count()
F451	<- nc_load %>% filter(F451 == "1/1") %>% count()
F457	<- nc_load %>% filter(F457 == "1/1") %>% count()
F458	<- nc_load %>% filter(F458 == "1/1") %>% count()
F461	<- nc_load %>% filter(F461 == "1/1") %>% count()
F463	<- nc_load %>% filter(F463 == "1/1") %>% count()
F465	<- nc_load %>% filter(F465 == "1/1") %>% count()
F466	<- nc_load %>% filter(F466 == "1/1") %>% count()
F473	<- nc_load %>% filter(F473 == "1/1") %>% count()
F474	<- nc_load %>% filter(F474 == "1/1") %>% count()
F476	<- nc_load %>% filter(F476 == "1/1") %>% count()
F477	<- nc_load %>% filter(F477 == "1/1") %>% count()
F479	<- nc_load %>% filter(F479 == "1/1") %>% count()
F481	<- nc_load %>% filter(F481 == "1/1") %>% count()
F482	<- nc_load %>% filter(F482 == "1/1") %>% count()
F483	<- nc_load %>% filter(F483 == "1/1") %>% count()
F484	<- nc_load %>% filter(F484 == "1/1") %>% count()
F487	<- nc_load %>% filter(F487 == "1/1") %>% count()
F488	<- nc_load %>% filter(F488 == "1/1") %>% count()
F489	<- nc_load %>% filter(F489 == "1/1") %>% count()
F491	<- nc_load %>% filter(F491 == "1/1") %>% count()
F492	<- nc_load %>% filter(F492 == "1/1") %>% count()



F493	<- nc_load %>% filter(F493 == "1/1") %>% count()
F494	<- nc_load %>% filter(F494 == "1/1") %>% count()
F495	<- nc_load %>% filter(F495 == "1/1") %>% count()
F497	<- nc_load %>% filter(F497 == "1/1") %>% count()
F499	<- nc_load %>% filter(F499 == "1/1") %>% count()
F501	<- nc_load %>% filter(F501 == "1/1") %>% count()
F502	<- nc_load %>% filter(F502 == "1/1") %>% count()
F504	<- nc_load %>% filter(F504 == "1/1") %>% count()
F505	<- nc_load %>% filter(F505 == "1/1") %>% count()
F506	<- nc_load %>% filter(F506 == "1/1") %>% count()
F507	<- nc_load %>% filter(F507 == "1/1") %>% count()
F508	<- nc_load %>% filter(F508 == "1/1") %>% count()
F509	<- nc_load %>% filter(F509 == "1/1") %>% count()
F510	<- nc_load %>% filter(F510 == "1/1") %>% count()
F511	<- nc_load %>% filter(F511 == "1/1") %>% count()
F512	<- nc_load %>% filter(F512 == "1/1") %>% count()




F513	<- nc_load %>% filter(F513 == "1/1") %>% count()
F515	<- nc_load %>% filter(F515 == "1/1") %>% count()
F516	<- nc_load %>% filter(F516 == "1/1") %>% count()
F518	<- nc_load %>% filter(F518 == "1/1") %>% count()
F519	<- nc_load %>% filter(F519 == "1/1") %>% count()
F520	<- nc_load %>% filter(F520 == "1/1") %>% count()
F521	<- nc_load %>% filter(F521 == "1/1") %>% count()
F522	<- nc_load %>% filter(F522 == "1/1") %>% count()
F523	<- nc_load %>% filter(F523 == "1/1") %>% count()
F525	<- nc_load %>% filter(F525 == "1/1") %>% count()
F526	<- nc_load %>% filter(F526 == "1/1") %>% count()
F527	<- nc_load %>% filter(F527 == "1/1") %>% count()
F528	<- nc_load %>% filter(F528 == "1/1") %>% count()
F529	<- nc_load %>% filter(F529 == "1/1") %>% count()
F530	<- nc_load %>% filter(F530 == "1/1") %>% count()

F531	<- nc_load %>% filter(F531 == "1/1") %>% count()
F532	<- nc_load %>% filter(F532 == "1/1") %>% count()
F534	<- nc_load %>% filter(F534 == "1/1") %>% count()
F539	<- nc_load %>% filter(F539 == "1/1") %>% count()
F540	<- nc_load %>% filter(F540 == "1/1") %>% count()
F541	<- nc_load %>% filter(F541 == "1/1") %>% count()
F542	<- nc_load %>% filter(F542 == "1/1") %>% count()
F543	<- nc_load %>% filter(F543 == "1/1") %>% count()
F544	<- nc_load %>% filter(F544 == "1/1") %>% count()
F545	<- nc_load %>% filter(F545 == "1/1") %>% count()
F546	<- nc_load %>% filter(F546 == "1/1") %>% count()
F549	<- nc_load %>% filter(F549 == "1/1") %>% count()
F556	<- nc_load %>% filter(F556 == "1/1") %>% count()
F557	<- nc_load %>% filter(F557 == "1/1") %>% count()
F558	<- nc_load %>% filter(F558 == "1/1") %>% count()
F559	<- nc_load %>% filter(F559 == "1/1") %>% count()



F560	<- nc_load %>% filter(F560 == "1/1") %>% count()
F563	<- nc_load %>% filter(F563 == "1/1") %>% count()
F565	<- nc_load %>% filter(F565 == "1/1") %>% count()
F567	<- nc_load %>% filter(F567 == "1/1") %>% count()
F568	<- nc_load %>% filter(F568 == "1/1") %>% count()
F569	<- nc_load %>% filter(F569 == "1/1") %>% count()
F570	<- nc_load %>% filter(F570 == "1/1") %>% count()
F574	<- nc_load %>% filter(F574 == "1/1") %>% count()
F579	<- nc_load %>% filter(F579 == "1/1") %>% count()
F580	<- nc_load %>% filter(F580 == "1/1") %>% count()
F581	<- nc_load %>% filter(F581 == "1/1") %>% count()
F583	<- nc_load %>% filter(F583 == "1/1") %>% count()
F587	<- nc_load %>% filter(F587 == "1/1") %>% count()
F588	<- nc_load %>% filter(F588 == "1/1") %>% count()
F593	<- nc_load %>% filter(F593 == "1/1") %>% count()
F602	<- nc_load %>% filter(F602 == "1/1") %>% count()
F603	<- nc_load %>% filter(F603 == "1/1") %>% count()
F604	<- nc_load %>% filter(F604 == "1/1") %>% count()
F605	<- nc_load %>% filter(F605 == "1/1") %>% count()
F606	<- nc_load %>% filter(F606 == "1/1") %>% count()
F608	<- nc_load %>% filter(F608 == "1/1") %>% count()
F610	<- nc_load %>% filter(F610 == "1/1") %>% count()



F611	<- nc_load %>% filter(F611 == "1/1") %>% count()
F612	<- nc_load %>% filter(F612 == "1/1") %>% count()
F618	<- nc_load %>% filter(F618 == "1/1") %>% count()
F619	<- nc_load %>% filter(F619 == "1/1") %>% count()
F623	<- nc_load %>% filter(F623 == "1/1") %>% count()
F628	<- nc_load %>% filter(F628 == "1/1") %>% count()
F629	<- nc_load %>% filter(F629 == "1/1") %>% count()
F630	<- nc_load %>% filter(F630 == "1/1") %>% count()
F631	<- nc_load %>% filter(F631 == "1/1") %>% count()
F632	<- nc_load %>% filter(F632 == "1/1") %>% count()
F634	<- nc_load %>% filter(F634 == "1/1") %>% count()
F635	<- nc_load %>% filter(F635 == "1/1") %>% count()
F637	<- nc_load %>% filter(F637 == "1/1") %>% count()
F640	<- nc_load %>% filter(F640 == "1/1") %>% count()
F641	<- nc_load %>% filter(F641 == "1/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"



nc_hm_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                        ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                        ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                        ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                        ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                        ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                        ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                        ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                        ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                        ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                        ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                        ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                        ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                        ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                        ,F631,F632,F634,F635,F637,F640,F641)

nc_hm_load<- melt(nc_hm_load)
colnames(nc_hm_load)<- c("ID", "NC_HM_Alleles")


nc_hm_load<- nc_hm_load %>% mutate(NC_HM_LOAD = NC_HM_Alleles/(dim(nc_load)[1]))



### Non-coding - heterozygous

F370 	<- nc_load %>% filter(F370 == "0/1") %>% count()
F372	<- nc_load %>% filter(F372 == "0/1") %>% count()
F373	<- nc_load %>% filter(F373 == "0/1") %>% count()
F374	<- nc_load %>% filter(F374 == "0/1") %>% count()
F375	<- nc_load %>% filter(F375 == "0/1") %>% count()
F376	<- nc_load %>% filter(F376 == "0/1") %>% count()
F377	<- nc_load %>% filter(F377 == "0/1") %>% count()
F378	<- nc_load %>% filter(F378 == "0/1") %>% count()
F379	<- nc_load %>% filter(F379 == "0/1") %>% count()
F380	<- nc_load %>% filter(F380 == "0/1") %>% count()
F381	<- nc_load %>% filter(F381 == "0/1") %>% count()
F382	<- nc_load %>% filter(F382 == "0/1") %>% count()
F384	<- nc_load %>% filter(F384 == "0/1") %>% count()
F385	<- nc_load %>% filter(F385 == "0/1") %>% count()
F386	<- nc_load %>% filter(F386 == "0/1") %>% count()
F388	<- nc_load %>% filter(F388 == "0/1") %>% count()
F389	<- nc_load %>% filter(F389 == "0/1") %>% count()
F390	<- nc_load %>% filter(F390 == "0/1") %>% count()
F391	<- nc_load %>% filter(F391 == "0/1") %>% count()
F392	<- nc_load %>% filter(F392 == "0/1") %>% count()
F395	<- nc_load %>% filter(F395 == "0/1") %>% count()
F396	<- nc_load %>% filter(F396 == "0/1") %>% count()
F397	<- nc_load %>% filter(F397 == "0/1") %>% count()
F398	<- nc_load %>% filter(F398 == "0/1") %>% count()
F399	<- nc_load %>% filter(F399 == "0/1") %>% count()
F400	<- nc_load %>% filter(F400 == "0/1") %>% count()
F401	<- nc_load %>% filter(F401 == "0/1") %>% count()
F402	<- nc_load %>% filter(F402 == "0/1") %>% count()
F403	<- nc_load %>% filter(F403 == "0/1") %>% count()
F404	<- nc_load %>% filter(F404 == "0/1") %>% count()
F405	<- nc_load %>% filter(F405 == "0/1") %>% count()
F406	<- nc_load %>% filter(F406 == "0/1") %>% count()
F407	<- nc_load %>% filter(F407 == "0/1") %>% count()
F408	<- nc_load %>% filter(F408 == "0/1") %>% count()
F409	<- nc_load %>% filter(F409 == "0/1") %>% count()
F410	<- nc_load %>% filter(F410 == "0/1") %>% count()



F411	<- nc_load %>% filter(F411 == "0/1") %>% count()
F412	<- nc_load %>% filter(F412 == "0/1") %>% count()
F413	<- nc_load %>% filter(F413 == "0/1") %>% count()
F414	<- nc_load %>% filter(F414 == "0/1") %>% count()
F415	<- nc_load %>% filter(F415 == "0/1") %>% count()
F416	<- nc_load %>% filter(F416 == "0/1") %>% count()
F417	<- nc_load %>% filter(F417 == "0/1") %>% count()
F419	<- nc_load %>% filter(F419 == "0/1") %>% count()
F420	<- nc_load %>% filter(F420 == "0/1") %>% count()
F421	<- nc_load %>% filter(F421 == "0/1") %>% count()
F422	<- nc_load %>% filter(F422 == "0/1") %>% count()
F424	<- nc_load %>% filter(F424 == "0/1") %>% count()
F425	<- nc_load %>% filter(F425 == "0/1") %>% count()
F427	<- nc_load %>% filter(F427 == "0/1") %>% count()
F428	<- nc_load %>% filter(F428 == "0/1") %>% count()
F429	<- nc_load %>% filter(F429 == "0/1") %>% count()
F431	<- nc_load %>% filter(F431 == "0/1") %>% count()
F434	<- nc_load %>% filter(F434 == "0/1") %>% count()
F437	<- nc_load %>% filter(F437 == "0/1") %>% count()
F438	<- nc_load %>% filter(F438 == "0/1") %>% count()
F441	<- nc_load %>% filter(F441 == "0/1") %>% count()
F442	<- nc_load %>% filter(F442 == "0/1") %>% count()
F443	<- nc_load %>% filter(F443 == "0/1") %>% count()



F445	<- nc_load %>% filter(F445 == "0/1") %>% count()
F450	<- nc_load %>% filter(F450 == "0/1") %>% count()
F451	<- nc_load %>% filter(F451 == "0/1") %>% count()
F457	<- nc_load %>% filter(F457 == "0/1") %>% count()
F458	<- nc_load %>% filter(F458 == "0/1") %>% count()
F461	<- nc_load %>% filter(F461 == "0/1") %>% count()
F463	<- nc_load %>% filter(F463 == "0/1") %>% count()
F465	<- nc_load %>% filter(F465 == "0/1") %>% count()
F466	<- nc_load %>% filter(F466 == "0/1") %>% count()
F473	<- nc_load %>% filter(F473 == "0/1") %>% count()
F474	<- nc_load %>% filter(F474 == "0/1") %>% count()
F476	<- nc_load %>% filter(F476 == "0/1") %>% count()
F477	<- nc_load %>% filter(F477 == "0/1") %>% count()
F479	<- nc_load %>% filter(F479 == "0/1") %>% count()
F481	<- nc_load %>% filter(F481 == "0/1") %>% count()
F482	<- nc_load %>% filter(F482 == "0/1") %>% count()
F483	<- nc_load %>% filter(F483 == "0/1") %>% count()
F484	<- nc_load %>% filter(F484 == "0/1") %>% count()
F487	<- nc_load %>% filter(F487 == "0/1") %>% count()
F488	<- nc_load %>% filter(F488 == "0/1") %>% count()
F489	<- nc_load %>% filter(F489 == "0/1") %>% count()
F491	<- nc_load %>% filter(F491 == "0/1") %>% count()
F492	<- nc_load %>% filter(F492 == "0/1") %>% count()



F493	<- nc_load %>% filter(F493 == "0/1") %>% count()
F494	<- nc_load %>% filter(F494 == "0/1") %>% count()
F495	<- nc_load %>% filter(F495 == "0/1") %>% count()
F497	<- nc_load %>% filter(F497 == "0/1") %>% count()
F499	<- nc_load %>% filter(F499 == "0/1") %>% count()
F501	<- nc_load %>% filter(F501 == "0/1") %>% count()
F502	<- nc_load %>% filter(F502 == "0/1") %>% count()
F504	<- nc_load %>% filter(F504 == "0/1") %>% count()
F505	<- nc_load %>% filter(F505 == "0/1") %>% count()
F506	<- nc_load %>% filter(F506 == "0/1") %>% count()
F507	<- nc_load %>% filter(F507 == "0/1") %>% count()
F508	<- nc_load %>% filter(F508 == "0/1") %>% count()
F509	<- nc_load %>% filter(F509 == "0/1") %>% count()
F510	<- nc_load %>% filter(F510 == "0/1") %>% count()
F511	<- nc_load %>% filter(F511 == "0/1") %>% count()
F512	<- nc_load %>% filter(F512 == "0/1") %>% count()



F513	<- nc_load %>% filter(F513 == "0/1") %>% count()
F515	<- nc_load %>% filter(F515 == "0/1") %>% count()
F516	<- nc_load %>% filter(F516 == "0/1") %>% count()
F518	<- nc_load %>% filter(F518 == "0/1") %>% count()
F519	<- nc_load %>% filter(F519 == "0/1") %>% count()
F520	<- nc_load %>% filter(F520 == "0/1") %>% count()
F521	<- nc_load %>% filter(F521 == "0/1") %>% count()
F522	<- nc_load %>% filter(F522 == "0/1") %>% count()
F523	<- nc_load %>% filter(F523 == "0/1") %>% count()
F525	<- nc_load %>% filter(F525 == "0/1") %>% count()
F526	<- nc_load %>% filter(F526 == "0/1") %>% count()
F527	<- nc_load %>% filter(F527 == "0/1") %>% count()
F528	<- nc_load %>% filter(F528 == "0/1") %>% count()
F529	<- nc_load %>% filter(F529 == "0/1") %>% count()
F530	<- nc_load %>% filter(F530 == "0/1") %>% count()


F531	<- nc_load %>% filter(F531 == "0/1") %>% count()
F532	<- nc_load %>% filter(F532 == "0/1") %>% count()
F534	<- nc_load %>% filter(F534 == "0/1") %>% count()
F539	<- nc_load %>% filter(F539 == "0/1") %>% count()
F540	<- nc_load %>% filter(F540 == "0/1") %>% count()
F541	<- nc_load %>% filter(F541 == "0/1") %>% count()
F542	<- nc_load %>% filter(F542 == "0/1") %>% count()
F543	<- nc_load %>% filter(F543 == "0/1") %>% count()
F544	<- nc_load %>% filter(F544 == "0/1") %>% count()
F545	<- nc_load %>% filter(F545 == "0/1") %>% count()
F546	<- nc_load %>% filter(F546 == "0/1") %>% count()
F549	<- nc_load %>% filter(F549 == "0/1") %>% count()
F556	<- nc_load %>% filter(F556 == "0/1") %>% count()
F557	<- nc_load %>% filter(F557 == "0/1") %>% count()
F558	<- nc_load %>% filter(F558 == "0/1") %>% count()
F559	<- nc_load %>% filter(F559 == "0/1") %>% count()



F560	<- nc_load %>% filter(F560 == "0/1") %>% count()
F563	<- nc_load %>% filter(F563 == "0/1") %>% count()
F565	<- nc_load %>% filter(F565 == "0/1") %>% count()
F567	<- nc_load %>% filter(F567 == "0/1") %>% count()
F568	<- nc_load %>% filter(F568 == "0/1") %>% count()
F569	<- nc_load %>% filter(F569 == "0/1") %>% count()
F570	<- nc_load %>% filter(F570 == "0/1") %>% count()
F574	<- nc_load %>% filter(F574 == "0/1") %>% count()
F579	<- nc_load %>% filter(F579 == "0/1") %>% count()
F580	<- nc_load %>% filter(F580 == "0/1") %>% count()
F581	<- nc_load %>% filter(F581 == "0/1") %>% count()
F583	<- nc_load %>% filter(F583 == "0/1") %>% count()
F587	<- nc_load %>% filter(F587 == "0/1") %>% count()
F588	<- nc_load %>% filter(F588 == "0/1") %>% count()
F593	<- nc_load %>% filter(F593 == "0/1") %>% count()
F602	<- nc_load %>% filter(F602 == "0/1") %>% count()
F603	<- nc_load %>% filter(F603 == "0/1") %>% count()
F604	<- nc_load %>% filter(F604 == "0/1") %>% count()
F605	<- nc_load %>% filter(F605 == "0/1") %>% count()
F606	<- nc_load %>% filter(F606 == "0/1") %>% count()
F608	<- nc_load %>% filter(F608 == "0/1") %>% count()
F610	<- nc_load %>% filter(F610 == "0/1") %>% count()



F611	<- nc_load %>% filter(F611 == "0/1") %>% count()
F612	<- nc_load %>% filter(F612 == "0/1") %>% count()
F618	<- nc_load %>% filter(F618 == "0/1") %>% count()
F619	<- nc_load %>% filter(F619 == "0/1") %>% count()
F623	<- nc_load %>% filter(F623 == "0/1") %>% count()
F628	<- nc_load %>% filter(F628 == "0/1") %>% count()
F629	<- nc_load %>% filter(F629 == "0/1") %>% count()
F630	<- nc_load %>% filter(F630 == "0/1") %>% count()
F631	<- nc_load %>% filter(F631 == "0/1") %>% count()
F632	<- nc_load %>% filter(F632 == "0/1") %>% count()
F634	<- nc_load %>% filter(F634 == "0/1") %>% count()
F635	<- nc_load %>% filter(F635 == "0/1") %>% count()
F637	<- nc_load %>% filter(F637 == "0/1") %>% count()
F640	<- nc_load %>% filter(F640 == "0/1") %>% count()
F641	<- nc_load %>% filter(F641 == "0/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


nc_het_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                         ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                         ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                         ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                         ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                         ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                         ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                         ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                         ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                         ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                         ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                         ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                         ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                         ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                         ,F631,F632,F634,F635,F637,F640,F641)

nc_het_load<- melt(nc_het_load)
colnames(nc_het_load)<- c("ID", "NC_HT_Alleles")

nc_het_load<- nc_het_load %>% mutate(NC_HT_LOAD = NC_HT_Alleles/(dim(nc_load)[1]))
nc<- left_join(nc_hm_load, nc_het_load)



#### Low impact variants ################################################################################################

i1 <- read_delim("all_ind1_low.geno", delim = "\t", col_names = T)
i2 <- read_delim("all_ind2_low.geno", delim = "\t", col_names = T)
i3 <- read_delim("all_ind3_low.geno", delim = "\t", col_names = T)
i4 <- read_delim("all_ind4_low.geno", delim = "\t", col_names = T)
i5 <- read_delim("all_ind5_low.geno", delim = "\t", col_names = T)
i6 <- read_delim("all_ind6_low.geno", delim = "\t", col_names = T)
i7 <- read_delim("all_ind7_low.geno", delim = "\t", col_names = T)
i8 <- read_delim("all_ind8_low.geno", delim = "\t", col_names = T)
i9 <- read_delim("all_ind9_low.geno", delim = "\t", col_names = T)
i10 <- read_delim("all_ind10_low.geno", delim = "\t", col_names = T)
i11 <- read_delim("all_ind11_low.geno", delim = "\t", col_names = T)
i12 <- read_delim("all_ind12_low.geno", delim = "\t", col_names = T)
i13 <- read_delim("all_ind13_low.geno", delim = "\t", col_names = T)
i14 <- read_delim("all_ind14_low.geno", delim = "\t", col_names = T)
i15 <- read_delim("all_ind15_low.geno", delim = "\t", col_names = T)
i16 <- read_delim("all_ind16_low.geno", delim = "\t", col_names = T)
i17 <- read_delim("all_ind17_low.geno", delim = "\t", col_names = T)
i18 <- read_delim("all_ind18_low.geno", delim = "\t", col_names = T)
i19 <- read_delim("all_ind19_low.geno", delim = "\t", col_names = T)
i20 <- read_delim("all_ind20_low.geno", delim = "\t", col_names = T)


i21 <- read_delim("all_ind21_low.geno", delim = "\t", col_names = T)
i22 <- read_delim("all_ind22_low.geno", delim = "\t", col_names = T)
i23 <- read_delim("all_ind23_low.geno", delim = "\t", col_names = T)
i24 <- read_delim("all_ind24_low.geno", delim = "\t", col_names = T)
i25 <- read_delim("all_ind25_low.geno", delim = "\t", col_names = T)
i26 <- read_delim("all_ind26_low.geno", delim = "\t", col_names = T)
i27 <- read_delim("all_ind27_low.geno", delim = "\t", col_names = T)
i28 <- read_delim("all_ind28_low.geno", delim = "\t", col_names = T)
i29 <- read_delim("all_ind29_low.geno", delim = "\t", col_names = T)
i30 <- read_delim("all_ind30_low.geno", delim = "\t", col_names = T)
i31 <- read_delim("all_ind31_low.geno", delim = "\t", col_names = T)
i32 <- read_delim("all_ind32_low.geno", delim = "\t", col_names = T)
i33 <- read_delim("all_ind33_low.geno", delim = "\t", col_names = T)
i34 <- read_delim("all_ind34_low.geno", delim = "\t", col_names = T)
i35 <- read_delim("all_ind35_low.geno", delim = "\t", col_names = T)
i36 <- read_delim("all_ind36_low.geno", delim = "\t", col_names = T)
i37 <- read_delim("all_ind37_low.geno", delim = "\t", col_names = T)
i38 <- read_delim("all_ind38_low.geno", delim = "\t", col_names = T)
i39 <- read_delim("all_ind39_low.geno", delim = "\t", col_names = T)
i40 <- read_delim("all_ind40_low.geno", delim = "\t", col_names = T)
i41 <- read_delim("all_ind41_low.geno", delim = "\t", col_names = T)
i42 <- read_delim("all_ind42_low.geno", delim = "\t", col_names = T)
i43 <- read_delim("all_ind43_low.geno", delim = "\t", col_names = T)
i44 <- read_delim("all_ind44_low.geno", delim = "\t", col_names = T)
i45 <- read_delim("all_ind45_low.geno", delim = "\t", col_names = T)
i46 <- read_delim("all_ind46_low.geno", delim = "\t", col_names = T)
i47 <- read_delim("all_ind47_low.geno", delim = "\t", col_names = T)
i48 <- read_delim("all_ind48_low.geno", delim = "\t", col_names = T)
i49 <- read_delim("all_ind49_low.geno", delim = "\t", col_names = T)


i50 <- read_delim("all_ind50_low.geno", delim = "\t", col_names = T)
i51 <- read_delim("all_ind51_low.geno", delim = "\t", col_names = T)
i52 <- read_delim("all_ind52_low.geno", delim = "\t", col_names = T)
i53 <- read_delim("all_ind53_low.geno", delim = "\t", col_names = T)
i54 <- read_delim("all_ind54_low.geno", delim = "\t", col_names = T)
i55 <- read_delim("all_ind55_low.geno", delim = "\t", col_names = T)
i56 <- read_delim("all_ind56_low.geno", delim = "\t", col_names = T)
i57 <- read_delim("all_ind57_low.geno", delim = "\t", col_names = T)
i58 <- read_delim("all_ind58_low.geno", delim = "\t", col_names = T)
i59 <- read_delim("all_ind59_low.geno", delim = "\t", col_names = T)
i60 <- read_delim("all_ind60_low.geno", delim = "\t", col_names = T)
i61 <- read_delim("all_ind61_low.geno", delim = "\t", col_names = T)
i62 <- read_delim("all_ind62_low.geno", delim = "\t", col_names = T)
i63 <- read_delim("all_ind63_low.geno", delim = "\t", col_names = T)
i64 <- read_delim("all_ind64_low.geno", delim = "\t", col_names = T)
i65 <- read_delim("all_ind65_low.geno", delim = "\t", col_names = T)
i66 <- read_delim("all_ind66_low.geno", delim = "\t", col_names = T)
i67 <- read_delim("all_ind67_low.geno", delim = "\t", col_names = T)
i68 <- read_delim("all_ind68_low.geno", delim = "\t", col_names = T)
i69 <- read_delim("all_ind69_low.geno", delim = "\t", col_names = T)
i70 <- read_delim("all_ind70_low.geno", delim = "\t", col_names = T)
i71 <- read_delim("all_ind71_low.geno", delim = "\t", col_names = T)
i72 <- read_delim("all_ind72_low.geno", delim = "\t", col_names = T)
i73 <- read_delim("all_ind73_low.geno", delim = "\t", col_names = T)
i74 <- read_delim("all_ind74_low.geno", delim = "\t", col_names = T)
i75 <- read_delim("all_ind75_low.geno", delim = "\t", col_names = T)
i76 <- read_delim("all_ind76_low.geno", delim = "\t", col_names = T)
i77 <- read_delim("all_ind77_low.geno", delim = "\t", col_names = T)
i78 <- read_delim("all_ind78_low.geno", delim = "\t", col_names = T)
i79 <- read_delim("all_ind79_low.geno", delim = "\t", col_names = T)
i80 <- read_delim("all_ind80_low.geno", delim = "\t", col_names = T)
i81 <- read_delim("all_ind81_low.geno", delim = "\t", col_names = T)
i82 <- read_delim("all_ind82_low.geno", delim = "\t", col_names = T)
i83 <- read_delim("all_ind83_low.geno", delim = "\t", col_names = T)
i84 <- read_delim("all_ind84_low.geno", delim = "\t", col_names = T)
i85 <- read_delim("all_ind85_low.geno", delim = "\t", col_names = T)
i86 <- read_delim("all_ind86_low.geno", delim = "\t", col_names = T)
i87 <- read_delim("all_ind87_low.geno", delim = "\t", col_names = T)
i88 <- read_delim("all_ind88_low.geno", delim = "\t", col_names = T)
i89 <- read_delim("all_ind89_low.geno", delim = "\t", col_names = T)
i90 <- read_delim("all_ind90_low.geno", delim = "\t", col_names = T)
i91 <- read_delim("all_ind91_low.geno", delim = "\t", col_names = T)
i92 <- read_delim("all_ind92_low.geno", delim = "\t", col_names = T)
i93 <- read_delim("all_ind93_low.geno", delim = "\t", col_names = T)
i94 <- read_delim("all_ind94_low.geno", delim = "\t", col_names = T)
i95 <- read_delim("all_ind95_low.geno", delim = "\t", col_names = T)
i96 <- read_delim("all_ind96_low.geno", delim = "\t", col_names = T)
i97 <- read_delim("all_ind97_low.geno", delim = "\t", col_names = T)
i98 <- read_delim("all_ind98_low.geno", delim = "\t", col_names = T)
i99 <- read_delim("all_ind99_low.geno", delim = "\t", col_names = T)


i100 <- read_delim("all_ind100_low.geno", delim = "\t", col_names = T)
i101 <- read_delim("all_ind101_low.geno", delim = "\t", col_names = T)
i102 <- read_delim("all_ind102_low.geno", delim = "\t", col_names = T)
i103 <- read_delim("all_ind103_low.geno", delim = "\t", col_names = T)
i104 <- read_delim("all_ind104_low.geno", delim = "\t", col_names = T)
i105 <- read_delim("all_ind105_low.geno", delim = "\t", col_names = T)
i106 <- read_delim("all_ind106_low.geno", delim = "\t", col_names = T)
i107 <- read_delim("all_ind107_low.geno", delim = "\t", col_names = T)
i108 <- read_delim("all_ind108_low.geno", delim = "\t", col_names = T)
i109 <- read_delim("all_ind109_low.geno", delim = "\t", col_names = T)
i110 <- read_delim("all_ind110_low.geno", delim = "\t", col_names = T)
i111 <- read_delim("all_ind111_low.geno", delim = "\t", col_names = T)
i112 <- read_delim("all_ind112_low.geno", delim = "\t", col_names = T)
i113 <- read_delim("all_ind113_low.geno", delim = "\t", col_names = T)
i114 <- read_delim("all_ind114_low.geno", delim = "\t", col_names = T)
i115 <- read_delim("all_ind115_low.geno", delim = "\t", col_names = T)
i116 <- read_delim("all_ind116_low.geno", delim = "\t", col_names = T)
i117 <- read_delim("all_ind117_low.geno", delim = "\t", col_names = T)
i118 <- read_delim("all_ind118_low.geno", delim = "\t", col_names = T)
i119 <- read_delim("all_ind119_low.geno", delim = "\t", col_names = T)
i120 <- read_delim("all_ind120_low.geno", delim = "\t", col_names = T)
i121 <- read_delim("all_ind121_low.geno", delim = "\t", col_names = T)
i122 <- read_delim("all_ind122_low.geno", delim = "\t", col_names = T)
i123 <- read_delim("all_ind123_low.geno", delim = "\t", col_names = T)
i124 <- read_delim("all_ind124_low.geno", delim = "\t", col_names = T)
i125 <- read_delim("all_ind125_low.geno", delim = "\t", col_names = T)
i126 <- read_delim("all_ind126_low.geno", delim = "\t", col_names = T)
i127 <- read_delim("all_ind127_low.geno", delim = "\t", col_names = T)
i128 <- read_delim("all_ind128_low.geno", delim = "\t", col_names = T)
i129 <- read_delim("all_ind129_low.geno", delim = "\t", col_names = T)


i130 <- read_delim("all_ind130_low.geno", delim = "\t", col_names = T)
i131 <- read_delim("all_ind131_low.geno", delim = "\t", col_names = T)
i132 <- read_delim("all_ind132_low.geno", delim = "\t", col_names = T)
i133 <- read_delim("all_ind133_low.geno", delim = "\t", col_names = T)
i134 <- read_delim("all_ind134_low.geno", delim = "\t", col_names = T)
i135 <- read_delim("all_ind135_low.geno", delim = "\t", col_names = T)
i136 <- read_delim("all_ind136_low.geno", delim = "\t", col_names = T)
i137 <- read_delim("all_ind137_low.geno", delim = "\t", col_names = T)
i138 <- read_delim("all_ind138_low.geno", delim = "\t", col_names = T)
i139 <- read_delim("all_ind139_low.geno", delim = "\t", col_names = T)
i140 <- read_delim("all_ind140_low.geno", delim = "\t", col_names = T)
i141 <- read_delim("all_ind141_low.geno", delim = "\t", col_names = T)
i142 <- read_delim("all_ind142_low.geno", delim = "\t", col_names = T)
i143 <- read_delim("all_ind143_low.geno", delim = "\t", col_names = T)
i144 <- read_delim("all_ind144_low.geno", delim = "\t", col_names = T)
i145 <- read_delim("all_ind145_low.geno", delim = "\t", col_names = T)
i146 <- read_delim("all_ind146_low.geno", delim = "\t", col_names = T)
i147 <- read_delim("all_ind147_low.geno", delim = "\t", col_names = T)
i148 <- read_delim("all_ind148_low.geno", delim = "\t", col_names = T)
i149 <- read_delim("all_ind149_low.geno", delim = "\t", col_names = T)
i150 <- read_delim("all_ind150_low.geno", delim = "\t", col_names = T)
i151 <- read_delim("all_ind151_low.geno", delim = "\t", col_names = T)
i152 <- read_delim("all_ind152_low.geno", delim = "\t", col_names = T)
i153 <- read_delim("all_ind153_low.geno", delim = "\t", col_names = T)
i154 <- read_delim("all_ind154_low.geno", delim = "\t", col_names = T)
i155 <- read_delim("all_ind155_low.geno", delim = "\t", col_names = T)
i156 <- read_delim("all_ind156_low.geno", delim = "\t", col_names = T)
i157 <- read_delim("all_ind157_low.geno", delim = "\t", col_names = T)
i158 <- read_delim("all_ind158_low.geno", delim = "\t", col_names = T)
i159 <- read_delim("all_ind159_low.geno", delim = "\t", col_names = T)
i160 <- read_delim("all_ind160_low.geno", delim = "\t", col_names = T)
i161 <- read_delim("all_ind161_low.geno", delim = "\t", col_names = T)
i162 <- read_delim("all_ind162_low.geno", delim = "\t", col_names = T)
i163 <- read_delim("all_ind163_low.geno", delim = "\t", col_names = T)
i164 <- read_delim("all_ind164_low.geno", delim = "\t", col_names = T)
i165 <- read_delim("all_ind165_low.geno", delim = "\t", col_names = T)
i166 <- read_delim("all_ind166_low.geno", delim = "\t", col_names = T)


low_load<- cbind(i1,i10,i100,i101,i102,i103,i104,i105,i106, i107,i108, i109, i11, i110, i111,i112,
                 i113,i114,i115,i116,i117,i118,i119,i12,i120,i121,i122,i123,i124,i125,i126,i127,i128,
                 i129,i13,i130,i131,i132,i133,i134,i135,i136,i137,i138,i139,i14,i140,i141,i142,i143,
                 i144,i145,i146,i147,i148,i149,i15,i150,i151,i152,i153,i154,i155,i156,i157,i158,i159,
                 i16,i160, i161,i162,i163,i164,i165,i166,i17,i18,i19,i2,i20,i21,i22,i23,i24,i25,i26,
                 i27,i28,i29,i3,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i4,i40,i41,i42,i43,i44,i45,
                 i46,i47,i48,i49,i5,i50,i51,i52,i53,i54,i55,i56,i57,i58,i59,i6,i60,i61,i62,i63,i64,
                 i65,i66,i67,i68,i69,i7,i70,i71,i72,i73,i74,i75,i76,i77,i78,i79,i8,i80,i81,i82,i83,
                 i84,i85,i86,i87,i88,i89,i9,i90,i91,i92,i93,i94,i95,i96,i97,i98,i99)

# head(low_load[-c(1:236),])



colnames(low_load)<- low_load[237,]
low_load<- low_load[-c(1:236),] 

### Low Impact - homozygous

F370 	<- low_load %>% filter(F370 == "1/1") %>% count()
F372	<- low_load %>% filter(F372 == "1/1") %>% count()
F373	<- low_load %>% filter(F373 == "1/1") %>% count()
F374	<- low_load %>% filter(F374 == "1/1") %>% count()
F375	<- low_load %>% filter(F375 == "1/1") %>% count()
F376	<- low_load %>% filter(F376 == "1/1") %>% count()
F377	<- low_load %>% filter(F377 == "1/1") %>% count()
F378	<- low_load %>% filter(F378 == "1/1") %>% count()
F379	<- low_load %>% filter(F379 == "1/1") %>% count()
F380	<- low_load %>% filter(F380 == "1/1") %>% count()
F381	<- low_load %>% filter(F381 == "1/1") %>% count()
F382	<- low_load %>% filter(F382 == "1/1") %>% count()
F384	<- low_load %>% filter(F384 == "1/1") %>% count()
F385	<- low_load %>% filter(F385 == "1/1") %>% count()
F386	<- low_load %>% filter(F386 == "1/1") %>% count()
F388	<- low_load %>% filter(F388 == "1/1") %>% count()
F389	<- low_load %>% filter(F389 == "1/1") %>% count()
F390	<- low_load %>% filter(F390 == "1/1") %>% count()
F391	<- low_load %>% filter(F391 == "1/1") %>% count()
F392	<- low_load %>% filter(F392 == "1/1") %>% count()
F395	<- low_load %>% filter(F395 == "1/1") %>% count()
F396	<- low_load %>% filter(F396 == "1/1") %>% count()
F397	<- low_load %>% filter(F397 == "1/1") %>% count()
F398	<- low_load %>% filter(F398 == "1/1") %>% count()
F399	<- low_load %>% filter(F399 == "1/1") %>% count()
F400	<- low_load %>% filter(F400 == "1/1") %>% count()
F401	<- low_load %>% filter(F401 == "1/1") %>% count()
F402	<- low_load %>% filter(F402 == "1/1") %>% count()
F403	<- low_load %>% filter(F403 == "1/1") %>% count()
F404	<- low_load %>% filter(F404 == "1/1") %>% count()
F405	<- low_load %>% filter(F405 == "1/1") %>% count()
F406	<- low_load %>% filter(F406 == "1/1") %>% count()
F407	<- low_load %>% filter(F407 == "1/1") %>% count()
F408	<- low_load %>% filter(F408 == "1/1") %>% count()
F409	<- low_load %>% filter(F409 == "1/1") %>% count()
F410	<- low_load %>% filter(F410 == "1/1") %>% count()



F411	<- low_load %>% filter(F411 == "1/1") %>% count()
F412	<- low_load %>% filter(F412 == "1/1") %>% count()
F413	<- low_load %>% filter(F413 == "1/1") %>% count()
F414	<- low_load %>% filter(F414 == "1/1") %>% count()
F415	<- low_load %>% filter(F415 == "1/1") %>% count()
F416	<- low_load %>% filter(F416 == "1/1") %>% count()
F417	<- low_load %>% filter(F417 == "1/1") %>% count()
F419	<- low_load %>% filter(F419 == "1/1") %>% count()
F420	<- low_load %>% filter(F420 == "1/1") %>% count()
F421	<- low_load %>% filter(F421 == "1/1") %>% count()
F422	<- low_load %>% filter(F422 == "1/1") %>% count()
F424	<- low_load %>% filter(F424 == "1/1") %>% count()
F425	<- low_load %>% filter(F425 == "1/1") %>% count()
F427	<- low_load %>% filter(F427 == "1/1") %>% count()
F428	<- low_load %>% filter(F428 == "1/1") %>% count()
F429	<- low_load %>% filter(F429 == "1/1") %>% count()
F431	<- low_load %>% filter(F431 == "1/1") %>% count()
F434	<- low_load %>% filter(F434 == "1/1") %>% count()
F437	<- low_load %>% filter(F437 == "1/1") %>% count()
F438	<- low_load %>% filter(F438 == "1/1") %>% count()
F441	<- low_load %>% filter(F441 == "1/1") %>% count()
F442	<- low_load %>% filter(F442 == "1/1") %>% count()
F443	<- low_load %>% filter(F443 == "1/1") %>% count()



F445	<- low_load %>% filter(F445 == "1/1") %>% count()
F450	<- low_load %>% filter(F450 == "1/1") %>% count()
F451	<- low_load %>% filter(F451 == "1/1") %>% count()
F457	<- low_load %>% filter(F457 == "1/1") %>% count()
F458	<- low_load %>% filter(F458 == "1/1") %>% count()
F461	<- low_load %>% filter(F461 == "1/1") %>% count()
F463	<- low_load %>% filter(F463 == "1/1") %>% count()
F465	<- low_load %>% filter(F465 == "1/1") %>% count()
F466	<- low_load %>% filter(F466 == "1/1") %>% count()
F473	<- low_load %>% filter(F473 == "1/1") %>% count()
F474	<- low_load %>% filter(F474 == "1/1") %>% count()
F476	<- low_load %>% filter(F476 == "1/1") %>% count()
F477	<- low_load %>% filter(F477 == "1/1") %>% count()
F479	<- low_load %>% filter(F479 == "1/1") %>% count()
F481	<- low_load %>% filter(F481 == "1/1") %>% count()
F482	<- low_load %>% filter(F482 == "1/1") %>% count()
F483	<- low_load %>% filter(F483 == "1/1") %>% count()
F484	<- low_load %>% filter(F484 == "1/1") %>% count()
F487	<- low_load %>% filter(F487 == "1/1") %>% count()
F488	<- low_load %>% filter(F488 == "1/1") %>% count()
F489	<- low_load %>% filter(F489 == "1/1") %>% count()
F491	<- low_load %>% filter(F491 == "1/1") %>% count()
F492	<- low_load %>% filter(F492 == "1/1") %>% count()



F493	<- low_load %>% filter(F493 == "1/1") %>% count()
F494	<- low_load %>% filter(F494 == "1/1") %>% count()
F495	<- low_load %>% filter(F495 == "1/1") %>% count()
F497	<- low_load %>% filter(F497 == "1/1") %>% count()
F499	<- low_load %>% filter(F499 == "1/1") %>% count()
F501	<- low_load %>% filter(F501 == "1/1") %>% count()
F502	<- low_load %>% filter(F502 == "1/1") %>% count()
F504	<- low_load %>% filter(F504 == "1/1") %>% count()
F505	<- low_load %>% filter(F505 == "1/1") %>% count()
F506	<- low_load %>% filter(F506 == "1/1") %>% count()
F507	<- low_load %>% filter(F507 == "1/1") %>% count()
F508	<- low_load %>% filter(F508 == "1/1") %>% count()
F509	<- low_load %>% filter(F509 == "1/1") %>% count()
F510	<- low_load %>% filter(F510 == "1/1") %>% count()
F511	<- low_load %>% filter(F511 == "1/1") %>% count()
F512	<- low_load %>% filter(F512 == "1/1") %>% count()



F513	<- low_load %>% filter(F513 == "1/1") %>% count()
F515	<- low_load %>% filter(F515 == "1/1") %>% count()
F516	<- low_load %>% filter(F516 == "1/1") %>% count()
F518	<- low_load %>% filter(F518 == "1/1") %>% count()
F519	<- low_load %>% filter(F519 == "1/1") %>% count()
F520	<- low_load %>% filter(F520 == "1/1") %>% count()
F521	<- low_load %>% filter(F521 == "1/1") %>% count()
F522	<- low_load %>% filter(F522 == "1/1") %>% count()
F523	<- low_load %>% filter(F523 == "1/1") %>% count()
F525	<- low_load %>% filter(F525 == "1/1") %>% count()
F526	<- low_load %>% filter(F526 == "1/1") %>% count()
F527	<- low_load %>% filter(F527 == "1/1") %>% count()
F528	<- low_load %>% filter(F528 == "1/1") %>% count()
F529	<- low_load %>% filter(F529 == "1/1") %>% count()
F530	<- low_load %>% filter(F530 == "1/1") %>% count()


F531	<- low_load %>% filter(F531 == "1/1") %>% count()
F532	<- low_load %>% filter(F532 == "1/1") %>% count()
F534	<- low_load %>% filter(F534 == "1/1") %>% count()
F539	<- low_load %>% filter(F539 == "1/1") %>% count()
F540	<- low_load %>% filter(F540 == "1/1") %>% count()
F541	<- low_load %>% filter(F541 == "1/1") %>% count()
F542	<- low_load %>% filter(F542 == "1/1") %>% count()
F543	<- low_load %>% filter(F543 == "1/1") %>% count()
F544	<- low_load %>% filter(F544 == "1/1") %>% count()
F545	<- low_load %>% filter(F545 == "1/1") %>% count()
F546	<- low_load %>% filter(F546 == "1/1") %>% count()
F549	<- low_load %>% filter(F549 == "1/1") %>% count()
F556	<- low_load %>% filter(F556 == "1/1") %>% count()
F557	<- low_load %>% filter(F557 == "1/1") %>% count()
F558	<- low_load %>% filter(F558 == "1/1") %>% count()
F559	<- low_load %>% filter(F559 == "1/1") %>% count()



F560	<- low_load %>% filter(F560 == "1/1") %>% count()
F563	<- low_load %>% filter(F563 == "1/1") %>% count()
F565	<- low_load %>% filter(F565 == "1/1") %>% count()
F567	<- low_load %>% filter(F567 == "1/1") %>% count()
F568	<- low_load %>% filter(F568 == "1/1") %>% count()
F569	<- low_load %>% filter(F569 == "1/1") %>% count()
F570	<- low_load %>% filter(F570 == "1/1") %>% count()
F574	<- low_load %>% filter(F574 == "1/1") %>% count()
F579	<- low_load %>% filter(F579 == "1/1") %>% count()
F580	<- low_load %>% filter(F580 == "1/1") %>% count()
F581	<- low_load %>% filter(F581 == "1/1") %>% count()
F583	<- low_load %>% filter(F583 == "1/1") %>% count()
F587	<- low_load %>% filter(F587 == "1/1") %>% count()
F588	<- low_load %>% filter(F588 == "1/1") %>% count()
F593	<- low_load %>% filter(F593 == "1/1") %>% count()
F602	<- low_load %>% filter(F602 == "1/1") %>% count()
F603	<- low_load %>% filter(F603 == "1/1") %>% count()
F604	<- low_load %>% filter(F604 == "1/1") %>% count()
F605	<- low_load %>% filter(F605 == "1/1") %>% count()
F606	<- low_load %>% filter(F606 == "1/1") %>% count()
F608	<- low_load %>% filter(F608 == "1/1") %>% count()
F610	<- low_load %>% filter(F610 == "1/1") %>% count()



F611	<- low_load %>% filter(F611 == "1/1") %>% count()
F612	<- low_load %>% filter(F612 == "1/1") %>% count()
F618	<- low_load %>% filter(F618 == "1/1") %>% count()
F619	<- low_load %>% filter(F619 == "1/1") %>% count()
F623	<- low_load %>% filter(F623 == "1/1") %>% count()
F628	<- low_load %>% filter(F628 == "1/1") %>% count()
F629	<- low_load %>% filter(F629 == "1/1") %>% count()
F630	<- low_load %>% filter(F630 == "1/1") %>% count()
F631	<- low_load %>% filter(F631 == "1/1") %>% count()
F632	<- low_load %>% filter(F632 == "1/1") %>% count()
F634	<- low_load %>% filter(F634 == "1/1") %>% count()
F635	<- low_load %>% filter(F635 == "1/1") %>% count()
F637	<- low_load %>% filter(F637 == "1/1") %>% count()
F640	<- low_load %>% filter(F640 == "1/1") %>% count()
F641	<- low_load %>% filter(F641 == "1/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


low_hm_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                    ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                    ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                    ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                    ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                    ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                    ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                    ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                    ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                    ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                    ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                    ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                    ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                    ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                    ,F631,F632,F634,F635,F637,F640,F641)


low_hm_load<- melt(low_hm_load)
colnames(low_hm_load)<- c("ID", "LOW_HM_Alleles")


low_hm_load<- low_hm_load %>% mutate(LOW_HM_LOAD = LOW_HM_Alleles/(dim(low_load)[1]))



### Non-coding - heterozygous

F370 	<- low_load %>% filter(F370 == "0/1") %>% count()
F372	<- low_load %>% filter(F372 == "0/1") %>% count()
F373	<- low_load %>% filter(F373 == "0/1") %>% count()
F374	<- low_load %>% filter(F374 == "0/1") %>% count()
F375	<- low_load %>% filter(F375 == "0/1") %>% count()
F376	<- low_load %>% filter(F376 == "0/1") %>% count()
F377	<- low_load %>% filter(F377 == "0/1") %>% count()
F378	<- low_load %>% filter(F378 == "0/1") %>% count()
F379	<- low_load %>% filter(F379 == "0/1") %>% count()
F380	<- low_load %>% filter(F380 == "0/1") %>% count()
F381	<- low_load %>% filter(F381 == "0/1") %>% count()
F382	<- low_load %>% filter(F382 == "0/1") %>% count()
F384	<- low_load %>% filter(F384 == "0/1") %>% count()
F385	<- low_load %>% filter(F385 == "0/1") %>% count()
F386	<- low_load %>% filter(F386 == "0/1") %>% count()
F388	<- low_load %>% filter(F388 == "0/1") %>% count()
F389	<- low_load %>% filter(F389 == "0/1") %>% count()
F390	<- low_load %>% filter(F390 == "0/1") %>% count()
F391	<- low_load %>% filter(F391 == "0/1") %>% count()
F392	<- low_load %>% filter(F392 == "0/1") %>% count()
F395	<- low_load %>% filter(F395 == "0/1") %>% count()
F396	<- low_load %>% filter(F396 == "0/1") %>% count()
F397	<- low_load %>% filter(F397 == "0/1") %>% count()
F398	<- low_load %>% filter(F398 == "0/1") %>% count()
F399	<- low_load %>% filter(F399 == "0/1") %>% count()
F400	<- low_load %>% filter(F400 == "0/1") %>% count()
F401	<- low_load %>% filter(F401 == "0/1") %>% count()
F402	<- low_load %>% filter(F402 == "0/1") %>% count()
F403	<- low_load %>% filter(F403 == "0/1") %>% count()
F404	<- low_load %>% filter(F404 == "0/1") %>% count()
F405	<- low_load %>% filter(F405 == "0/1") %>% count()
F406	<- low_load %>% filter(F406 == "0/1") %>% count()
F407	<- low_load %>% filter(F407 == "0/1") %>% count()
F408	<- low_load %>% filter(F408 == "0/1") %>% count()
F409	<- low_load %>% filter(F409 == "0/1") %>% count()
F410	<- low_load %>% filter(F410 == "0/1") %>% count()



F411	<- low_load %>% filter(F411 == "0/1") %>% count()
F412	<- low_load %>% filter(F412 == "0/1") %>% count()
F413	<- low_load %>% filter(F413 == "0/1") %>% count()
F414	<- low_load %>% filter(F414 == "0/1") %>% count()
F415	<- low_load %>% filter(F415 == "0/1") %>% count()
F416	<- low_load %>% filter(F416 == "0/1") %>% count()
F417	<- low_load %>% filter(F417 == "0/1") %>% count()
F419	<- low_load %>% filter(F419 == "0/1") %>% count()
F420	<- low_load %>% filter(F420 == "0/1") %>% count()
F421	<- low_load %>% filter(F421 == "0/1") %>% count()
F422	<- low_load %>% filter(F422 == "0/1") %>% count()
F424	<- low_load %>% filter(F424 == "0/1") %>% count()
F425	<- low_load %>% filter(F425 == "0/1") %>% count()
F427	<- low_load %>% filter(F427 == "0/1") %>% count()
F428	<- low_load %>% filter(F428 == "0/1") %>% count()
F429	<- low_load %>% filter(F429 == "0/1") %>% count()
F431	<- low_load %>% filter(F431 == "0/1") %>% count()
F434	<- low_load %>% filter(F434 == "0/1") %>% count()
F437	<- low_load %>% filter(F437 == "0/1") %>% count()
F438	<- low_load %>% filter(F438 == "0/1") %>% count()
F441	<- low_load %>% filter(F441 == "0/1") %>% count()
F442	<- low_load %>% filter(F442 == "0/1") %>% count()
F443	<- low_load %>% filter(F443 == "0/1") %>% count()



F445	<- low_load %>% filter(F445 == "0/1") %>% count()
F450	<- low_load %>% filter(F450 == "0/1") %>% count()
F451	<- low_load %>% filter(F451 == "0/1") %>% count()
F457	<- low_load %>% filter(F457 == "0/1") %>% count()
F458	<- low_load %>% filter(F458 == "0/1") %>% count()
F461	<- low_load %>% filter(F461 == "0/1") %>% count()
F463	<- low_load %>% filter(F463 == "0/1") %>% count()
F465	<- low_load %>% filter(F465 == "0/1") %>% count()
F466	<- low_load %>% filter(F466 == "0/1") %>% count()
F473	<- low_load %>% filter(F473 == "0/1") %>% count()
F474	<- low_load %>% filter(F474 == "0/1") %>% count()
F476	<- low_load %>% filter(F476 == "0/1") %>% count()
F477	<- low_load %>% filter(F477 == "0/1") %>% count()
F479	<- low_load %>% filter(F479 == "0/1") %>% count()
F481	<- low_load %>% filter(F481 == "0/1") %>% count()
F482	<- low_load %>% filter(F482 == "0/1") %>% count()
F483	<- low_load %>% filter(F483 == "0/1") %>% count()
F484	<- low_load %>% filter(F484 == "0/1") %>% count()
F487	<- low_load %>% filter(F487 == "0/1") %>% count()
F488	<- low_load %>% filter(F488 == "0/1") %>% count()
F489	<- low_load %>% filter(F489 == "0/1") %>% count()
F491	<- low_load %>% filter(F491 == "0/1") %>% count()
F492	<- low_load %>% filter(F492 == "0/1") %>% count()




F493	<- low_load %>% filter(F493 == "0/1") %>% count()
F494	<- low_load %>% filter(F494 == "0/1") %>% count()
F495	<- low_load %>% filter(F495 == "0/1") %>% count()
F497	<- low_load %>% filter(F497 == "0/1") %>% count()
F499	<- low_load %>% filter(F499 == "0/1") %>% count()
F501	<- low_load %>% filter(F501 == "0/1") %>% count()
F502	<- low_load %>% filter(F502 == "0/1") %>% count()
F504	<- low_load %>% filter(F504 == "0/1") %>% count()
F505	<- low_load %>% filter(F505 == "0/1") %>% count()
F506	<- low_load %>% filter(F506 == "0/1") %>% count()
F507	<- low_load %>% filter(F507 == "0/1") %>% count()
F508	<- low_load %>% filter(F508 == "0/1") %>% count()
F509	<- low_load %>% filter(F509 == "0/1") %>% count()
F510	<- low_load %>% filter(F510 == "0/1") %>% count()
F511	<- low_load %>% filter(F511 == "0/1") %>% count()
F512	<- low_load %>% filter(F512 == "0/1") %>% count()



F513	<- low_load %>% filter(F513 == "0/1") %>% count()
F515	<- low_load %>% filter(F515 == "0/1") %>% count()
F516	<- low_load %>% filter(F516 == "0/1") %>% count()
F518	<- low_load %>% filter(F518 == "0/1") %>% count()
F519	<- low_load %>% filter(F519 == "0/1") %>% count()
F520	<- low_load %>% filter(F520 == "0/1") %>% count()
F521	<- low_load %>% filter(F521 == "0/1") %>% count()
F522	<- low_load %>% filter(F522 == "0/1") %>% count()
F523	<- low_load %>% filter(F523 == "0/1") %>% count()
F525	<- low_load %>% filter(F525 == "0/1") %>% count()
F526	<- low_load %>% filter(F526 == "0/1") %>% count()
F527	<- low_load %>% filter(F527 == "0/1") %>% count()
F528	<- low_load %>% filter(F528 == "0/1") %>% count()
F529	<- low_load %>% filter(F529 == "0/1") %>% count()
F530	<- low_load %>% filter(F530 == "0/1") %>% count()


F531	<- low_load %>% filter(F531 == "0/1") %>% count()
F532	<- low_load %>% filter(F532 == "0/1") %>% count()
F534	<- low_load %>% filter(F534 == "0/1") %>% count()
F539	<- low_load %>% filter(F539 == "0/1") %>% count()
F540	<- low_load %>% filter(F540 == "0/1") %>% count()
F541	<- low_load %>% filter(F541 == "0/1") %>% count()
F542	<- low_load %>% filter(F542 == "0/1") %>% count()
F543	<- low_load %>% filter(F543 == "0/1") %>% count()
F544	<- low_load %>% filter(F544 == "0/1") %>% count()
F545	<- low_load %>% filter(F545 == "0/1") %>% count()
F546	<- low_load %>% filter(F546 == "0/1") %>% count()
F549	<- low_load %>% filter(F549 == "0/1") %>% count()
F556	<- low_load %>% filter(F556 == "0/1") %>% count()
F557	<- low_load %>% filter(F557 == "0/1") %>% count()
F558	<- low_load %>% filter(F558 == "0/1") %>% count()
F559	<- low_load %>% filter(F559 == "0/1") %>% count()


F560	<- low_load %>% filter(F560 == "0/1") %>% count()
F563	<- low_load %>% filter(F563 == "0/1") %>% count()
F565	<- low_load %>% filter(F565 == "0/1") %>% count()
F567	<- low_load %>% filter(F567 == "0/1") %>% count()
F568	<- low_load %>% filter(F568 == "0/1") %>% count()
F569	<- low_load %>% filter(F569 == "0/1") %>% count()
F570	<- low_load %>% filter(F570 == "0/1") %>% count()
F574	<- low_load %>% filter(F574 == "0/1") %>% count()
F579	<- low_load %>% filter(F579 == "0/1") %>% count()
F580	<- low_load %>% filter(F580 == "0/1") %>% count()
F581	<- low_load %>% filter(F581 == "0/1") %>% count()
F583	<- low_load %>% filter(F583 == "0/1") %>% count()
F587	<- low_load %>% filter(F587 == "0/1") %>% count()
F588	<- low_load %>% filter(F588 == "0/1") %>% count()
F593	<- low_load %>% filter(F593 == "0/1") %>% count()
F602	<- low_load %>% filter(F602 == "0/1") %>% count()
F603	<- low_load %>% filter(F603 == "0/1") %>% count()
F604	<- low_load %>% filter(F604 == "0/1") %>% count()
F605	<- low_load %>% filter(F605 == "0/1") %>% count()
F606	<- low_load %>% filter(F606 == "0/1") %>% count()
F608	<- low_load %>% filter(F608 == "0/1") %>% count()
F610	<- low_load %>% filter(F610 == "0/1") %>% count()



F611	<- low_load %>% filter(F611 == "0/1") %>% count()
F612	<- low_load %>% filter(F612 == "0/1") %>% count()
F618	<- low_load %>% filter(F618 == "0/1") %>% count()
F619	<- low_load %>% filter(F619 == "0/1") %>% count()
F623	<- low_load %>% filter(F623 == "0/1") %>% count()
F628	<- low_load %>% filter(F628 == "0/1") %>% count()
F629	<- low_load %>% filter(F629 == "0/1") %>% count()
F630	<- low_load %>% filter(F630 == "0/1") %>% count()
F631	<- low_load %>% filter(F631 == "0/1") %>% count()
F632	<- low_load %>% filter(F632 == "0/1") %>% count()
F634	<- low_load %>% filter(F634 == "0/1") %>% count()
F635	<- low_load %>% filter(F635 == "0/1") %>% count()
F637	<- low_load %>% filter(F637 == "0/1") %>% count()
F640	<- low_load %>% filter(F640 == "0/1") %>% count()
F641	<- low_load %>% filter(F641 == "0/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


low_het_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                     ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                     ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                     ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                     ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                     ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                     ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                     ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                     ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                     ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                     ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                     ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                     ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                     ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                     ,F631,F632,F634,F635,F637,F640,F641)

low_het_load<- melt(low_het_load)
colnames(low_het_load)<- c("ID", "LOW_HT_Alleles")

low_het_load<- low_het_load %>% mutate(LOW_HT_LOAD = LOW_HT_Alleles/(dim(low_load)[1]))
low<- left_join(low_hm_load, low_het_load)



#### Moderate Impact Variants 


i1 <- read_delim("all_ind1_moderate.geno", delim = "\t", col_names = T)
i2 <- read_delim("all_ind2_moderate.geno", delim = "\t", col_names = T)
i3 <- read_delim("all_ind3_moderate.geno", delim = "\t", col_names = T)
i4 <- read_delim("all_ind4_moderate.geno", delim = "\t", col_names = T)
i5 <- read_delim("all_ind5_moderate.geno", delim = "\t", col_names = T)
i6 <- read_delim("all_ind6_moderate.geno", delim = "\t", col_names = T)
i7 <- read_delim("all_ind7_moderate.geno", delim = "\t", col_names = T)
i8 <- read_delim("all_ind8_moderate.geno", delim = "\t", col_names = T)
i9 <- read_delim("all_ind9_moderate.geno", delim = "\t", col_names = T)
i10 <- read_delim("all_ind10_moderate.geno", delim = "\t", col_names = T)
i11 <- read_delim("all_ind11_moderate.geno", delim = "\t", col_names = T)
i12 <- read_delim("all_ind12_moderate.geno", delim = "\t", col_names = T)
i13 <- read_delim("all_ind13_moderate.geno", delim = "\t", col_names = T)
i14 <- read_delim("all_ind14_moderate.geno", delim = "\t", col_names = T)
i15 <- read_delim("all_ind15_moderate.geno", delim = "\t", col_names = T)
i16 <- read_delim("all_ind16_moderate.geno", delim = "\t", col_names = T)
i17 <- read_delim("all_ind17_moderate.geno", delim = "\t", col_names = T)
i18 <- read_delim("all_ind18_moderate.geno", delim = "\t", col_names = T)
i19 <- read_delim("all_ind19_moderate.geno", delim = "\t", col_names = T)
i20 <- read_delim("all_ind20_moderate.geno", delim = "\t", col_names = T)


i21 <- read_delim("all_ind21_moderate.geno", delim = "\t", col_names = T)
i22 <- read_delim("all_ind22_moderate.geno", delim = "\t", col_names = T)
i23 <- read_delim("all_ind23_moderate.geno", delim = "\t", col_names = T)
i24 <- read_delim("all_ind24_moderate.geno", delim = "\t", col_names = T)
i25 <- read_delim("all_ind25_moderate.geno", delim = "\t", col_names = T)
i26 <- read_delim("all_ind26_moderate.geno", delim = "\t", col_names = T)
i27 <- read_delim("all_ind27_moderate.geno", delim = "\t", col_names = T)
i28 <- read_delim("all_ind28_moderate.geno", delim = "\t", col_names = T)
i29 <- read_delim("all_ind29_moderate.geno", delim = "\t", col_names = T)
i30 <- read_delim("all_ind30_moderate.geno", delim = "\t", col_names = T)
i31 <- read_delim("all_ind31_moderate.geno", delim = "\t", col_names = T)
i32 <- read_delim("all_ind32_moderate.geno", delim = "\t", col_names = T)
i33 <- read_delim("all_ind33_moderate.geno", delim = "\t", col_names = T)
i34 <- read_delim("all_ind34_moderate.geno", delim = "\t", col_names = T)
i35 <- read_delim("all_ind35_moderate.geno", delim = "\t", col_names = T)
i36 <- read_delim("all_ind36_moderate.geno", delim = "\t", col_names = T)
i37 <- read_delim("all_ind37_moderate.geno", delim = "\t", col_names = T)
i38 <- read_delim("all_ind38_moderate.geno", delim = "\t", col_names = T)
i39 <- read_delim("all_ind39_moderate.geno", delim = "\t", col_names = T)
i40 <- read_delim("all_ind40_moderate.geno", delim = "\t", col_names = T)
i41 <- read_delim("all_ind41_moderate.geno", delim = "\t", col_names = T)
i42 <- read_delim("all_ind42_moderate.geno", delim = "\t", col_names = T)
i43 <- read_delim("all_ind43_moderate.geno", delim = "\t", col_names = T)
i44 <- read_delim("all_ind44_moderate.geno", delim = "\t", col_names = T)
i45 <- read_delim("all_ind45_moderate.geno", delim = "\t", col_names = T)
i46 <- read_delim("all_ind46_moderate.geno", delim = "\t", col_names = T)
i47 <- read_delim("all_ind47_moderate.geno", delim = "\t", col_names = T)
i48 <- read_delim("all_ind48_moderate.geno", delim = "\t", col_names = T)
i49 <- read_delim("all_ind49_moderate.geno", delim = "\t", col_names = T)


i50 <- read_delim("all_ind50_moderate.geno", delim = "\t", col_names = T)
i51 <- read_delim("all_ind51_moderate.geno", delim = "\t", col_names = T)
i52 <- read_delim("all_ind52_moderate.geno", delim = "\t", col_names = T)
i53 <- read_delim("all_ind53_moderate.geno", delim = "\t", col_names = T)
i54 <- read_delim("all_ind54_moderate.geno", delim = "\t", col_names = T)
i55 <- read_delim("all_ind55_moderate.geno", delim = "\t", col_names = T)
i56 <- read_delim("all_ind56_moderate.geno", delim = "\t", col_names = T)
i57 <- read_delim("all_ind57_moderate.geno", delim = "\t", col_names = T)
i58 <- read_delim("all_ind58_moderate.geno", delim = "\t", col_names = T)
i59 <- read_delim("all_ind59_moderate.geno", delim = "\t", col_names = T)
i60 <- read_delim("all_ind60_moderate.geno", delim = "\t", col_names = T)
i61 <- read_delim("all_ind61_moderate.geno", delim = "\t", col_names = T)
i62 <- read_delim("all_ind62_moderate.geno", delim = "\t", col_names = T)
i63 <- read_delim("all_ind63_moderate.geno", delim = "\t", col_names = T)
i64 <- read_delim("all_ind64_moderate.geno", delim = "\t", col_names = T)
i65 <- read_delim("all_ind65_moderate.geno", delim = "\t", col_names = T)
i66 <- read_delim("all_ind66_moderate.geno", delim = "\t", col_names = T)
i67 <- read_delim("all_ind67_moderate.geno", delim = "\t", col_names = T)
i68 <- read_delim("all_ind68_moderate.geno", delim = "\t", col_names = T)
i69 <- read_delim("all_ind69_moderate.geno", delim = "\t", col_names = T)
i70 <- read_delim("all_ind70_moderate.geno", delim = "\t", col_names = T)
i71 <- read_delim("all_ind71_moderate.geno", delim = "\t", col_names = T)
i72 <- read_delim("all_ind72_moderate.geno", delim = "\t", col_names = T)
i73 <- read_delim("all_ind73_moderate.geno", delim = "\t", col_names = T)
i74 <- read_delim("all_ind74_moderate.geno", delim = "\t", col_names = T)
i75 <- read_delim("all_ind75_moderate.geno", delim = "\t", col_names = T)
i76 <- read_delim("all_ind76_moderate.geno", delim = "\t", col_names = T)
i77 <- read_delim("all_ind77_moderate.geno", delim = "\t", col_names = T)
i78 <- read_delim("all_ind78_moderate.geno", delim = "\t", col_names = T)
i79 <- read_delim("all_ind79_moderate.geno", delim = "\t", col_names = T)
i80 <- read_delim("all_ind80_moderate.geno", delim = "\t", col_names = T)
i81 <- read_delim("all_ind81_moderate.geno", delim = "\t", col_names = T)
i82 <- read_delim("all_ind82_moderate.geno", delim = "\t", col_names = T)
i83 <- read_delim("all_ind83_moderate.geno", delim = "\t", col_names = T)
i84 <- read_delim("all_ind84_moderate.geno", delim = "\t", col_names = T)
i85 <- read_delim("all_ind85_moderate.geno", delim = "\t", col_names = T)
i86 <- read_delim("all_ind86_moderate.geno", delim = "\t", col_names = T)
i87 <- read_delim("all_ind87_moderate.geno", delim = "\t", col_names = T)
i88 <- read_delim("all_ind88_moderate.geno", delim = "\t", col_names = T)
i89 <- read_delim("all_ind89_moderate.geno", delim = "\t", col_names = T)
i90 <- read_delim("all_ind90_moderate.geno", delim = "\t", col_names = T)
i91 <- read_delim("all_ind91_moderate.geno", delim = "\t", col_names = T)
i92 <- read_delim("all_ind92_moderate.geno", delim = "\t", col_names = T)
i93 <- read_delim("all_ind93_moderate.geno", delim = "\t", col_names = T)
i94 <- read_delim("all_ind94_moderate.geno", delim = "\t", col_names = T)
i95 <- read_delim("all_ind95_moderate.geno", delim = "\t", col_names = T)
i96 <- read_delim("all_ind96_moderate.geno", delim = "\t", col_names = T)
i97 <- read_delim("all_ind97_moderate.geno", delim = "\t", col_names = T)
i98 <- read_delim("all_ind98_moderate.geno", delim = "\t", col_names = T)
i99 <- read_delim("all_ind99_moderate.geno", delim = "\t", col_names = T)


i100 <- read_delim("all_ind100_moderate.geno", delim = "\t", col_names = T)
i101 <- read_delim("all_ind101_moderate.geno", delim = "\t", col_names = T)
i102 <- read_delim("all_ind102_moderate.geno", delim = "\t", col_names = T)
i103 <- read_delim("all_ind103_moderate.geno", delim = "\t", col_names = T)
i104 <- read_delim("all_ind104_moderate.geno", delim = "\t", col_names = T)
i105 <- read_delim("all_ind105_moderate.geno", delim = "\t", col_names = T)
i106 <- read_delim("all_ind106_moderate.geno", delim = "\t", col_names = T)
i107 <- read_delim("all_ind107_moderate.geno", delim = "\t", col_names = T)
i108 <- read_delim("all_ind108_moderate.geno", delim = "\t", col_names = T)
i109 <- read_delim("all_ind109_moderate.geno", delim = "\t", col_names = T)
i110 <- read_delim("all_ind110_moderate.geno", delim = "\t", col_names = T)
i111 <- read_delim("all_ind111_moderate.geno", delim = "\t", col_names = T)
i112 <- read_delim("all_ind112_moderate.geno", delim = "\t", col_names = T)
i113 <- read_delim("all_ind113_moderate.geno", delim = "\t", col_names = T)
i114 <- read_delim("all_ind114_moderate.geno", delim = "\t", col_names = T)
i115 <- read_delim("all_ind115_moderate.geno", delim = "\t", col_names = T)
i116 <- read_delim("all_ind116_moderate.geno", delim = "\t", col_names = T)
i117 <- read_delim("all_ind117_moderate.geno", delim = "\t", col_names = T)
i118 <- read_delim("all_ind118_moderate.geno", delim = "\t", col_names = T)
i119 <- read_delim("all_ind119_moderate.geno", delim = "\t", col_names = T)
i120 <- read_delim("all_ind120_moderate.geno", delim = "\t", col_names = T)
i121 <- read_delim("all_ind121_moderate.geno", delim = "\t", col_names = T)
i122 <- read_delim("all_ind122_moderate.geno", delim = "\t", col_names = T)
i123 <- read_delim("all_ind123_moderate.geno", delim = "\t", col_names = T)
i124 <- read_delim("all_ind124_moderate.geno", delim = "\t", col_names = T)
i125 <- read_delim("all_ind125_moderate.geno", delim = "\t", col_names = T)
i126 <- read_delim("all_ind126_moderate.geno", delim = "\t", col_names = T)
i127 <- read_delim("all_ind127_moderate.geno", delim = "\t", col_names = T)
i128 <- read_delim("all_ind128_moderate.geno", delim = "\t", col_names = T)
i129 <- read_delim("all_ind129_moderate.geno", delim = "\t", col_names = T)


i130 <- read_delim("all_ind130_moderate.geno", delim = "\t", col_names = T)
i131 <- read_delim("all_ind131_moderate.geno", delim = "\t", col_names = T)
i132 <- read_delim("all_ind132_moderate.geno", delim = "\t", col_names = T)
i133 <- read_delim("all_ind133_moderate.geno", delim = "\t", col_names = T)
i134 <- read_delim("all_ind134_moderate.geno", delim = "\t", col_names = T)
i135 <- read_delim("all_ind135_moderate.geno", delim = "\t", col_names = T)
i136 <- read_delim("all_ind136_moderate.geno", delim = "\t", col_names = T)
i137 <- read_delim("all_ind137_moderate.geno", delim = "\t", col_names = T)
i138 <- read_delim("all_ind138_moderate.geno", delim = "\t", col_names = T)
i139 <- read_delim("all_ind139_moderate.geno", delim = "\t", col_names = T)
i140 <- read_delim("all_ind140_moderate.geno", delim = "\t", col_names = T)
i141 <- read_delim("all_ind141_moderate.geno", delim = "\t", col_names = T)
i142 <- read_delim("all_ind142_moderate.geno", delim = "\t", col_names = T)
i143 <- read_delim("all_ind143_moderate.geno", delim = "\t", col_names = T)
i144 <- read_delim("all_ind144_moderate.geno", delim = "\t", col_names = T)
i145 <- read_delim("all_ind145_moderate.geno", delim = "\t", col_names = T)
i146 <- read_delim("all_ind146_moderate.geno", delim = "\t", col_names = T)
i147 <- read_delim("all_ind147_moderate.geno", delim = "\t", col_names = T)
i148 <- read_delim("all_ind148_moderate.geno", delim = "\t", col_names = T)
i149 <- read_delim("all_ind149_moderate.geno", delim = "\t", col_names = T)
i150 <- read_delim("all_ind150_moderate.geno", delim = "\t", col_names = T)
i151 <- read_delim("all_ind151_moderate.geno", delim = "\t", col_names = T)
i152 <- read_delim("all_ind152_moderate.geno", delim = "\t", col_names = T)
i153 <- read_delim("all_ind153_moderate.geno", delim = "\t", col_names = T)
i154 <- read_delim("all_ind154_moderate.geno", delim = "\t", col_names = T)
i155 <- read_delim("all_ind155_moderate.geno", delim = "\t", col_names = T)
i156 <- read_delim("all_ind156_moderate.geno", delim = "\t", col_names = T)
i157 <- read_delim("all_ind157_moderate.geno", delim = "\t", col_names = T)
i158 <- read_delim("all_ind158_moderate.geno", delim = "\t", col_names = T)
i159 <- read_delim("all_ind159_moderate.geno", delim = "\t", col_names = T)
i160 <- read_delim("all_ind160_moderate.geno", delim = "\t", col_names = T)
i161 <- read_delim("all_ind161_moderate.geno", delim = "\t", col_names = T)
i162 <- read_delim("all_ind162_moderate.geno", delim = "\t", col_names = T)
i163 <- read_delim("all_ind163_moderate.geno", delim = "\t", col_names = T)
i164 <- read_delim("all_ind164_moderate.geno", delim = "\t", col_names = T)
i165 <- read_delim("all_ind165_moderate.geno", delim = "\t", col_names = T)
i166 <- read_delim("all_ind166_moderate.geno", delim = "\t", col_names = T)


moderate_load<- cbind(i1,i10,i100,i101,i102,i103,i104,i105,i106, i107,i108, i109, i11, i110, i111,i112,
                      i113,i114,i115,i116,i117,i118,i119,i12,i120,i121,i122,i123,i124,i125,i126,i127,i128,
                      i129,i13,i130,i131,i132,i133,i134,i135,i136,i137,i138,i139,i14,i140,i141,i142,i143,
                      i144,i145,i146,i147,i148,i149,i15,i150,i151,i152,i153,i154,i155,i156,i157,i158,i159,
                      i16,i160, i161,i162,i163,i164,i165,i166,i17,i18,i19,i2,i20,i21,i22,i23,i24,i25,i26,
                      i27,i28,i29,i3,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i4,i40,i41,i42,i43,i44,i45,
                      i46,i47,i48,i49,i5,i50,i51,i52,i53,i54,i55,i56,i57,i58,i59,i6,i60,i61,i62,i63,i64,
                      i65,i66,i67,i68,i69,i7,i70,i71,i72,i73,i74,i75,i76,i77,i78,i79,i8,i80,i81,i82,i83,
                      i84,i85,i86,i87,i88,i89,i9,i90,i91,i92,i93,i94,i95,i96,i97,i98,i99)

# head(moderate_load[-c(1:236),])



colnames(moderate_load)<- moderate_load[237,]
moderate_load<- moderate_load[-c(1:236),] 

### Low Impact - homozygous

F370 	<- moderate_load %>% filter(F370 == "1/1") %>% count()
F372	<- moderate_load %>% filter(F372 == "1/1") %>% count()
F373	<- moderate_load %>% filter(F373 == "1/1") %>% count()
F374	<- moderate_load %>% filter(F374 == "1/1") %>% count()
F375	<- moderate_load %>% filter(F375 == "1/1") %>% count()
F376	<- moderate_load %>% filter(F376 == "1/1") %>% count()
F377	<- moderate_load %>% filter(F377 == "1/1") %>% count()
F378	<- moderate_load %>% filter(F378 == "1/1") %>% count()
F379	<- moderate_load %>% filter(F379 == "1/1") %>% count()
F380	<- moderate_load %>% filter(F380 == "1/1") %>% count()
F381	<- moderate_load %>% filter(F381 == "1/1") %>% count()
F382	<- moderate_load %>% filter(F382 == "1/1") %>% count()
F384	<- moderate_load %>% filter(F384 == "1/1") %>% count()
F385	<- moderate_load %>% filter(F385 == "1/1") %>% count()
F386	<- moderate_load %>% filter(F386 == "1/1") %>% count()
F388	<- moderate_load %>% filter(F388 == "1/1") %>% count()
F389	<- moderate_load %>% filter(F389 == "1/1") %>% count()
F390	<- moderate_load %>% filter(F390 == "1/1") %>% count()
F391	<- moderate_load %>% filter(F391 == "1/1") %>% count()
F392	<- moderate_load %>% filter(F392 == "1/1") %>% count()
F395	<- moderate_load %>% filter(F395 == "1/1") %>% count()
F396	<- moderate_load %>% filter(F396 == "1/1") %>% count()
F397	<- moderate_load %>% filter(F397 == "1/1") %>% count()
F398	<- moderate_load %>% filter(F398 == "1/1") %>% count()
F399	<- moderate_load %>% filter(F399 == "1/1") %>% count()
F400	<- moderate_load %>% filter(F400 == "1/1") %>% count()
F401	<- moderate_load %>% filter(F401 == "1/1") %>% count()
F402	<- moderate_load %>% filter(F402 == "1/1") %>% count()
F403	<- moderate_load %>% filter(F403 == "1/1") %>% count()
F404	<- moderate_load %>% filter(F404 == "1/1") %>% count()
F405	<- moderate_load %>% filter(F405 == "1/1") %>% count()
F406	<- moderate_load %>% filter(F406 == "1/1") %>% count()
F407	<- moderate_load %>% filter(F407 == "1/1") %>% count()
F408	<- moderate_load %>% filter(F408 == "1/1") %>% count()
F409	<- moderate_load %>% filter(F409 == "1/1") %>% count()
F410	<- moderate_load %>% filter(F410 == "1/1") %>% count()



F411	<- moderate_load %>% filter(F411 == "1/1") %>% count()
F412	<- moderate_load %>% filter(F412 == "1/1") %>% count()
F413	<- moderate_load %>% filter(F413 == "1/1") %>% count()
F414	<- moderate_load %>% filter(F414 == "1/1") %>% count()
F415	<- moderate_load %>% filter(F415 == "1/1") %>% count()
F416	<- moderate_load %>% filter(F416 == "1/1") %>% count()
F417	<- moderate_load %>% filter(F417 == "1/1") %>% count()
F419	<- moderate_load %>% filter(F419 == "1/1") %>% count()
F420	<- moderate_load %>% filter(F420 == "1/1") %>% count()
F421	<- moderate_load %>% filter(F421 == "1/1") %>% count()
F422	<- moderate_load %>% filter(F422 == "1/1") %>% count()
F424	<- moderate_load %>% filter(F424 == "1/1") %>% count()
F425	<- moderate_load %>% filter(F425 == "1/1") %>% count()
F427	<- moderate_load %>% filter(F427 == "1/1") %>% count()
F428	<- moderate_load %>% filter(F428 == "1/1") %>% count()
F429	<- moderate_load %>% filter(F429 == "1/1") %>% count()
F431	<- moderate_load %>% filter(F431 == "1/1") %>% count()
F434	<- moderate_load %>% filter(F434 == "1/1") %>% count()
F437	<- moderate_load %>% filter(F437 == "1/1") %>% count()
F438	<- moderate_load %>% filter(F438 == "1/1") %>% count()
F441	<- moderate_load %>% filter(F441 == "1/1") %>% count()
F442	<- moderate_load %>% filter(F442 == "1/1") %>% count()
F443	<- moderate_load %>% filter(F443 == "1/1") %>% count()



F445	<- moderate_load %>% filter(F445 == "1/1") %>% count()
F450	<- moderate_load %>% filter(F450 == "1/1") %>% count()
F451	<- moderate_load %>% filter(F451 == "1/1") %>% count()
F457	<- moderate_load %>% filter(F457 == "1/1") %>% count()
F458	<- moderate_load %>% filter(F458 == "1/1") %>% count()
F461	<- moderate_load %>% filter(F461 == "1/1") %>% count()
F463	<- moderate_load %>% filter(F463 == "1/1") %>% count()
F465	<- moderate_load %>% filter(F465 == "1/1") %>% count()
F466	<- moderate_load %>% filter(F466 == "1/1") %>% count()
F473	<- moderate_load %>% filter(F473 == "1/1") %>% count()
F474	<- moderate_load %>% filter(F474 == "1/1") %>% count()
F476	<- moderate_load %>% filter(F476 == "1/1") %>% count()
F477	<- moderate_load %>% filter(F477 == "1/1") %>% count()
F479	<- moderate_load %>% filter(F479 == "1/1") %>% count()
F481	<- moderate_load %>% filter(F481 == "1/1") %>% count()
F482	<- moderate_load %>% filter(F482 == "1/1") %>% count()
F483	<- moderate_load %>% filter(F483 == "1/1") %>% count()
F484	<- moderate_load %>% filter(F484 == "1/1") %>% count()
F487	<- moderate_load %>% filter(F487 == "1/1") %>% count()
F488	<- moderate_load %>% filter(F488 == "1/1") %>% count()
F489	<- moderate_load %>% filter(F489 == "1/1") %>% count()
F491	<- moderate_load %>% filter(F491 == "1/1") %>% count()
F492	<- moderate_load %>% filter(F492 == "1/1") %>% count()



F493	<- moderate_load %>% filter(F493 == "1/1") %>% count()
F494	<- moderate_load %>% filter(F494 == "1/1") %>% count()
F495	<- moderate_load %>% filter(F495 == "1/1") %>% count()
F497	<- moderate_load %>% filter(F497 == "1/1") %>% count()
F499	<- moderate_load %>% filter(F499 == "1/1") %>% count()
F501	<- moderate_load %>% filter(F501 == "1/1") %>% count()
F502	<- moderate_load %>% filter(F502 == "1/1") %>% count()
F504	<- moderate_load %>% filter(F504 == "1/1") %>% count()
F505	<- moderate_load %>% filter(F505 == "1/1") %>% count()
F506	<- moderate_load %>% filter(F506 == "1/1") %>% count()
F507	<- moderate_load %>% filter(F507 == "1/1") %>% count()
F508	<- moderate_load %>% filter(F508 == "1/1") %>% count()
F509	<- moderate_load %>% filter(F509 == "1/1") %>% count()
F510	<- moderate_load %>% filter(F510 == "1/1") %>% count()
F511	<- moderate_load %>% filter(F511 == "1/1") %>% count()
F512	<- moderate_load %>% filter(F512 == "1/1") %>% count()



F513	<- moderate_load %>% filter(F513 == "1/1") %>% count()
F515	<- moderate_load %>% filter(F515 == "1/1") %>% count()
F516	<- moderate_load %>% filter(F516 == "1/1") %>% count()
F518	<- moderate_load %>% filter(F518 == "1/1") %>% count()
F519	<- moderate_load %>% filter(F519 == "1/1") %>% count()
F520	<- moderate_load %>% filter(F520 == "1/1") %>% count()
F521	<- moderate_load %>% filter(F521 == "1/1") %>% count()
F522	<- moderate_load %>% filter(F522 == "1/1") %>% count()
F523	<- moderate_load %>% filter(F523 == "1/1") %>% count()
F525	<- moderate_load %>% filter(F525 == "1/1") %>% count()
F526	<- moderate_load %>% filter(F526 == "1/1") %>% count()
F527	<- moderate_load %>% filter(F527 == "1/1") %>% count()
F528	<- moderate_load %>% filter(F528 == "1/1") %>% count()
F529	<- moderate_load %>% filter(F529 == "1/1") %>% count()
F530	<- moderate_load %>% filter(F530 == "1/1") %>% count()


F531	<- moderate_load %>% filter(F531 == "1/1") %>% count()
F532	<- moderate_load %>% filter(F532 == "1/1") %>% count()
F534	<- moderate_load %>% filter(F534 == "1/1") %>% count()
F539	<- moderate_load %>% filter(F539 == "1/1") %>% count()
F540	<- moderate_load %>% filter(F540 == "1/1") %>% count()
F541	<- moderate_load %>% filter(F541 == "1/1") %>% count()
F542	<- moderate_load %>% filter(F542 == "1/1") %>% count()
F543	<- moderate_load %>% filter(F543 == "1/1") %>% count()
F544	<- moderate_load %>% filter(F544 == "1/1") %>% count()
F545	<- moderate_load %>% filter(F545 == "1/1") %>% count()
F546	<- moderate_load %>% filter(F546 == "1/1") %>% count()
F549	<- moderate_load %>% filter(F549 == "1/1") %>% count()
F556	<- moderate_load %>% filter(F556 == "1/1") %>% count()
F557	<- moderate_load %>% filter(F557 == "1/1") %>% count()
F558	<- moderate_load %>% filter(F558 == "1/1") %>% count()
F559	<- moderate_load %>% filter(F559 == "1/1") %>% count()



F560	<- moderate_load %>% filter(F560 == "1/1") %>% count()
F563	<- moderate_load %>% filter(F563 == "1/1") %>% count()
F565	<- moderate_load %>% filter(F565 == "1/1") %>% count()
F567	<- moderate_load %>% filter(F567 == "1/1") %>% count()
F568	<- moderate_load %>% filter(F568 == "1/1") %>% count()
F569	<- moderate_load %>% filter(F569 == "1/1") %>% count()
F570	<- moderate_load %>% filter(F570 == "1/1") %>% count()
F574	<- moderate_load %>% filter(F574 == "1/1") %>% count()
F579	<- moderate_load %>% filter(F579 == "1/1") %>% count()
F580	<- moderate_load %>% filter(F580 == "1/1") %>% count()
F581	<- moderate_load %>% filter(F581 == "1/1") %>% count()
F583	<- moderate_load %>% filter(F583 == "1/1") %>% count()
F587	<- moderate_load %>% filter(F587 == "1/1") %>% count()
F588	<- moderate_load %>% filter(F588 == "1/1") %>% count()
F593	<- moderate_load %>% filter(F593 == "1/1") %>% count()
F602	<- moderate_load %>% filter(F602 == "1/1") %>% count()
F603	<- moderate_load %>% filter(F603 == "1/1") %>% count()
F604	<- moderate_load %>% filter(F604 == "1/1") %>% count()
F605	<- moderate_load %>% filter(F605 == "1/1") %>% count()
F606	<- moderate_load %>% filter(F606 == "1/1") %>% count()
F608	<- moderate_load %>% filter(F608 == "1/1") %>% count()
F610	<- moderate_load %>% filter(F610 == "1/1") %>% count()



F611	<- moderate_load %>% filter(F611 == "1/1") %>% count()
F612	<- moderate_load %>% filter(F612 == "1/1") %>% count()
F618	<- moderate_load %>% filter(F618 == "1/1") %>% count()
F619	<- moderate_load %>% filter(F619 == "1/1") %>% count()
F623	<- moderate_load %>% filter(F623 == "1/1") %>% count()
F628	<- moderate_load %>% filter(F628 == "1/1") %>% count()
F629	<- moderate_load %>% filter(F629 == "1/1") %>% count()
F630	<- moderate_load %>% filter(F630 == "1/1") %>% count()
F631	<- moderate_load %>% filter(F631 == "1/1") %>% count()
F632	<- moderate_load %>% filter(F632 == "1/1") %>% count()
F634	<- moderate_load %>% filter(F634 == "1/1") %>% count()
F635	<- moderate_load %>% filter(F635 == "1/1") %>% count()
F637	<- moderate_load %>% filter(F637 == "1/1") %>% count()
F640	<- moderate_load %>% filter(F640 == "1/1") %>% count()
F641	<- moderate_load %>% filter(F641 == "1/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


mod_hm_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                    ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                    ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                    ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                    ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                    ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                    ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                    ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                    ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                    ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                    ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                    ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                    ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                    ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                    ,F631,F632,F634,F635,F637,F640,F641)


mod_hm_load<- melt(mod_hm_load)
colnames(mod_hm_load)<- c("ID", "MOD_HM_Alleles")


mod_hm_load<- mod_hm_load %>% mutate(MOD_HM_LOAD = MOD_HM_Alleles/(dim(moderate_load)[1]))



### Non-coding - heterozygous

F370 	<- moderate_load %>% filter(F370 == "0/1") %>% count()
F372	<- moderate_load %>% filter(F372 == "0/1") %>% count()
F373	<- moderate_load %>% filter(F373 == "0/1") %>% count()
F374	<- moderate_load %>% filter(F374 == "0/1") %>% count()
F375	<- moderate_load %>% filter(F375 == "0/1") %>% count()
F376	<- moderate_load %>% filter(F376 == "0/1") %>% count()
F377	<- moderate_load %>% filter(F377 == "0/1") %>% count()
F378	<- moderate_load %>% filter(F378 == "0/1") %>% count()
F379	<- moderate_load %>% filter(F379 == "0/1") %>% count()
F380	<- moderate_load %>% filter(F380 == "0/1") %>% count()
F381	<- moderate_load %>% filter(F381 == "0/1") %>% count()
F382	<- moderate_load %>% filter(F382 == "0/1") %>% count()
F384	<- moderate_load %>% filter(F384 == "0/1") %>% count()
F385	<- moderate_load %>% filter(F385 == "0/1") %>% count()
F386	<- moderate_load %>% filter(F386 == "0/1") %>% count()
F388	<- moderate_load %>% filter(F388 == "0/1") %>% count()
F389	<- moderate_load %>% filter(F389 == "0/1") %>% count()
F390	<- moderate_load %>% filter(F390 == "0/1") %>% count()
F391	<- moderate_load %>% filter(F391 == "0/1") %>% count()
F392	<- moderate_load %>% filter(F392 == "0/1") %>% count()
F395	<- moderate_load %>% filter(F395 == "0/1") %>% count()
F396	<- moderate_load %>% filter(F396 == "0/1") %>% count()
F397	<- moderate_load %>% filter(F397 == "0/1") %>% count()
F398	<- moderate_load %>% filter(F398 == "0/1") %>% count()
F399	<- moderate_load %>% filter(F399 == "0/1") %>% count()
F400	<- moderate_load %>% filter(F400 == "0/1") %>% count()
F401	<- moderate_load %>% filter(F401 == "0/1") %>% count()
F402	<- moderate_load %>% filter(F402 == "0/1") %>% count()
F403	<- moderate_load %>% filter(F403 == "0/1") %>% count()
F404	<- moderate_load %>% filter(F404 == "0/1") %>% count()
F405	<- moderate_load %>% filter(F405 == "0/1") %>% count()
F406	<- moderate_load %>% filter(F406 == "0/1") %>% count()
F407	<- moderate_load %>% filter(F407 == "0/1") %>% count()
F408	<- moderate_load %>% filter(F408 == "0/1") %>% count()
F409	<- moderate_load %>% filter(F409 == "0/1") %>% count()
F410	<- moderate_load %>% filter(F410 == "0/1") %>% count()



F411	<- moderate_load %>% filter(F411 == "0/1") %>% count()
F412	<- moderate_load %>% filter(F412 == "0/1") %>% count()
F413	<- moderate_load %>% filter(F413 == "0/1") %>% count()
F414	<- moderate_load %>% filter(F414 == "0/1") %>% count()
F415	<- moderate_load %>% filter(F415 == "0/1") %>% count()
F416	<- moderate_load %>% filter(F416 == "0/1") %>% count()
F417	<- moderate_load %>% filter(F417 == "0/1") %>% count()
F419	<- moderate_load %>% filter(F419 == "0/1") %>% count()
F420	<- moderate_load %>% filter(F420 == "0/1") %>% count()
F421	<- moderate_load %>% filter(F421 == "0/1") %>% count()
F422	<- moderate_load %>% filter(F422 == "0/1") %>% count()
F424	<- moderate_load %>% filter(F424 == "0/1") %>% count()
F425	<- moderate_load %>% filter(F425 == "0/1") %>% count()
F427	<- moderate_load %>% filter(F427 == "0/1") %>% count()
F428	<- moderate_load %>% filter(F428 == "0/1") %>% count()
F429	<- moderate_load %>% filter(F429 == "0/1") %>% count()
F431	<- moderate_load %>% filter(F431 == "0/1") %>% count()
F434	<- moderate_load %>% filter(F434 == "0/1") %>% count()
F437	<- moderate_load %>% filter(F437 == "0/1") %>% count()
F438	<- moderate_load %>% filter(F438 == "0/1") %>% count()
F441	<- moderate_load %>% filter(F441 == "0/1") %>% count()
F442	<- moderate_load %>% filter(F442 == "0/1") %>% count()
F443	<- moderate_load %>% filter(F443 == "0/1") %>% count()



F445	<- moderate_load %>% filter(F445 == "0/1") %>% count()
F450	<- moderate_load %>% filter(F450 == "0/1") %>% count()
F451	<- moderate_load %>% filter(F451 == "0/1") %>% count()
F457	<- moderate_load %>% filter(F457 == "0/1") %>% count()
F458	<- moderate_load %>% filter(F458 == "0/1") %>% count()
F461	<- moderate_load %>% filter(F461 == "0/1") %>% count()
F463	<- moderate_load %>% filter(F463 == "0/1") %>% count()
F465	<- moderate_load %>% filter(F465 == "0/1") %>% count()
F466	<- moderate_load %>% filter(F466 == "0/1") %>% count()
F473	<- moderate_load %>% filter(F473 == "0/1") %>% count()
F474	<- moderate_load %>% filter(F474 == "0/1") %>% count()
F476	<- moderate_load %>% filter(F476 == "0/1") %>% count()
F477	<- moderate_load %>% filter(F477 == "0/1") %>% count()
F479	<- moderate_load %>% filter(F479 == "0/1") %>% count()
F481	<- moderate_load %>% filter(F481 == "0/1") %>% count()
F482	<- moderate_load %>% filter(F482 == "0/1") %>% count()
F483	<- moderate_load %>% filter(F483 == "0/1") %>% count()
F484	<- moderate_load %>% filter(F484 == "0/1") %>% count()
F487	<- moderate_load %>% filter(F487 == "0/1") %>% count()
F488	<- moderate_load %>% filter(F488 == "0/1") %>% count()
F489	<- moderate_load %>% filter(F489 == "0/1") %>% count()
F491	<- moderate_load %>% filter(F491 == "0/1") %>% count()
F492	<- moderate_load %>% filter(F492 == "0/1") %>% count()



F493	<- moderate_load %>% filter(F493 == "0/1") %>% count()
F494	<- moderate_load %>% filter(F494 == "0/1") %>% count()
F495	<- moderate_load %>% filter(F495 == "0/1") %>% count()
F497	<- moderate_load %>% filter(F497 == "0/1") %>% count()
F499	<- moderate_load %>% filter(F499 == "0/1") %>% count()
F501	<- moderate_load %>% filter(F501 == "0/1") %>% count()
F502	<- moderate_load %>% filter(F502 == "0/1") %>% count()
F504	<- moderate_load %>% filter(F504 == "0/1") %>% count()
F505	<- moderate_load %>% filter(F505 == "0/1") %>% count()
F506	<- moderate_load %>% filter(F506 == "0/1") %>% count()
F507	<- moderate_load %>% filter(F507 == "0/1") %>% count()
F508	<- moderate_load %>% filter(F508 == "0/1") %>% count()
F509	<- moderate_load %>% filter(F509 == "0/1") %>% count()
F510	<- moderate_load %>% filter(F510 == "0/1") %>% count()
F511	<- moderate_load %>% filter(F511 == "0/1") %>% count()
F512	<- moderate_load %>% filter(F512 == "0/1") %>% count()



F513	<- moderate_load %>% filter(F513 == "0/1") %>% count()
F515	<- moderate_load %>% filter(F515 == "0/1") %>% count()
F516	<- moderate_load %>% filter(F516 == "0/1") %>% count()
F518	<- moderate_load %>% filter(F518 == "0/1") %>% count()
F519	<- moderate_load %>% filter(F519 == "0/1") %>% count()
F520	<- moderate_load %>% filter(F520 == "0/1") %>% count()
F521	<- moderate_load %>% filter(F521 == "0/1") %>% count()
F522	<- moderate_load %>% filter(F522 == "0/1") %>% count()
F523	<- moderate_load %>% filter(F523 == "0/1") %>% count()
F525	<- moderate_load %>% filter(F525 == "0/1") %>% count()
F526	<- moderate_load %>% filter(F526 == "0/1") %>% count()
F527	<- moderate_load %>% filter(F527 == "0/1") %>% count()
F528	<- moderate_load %>% filter(F528 == "0/1") %>% count()
F529	<- moderate_load %>% filter(F529 == "0/1") %>% count()
F530	<- moderate_load %>% filter(F530 == "0/1") %>% count()


F531	<- moderate_load %>% filter(F531 == "0/1") %>% count()
F532	<- moderate_load %>% filter(F532 == "0/1") %>% count()
F534	<- moderate_load %>% filter(F534 == "0/1") %>% count()
F539	<- moderate_load %>% filter(F539 == "0/1") %>% count()
F540	<- moderate_load %>% filter(F540 == "0/1") %>% count()
F541	<- moderate_load %>% filter(F541 == "0/1") %>% count()
F542	<- moderate_load %>% filter(F542 == "0/1") %>% count()
F543	<- moderate_load %>% filter(F543 == "0/1") %>% count()
F544	<- moderate_load %>% filter(F544 == "0/1") %>% count()
F545	<- moderate_load %>% filter(F545 == "0/1") %>% count()
F546	<- moderate_load %>% filter(F546 == "0/1") %>% count()
F549	<- moderate_load %>% filter(F549 == "0/1") %>% count()
F556	<- moderate_load %>% filter(F556 == "0/1") %>% count()
F557	<- moderate_load %>% filter(F557 == "0/1") %>% count()
F558	<- moderate_load %>% filter(F558 == "0/1") %>% count()
F559	<- moderate_load %>% filter(F559 == "0/1") %>% count()



F560	<- moderate_load %>% filter(F560 == "0/1") %>% count()
F563	<- moderate_load %>% filter(F563 == "0/1") %>% count()
F565	<- moderate_load %>% filter(F565 == "0/1") %>% count()
F567	<- moderate_load %>% filter(F567 == "0/1") %>% count()
F568	<- moderate_load %>% filter(F568 == "0/1") %>% count()
F569	<- moderate_load %>% filter(F569 == "0/1") %>% count()
F570	<- moderate_load %>% filter(F570 == "0/1") %>% count()
F574	<- moderate_load %>% filter(F574 == "0/1") %>% count()
F579	<- moderate_load %>% filter(F579 == "0/1") %>% count()
F580	<- moderate_load %>% filter(F580 == "0/1") %>% count()
F581	<- moderate_load %>% filter(F581 == "0/1") %>% count()
F583	<- moderate_load %>% filter(F583 == "0/1") %>% count()
F587	<- moderate_load %>% filter(F587 == "0/1") %>% count()
F588	<- moderate_load %>% filter(F588 == "0/1") %>% count()
F593	<- moderate_load %>% filter(F593 == "0/1") %>% count()
F602	<- moderate_load %>% filter(F602 == "0/1") %>% count()
F603	<- moderate_load %>% filter(F603 == "0/1") %>% count()
F604	<- moderate_load %>% filter(F604 == "0/1") %>% count()
F605	<- moderate_load %>% filter(F605 == "0/1") %>% count()
F606	<- moderate_load %>% filter(F606 == "0/1") %>% count()
F608	<- moderate_load %>% filter(F608 == "0/1") %>% count()
F610	<- moderate_load %>% filter(F610 == "0/1") %>% count()



F611	<- moderate_load %>% filter(F611 == "0/1") %>% count()
F612	<- moderate_load %>% filter(F612 == "0/1") %>% count()
F618	<- moderate_load %>% filter(F618 == "0/1") %>% count()
F619	<- moderate_load %>% filter(F619 == "0/1") %>% count()
F623	<- moderate_load %>% filter(F623 == "0/1") %>% count()
F628	<- moderate_load %>% filter(F628 == "0/1") %>% count()
F629	<- moderate_load %>% filter(F629 == "0/1") %>% count()
F630	<- moderate_load %>% filter(F630 == "0/1") %>% count()
F631	<- moderate_load %>% filter(F631 == "0/1") %>% count()
F632	<- moderate_load %>% filter(F632 == "0/1") %>% count()
F634	<- moderate_load %>% filter(F634 == "0/1") %>% count()
F635	<- moderate_load %>% filter(F635 == "0/1") %>% count()
F637	<- moderate_load %>% filter(F637 == "0/1") %>% count()
F640	<- moderate_load %>% filter(F640 == "0/1") %>% count()
F641	<- moderate_load %>% filter(F641 == "0/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


mod_het_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                     ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                     ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                     ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                     ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                     ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                     ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                     ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                     ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                     ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                     ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                     ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                     ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                     ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                     ,F631,F632,F634,F635,F637,F640,F641)

mod_het_load<- melt(mod_het_load)
colnames(mod_het_load)<- c("ID", "MOD_HT_Alleles")

mod_het_load<- mod_het_load %>% mutate(MOD_HT_LOAD = MOD_HT_Alleles/(dim(moderate_load)[1]))
moderate<- left_join(mod_hm_load, mod_het_load)



### High Impact Variants 



i1 <- read_delim("all_ind1_high.geno", delim = "\t", col_names = T)
i2 <- read_delim("all_ind2_high.geno", delim = "\t", col_names = T)
i3 <- read_delim("all_ind3_high.geno", delim = "\t", col_names = T)
i4 <- read_delim("all_ind4_high.geno", delim = "\t", col_names = T)
i5 <- read_delim("all_ind5_high.geno", delim = "\t", col_names = T)
i6 <- read_delim("all_ind6_high.geno", delim = "\t", col_names = T)
i7 <- read_delim("all_ind7_high.geno", delim = "\t", col_names = T)
i8 <- read_delim("all_ind8_high.geno", delim = "\t", col_names = T)
i9 <- read_delim("all_ind9_high.geno", delim = "\t", col_names = T)
i10 <- read_delim("all_ind10_high.geno", delim = "\t", col_names = T)
i11 <- read_delim("all_ind11_high.geno", delim = "\t", col_names = T)
i12 <- read_delim("all_ind12_high.geno", delim = "\t", col_names = T)
i13 <- read_delim("all_ind13_high.geno", delim = "\t", col_names = T)
i14 <- read_delim("all_ind14_high.geno", delim = "\t", col_names = T)
i15 <- read_delim("all_ind15_high.geno", delim = "\t", col_names = T)
i16 <- read_delim("all_ind16_high.geno", delim = "\t", col_names = T)
i17 <- read_delim("all_ind17_high.geno", delim = "\t", col_names = T)
i18 <- read_delim("all_ind18_high.geno", delim = "\t", col_names = T)
i19 <- read_delim("all_ind19_high.geno", delim = "\t", col_names = T)
i20 <- read_delim("all_ind20_high.geno", delim = "\t", col_names = T)


i21 <- read_delim("all_ind21_high.geno", delim = "\t", col_names = T)
i22 <- read_delim("all_ind22_high.geno", delim = "\t", col_names = T)
i23 <- read_delim("all_ind23_high.geno", delim = "\t", col_names = T)
i24 <- read_delim("all_ind24_high.geno", delim = "\t", col_names = T)
i25 <- read_delim("all_ind25_high.geno", delim = "\t", col_names = T)
i26 <- read_delim("all_ind26_high.geno", delim = "\t", col_names = T)
i27 <- read_delim("all_ind27_high.geno", delim = "\t", col_names = T)
i28 <- read_delim("all_ind28_high.geno", delim = "\t", col_names = T)
i29 <- read_delim("all_ind29_high.geno", delim = "\t", col_names = T)
i30 <- read_delim("all_ind30_high.geno", delim = "\t", col_names = T)
i31 <- read_delim("all_ind31_high.geno", delim = "\t", col_names = T)
i32 <- read_delim("all_ind32_high.geno", delim = "\t", col_names = T)
i33 <- read_delim("all_ind33_high.geno", delim = "\t", col_names = T)
i34 <- read_delim("all_ind34_high.geno", delim = "\t", col_names = T)
i35 <- read_delim("all_ind35_high.geno", delim = "\t", col_names = T)
i36 <- read_delim("all_ind36_high.geno", delim = "\t", col_names = T)
i37 <- read_delim("all_ind37_high.geno", delim = "\t", col_names = T)
i38 <- read_delim("all_ind38_high.geno", delim = "\t", col_names = T)
i39 <- read_delim("all_ind39_high.geno", delim = "\t", col_names = T)
i40 <- read_delim("all_ind40_high.geno", delim = "\t", col_names = T)
i41 <- read_delim("all_ind41_high.geno", delim = "\t", col_names = T)
i42 <- read_delim("all_ind42_high.geno", delim = "\t", col_names = T)
i43 <- read_delim("all_ind43_high.geno", delim = "\t", col_names = T)
i44 <- read_delim("all_ind44_high.geno", delim = "\t", col_names = T)
i45 <- read_delim("all_ind45_high.geno", delim = "\t", col_names = T)
i46 <- read_delim("all_ind46_high.geno", delim = "\t", col_names = T)
i47 <- read_delim("all_ind47_high.geno", delim = "\t", col_names = T)
i48 <- read_delim("all_ind48_high.geno", delim = "\t", col_names = T)
i49 <- read_delim("all_ind49_high.geno", delim = "\t", col_names = T)


i50 <- read_delim("all_ind50_high.geno", delim = "\t", col_names = T)
i51 <- read_delim("all_ind51_high.geno", delim = "\t", col_names = T)
i52 <- read_delim("all_ind52_high.geno", delim = "\t", col_names = T)
i53 <- read_delim("all_ind53_high.geno", delim = "\t", col_names = T)
i54 <- read_delim("all_ind54_high.geno", delim = "\t", col_names = T)
i55 <- read_delim("all_ind55_high.geno", delim = "\t", col_names = T)
i56 <- read_delim("all_ind56_high.geno", delim = "\t", col_names = T)
i57 <- read_delim("all_ind57_high.geno", delim = "\t", col_names = T)
i58 <- read_delim("all_ind58_high.geno", delim = "\t", col_names = T)
i59 <- read_delim("all_ind59_high.geno", delim = "\t", col_names = T)
i60 <- read_delim("all_ind60_high.geno", delim = "\t", col_names = T)
i61 <- read_delim("all_ind61_high.geno", delim = "\t", col_names = T)
i62 <- read_delim("all_ind62_high.geno", delim = "\t", col_names = T)
i63 <- read_delim("all_ind63_high.geno", delim = "\t", col_names = T)
i64 <- read_delim("all_ind64_high.geno", delim = "\t", col_names = T)
i65 <- read_delim("all_ind65_high.geno", delim = "\t", col_names = T)
i66 <- read_delim("all_ind66_high.geno", delim = "\t", col_names = T)
i67 <- read_delim("all_ind67_high.geno", delim = "\t", col_names = T)
i68 <- read_delim("all_ind68_high.geno", delim = "\t", col_names = T)
i69 <- read_delim("all_ind69_high.geno", delim = "\t", col_names = T)
i70 <- read_delim("all_ind70_high.geno", delim = "\t", col_names = T)
i71 <- read_delim("all_ind71_high.geno", delim = "\t", col_names = T)
i72 <- read_delim("all_ind72_high.geno", delim = "\t", col_names = T)
i73 <- read_delim("all_ind73_high.geno", delim = "\t", col_names = T)
i74 <- read_delim("all_ind74_high.geno", delim = "\t", col_names = T)
i75 <- read_delim("all_ind75_high.geno", delim = "\t", col_names = T)
i76 <- read_delim("all_ind76_high.geno", delim = "\t", col_names = T)
i77 <- read_delim("all_ind77_high.geno", delim = "\t", col_names = T)
i78 <- read_delim("all_ind78_high.geno", delim = "\t", col_names = T)
i79 <- read_delim("all_ind79_high.geno", delim = "\t", col_names = T)
i80 <- read_delim("all_ind80_high.geno", delim = "\t", col_names = T)
i81 <- read_delim("all_ind81_high.geno", delim = "\t", col_names = T)
i82 <- read_delim("all_ind82_high.geno", delim = "\t", col_names = T)
i83 <- read_delim("all_ind83_high.geno", delim = "\t", col_names = T)
i84 <- read_delim("all_ind84_high.geno", delim = "\t", col_names = T)
i85 <- read_delim("all_ind85_high.geno", delim = "\t", col_names = T)
i86 <- read_delim("all_ind86_high.geno", delim = "\t", col_names = T)
i87 <- read_delim("all_ind87_high.geno", delim = "\t", col_names = T)
i88 <- read_delim("all_ind88_high.geno", delim = "\t", col_names = T)
i89 <- read_delim("all_ind89_high.geno", delim = "\t", col_names = T)
i90 <- read_delim("all_ind90_high.geno", delim = "\t", col_names = T)
i91 <- read_delim("all_ind91_high.geno", delim = "\t", col_names = T)
i92 <- read_delim("all_ind92_high.geno", delim = "\t", col_names = T)
i93 <- read_delim("all_ind93_high.geno", delim = "\t", col_names = T)
i94 <- read_delim("all_ind94_high.geno", delim = "\t", col_names = T)
i95 <- read_delim("all_ind95_high.geno", delim = "\t", col_names = T)
i96 <- read_delim("all_ind96_high.geno", delim = "\t", col_names = T)
i97 <- read_delim("all_ind97_high.geno", delim = "\t", col_names = T)
i98 <- read_delim("all_ind98_high.geno", delim = "\t", col_names = T)
i99 <- read_delim("all_ind99_high.geno", delim = "\t", col_names = T)


i100 <- read_delim("all_ind100_high.geno", delim = "\t", col_names = T)
i101 <- read_delim("all_ind101_high.geno", delim = "\t", col_names = T)
i102 <- read_delim("all_ind102_high.geno", delim = "\t", col_names = T)
i103 <- read_delim("all_ind103_high.geno", delim = "\t", col_names = T)
i104 <- read_delim("all_ind104_high.geno", delim = "\t", col_names = T)
i105 <- read_delim("all_ind105_high.geno", delim = "\t", col_names = T)
i106 <- read_delim("all_ind106_high.geno", delim = "\t", col_names = T)
i107 <- read_delim("all_ind107_high.geno", delim = "\t", col_names = T)
i108 <- read_delim("all_ind108_high.geno", delim = "\t", col_names = T)
i109 <- read_delim("all_ind109_high.geno", delim = "\t", col_names = T)
i110 <- read_delim("all_ind110_high.geno", delim = "\t", col_names = T)
i111 <- read_delim("all_ind111_high.geno", delim = "\t", col_names = T)
i112 <- read_delim("all_ind112_high.geno", delim = "\t", col_names = T)
i113 <- read_delim("all_ind113_high.geno", delim = "\t", col_names = T)
i114 <- read_delim("all_ind114_high.geno", delim = "\t", col_names = T)
i115 <- read_delim("all_ind115_high.geno", delim = "\t", col_names = T)
i116 <- read_delim("all_ind116_high.geno", delim = "\t", col_names = T)
i117 <- read_delim("all_ind117_high.geno", delim = "\t", col_names = T)
i118 <- read_delim("all_ind118_high.geno", delim = "\t", col_names = T)
i119 <- read_delim("all_ind119_high.geno", delim = "\t", col_names = T)
i120 <- read_delim("all_ind120_high.geno", delim = "\t", col_names = T)
i121 <- read_delim("all_ind121_high.geno", delim = "\t", col_names = T)
i122 <- read_delim("all_ind122_high.geno", delim = "\t", col_names = T)
i123 <- read_delim("all_ind123_high.geno", delim = "\t", col_names = T)
i124 <- read_delim("all_ind124_high.geno", delim = "\t", col_names = T)
i125 <- read_delim("all_ind125_high.geno", delim = "\t", col_names = T)
i126 <- read_delim("all_ind126_high.geno", delim = "\t", col_names = T)
i127 <- read_delim("all_ind127_high.geno", delim = "\t", col_names = T)
i128 <- read_delim("all_ind128_high.geno", delim = "\t", col_names = T)
i129 <- read_delim("all_ind129_high.geno", delim = "\t", col_names = T)


i130 <- read_delim("all_ind130_high.geno", delim = "\t", col_names = T)
i131 <- read_delim("all_ind131_high.geno", delim = "\t", col_names = T)
i132 <- read_delim("all_ind132_high.geno", delim = "\t", col_names = T)
i133 <- read_delim("all_ind133_high.geno", delim = "\t", col_names = T)
i134 <- read_delim("all_ind134_high.geno", delim = "\t", col_names = T)
i135 <- read_delim("all_ind135_high.geno", delim = "\t", col_names = T)
i136 <- read_delim("all_ind136_high.geno", delim = "\t", col_names = T)
i137 <- read_delim("all_ind137_high.geno", delim = "\t", col_names = T)
i138 <- read_delim("all_ind138_high.geno", delim = "\t", col_names = T)
i139 <- read_delim("all_ind139_high.geno", delim = "\t", col_names = T)
i140 <- read_delim("all_ind140_high.geno", delim = "\t", col_names = T)
i141 <- read_delim("all_ind141_high.geno", delim = "\t", col_names = T)
i142 <- read_delim("all_ind142_high.geno", delim = "\t", col_names = T)
i143 <- read_delim("all_ind143_high.geno", delim = "\t", col_names = T)
i144 <- read_delim("all_ind144_high.geno", delim = "\t", col_names = T)
i145 <- read_delim("all_ind145_high.geno", delim = "\t", col_names = T)
i146 <- read_delim("all_ind146_high.geno", delim = "\t", col_names = T)
i147 <- read_delim("all_ind147_high.geno", delim = "\t", col_names = T)
i148 <- read_delim("all_ind148_high.geno", delim = "\t", col_names = T)
i149 <- read_delim("all_ind149_high.geno", delim = "\t", col_names = T)
i150 <- read_delim("all_ind150_high.geno", delim = "\t", col_names = T)
i151 <- read_delim("all_ind151_high.geno", delim = "\t", col_names = T)
i152 <- read_delim("all_ind152_high.geno", delim = "\t", col_names = T)
i153 <- read_delim("all_ind153_high.geno", delim = "\t", col_names = T)
i154 <- read_delim("all_ind154_high.geno", delim = "\t", col_names = T)
i155 <- read_delim("all_ind155_high.geno", delim = "\t", col_names = T)
i156 <- read_delim("all_ind156_high.geno", delim = "\t", col_names = T)
i157 <- read_delim("all_ind157_high.geno", delim = "\t", col_names = T)
i158 <- read_delim("all_ind158_high.geno", delim = "\t", col_names = T)
i159 <- read_delim("all_ind159_high.geno", delim = "\t", col_names = T)
i160 <- read_delim("all_ind160_high.geno", delim = "\t", col_names = T)
i161 <- read_delim("all_ind161_high.geno", delim = "\t", col_names = T)
i162 <- read_delim("all_ind162_high.geno", delim = "\t", col_names = T)
i163 <- read_delim("all_ind163_high.geno", delim = "\t", col_names = T)
i164 <- read_delim("all_ind164_high.geno", delim = "\t", col_names = T)
i165 <- read_delim("all_ind165_high.geno", delim = "\t", col_names = T)
i166 <- read_delim("all_ind166_high.geno", delim = "\t", col_names = T)


high_load<- cbind(i1,i10,i100,i101,i102,i103,i104,i105,i106, i107,i108, i109, i11, i110, i111,i112,
                  i113,i114,i115,i116,i117,i118,i119,i12,i120,i121,i122,i123,i124,i125,i126,i127,i128,
                  i129,i13,i130,i131,i132,i133,i134,i135,i136,i137,i138,i139,i14,i140,i141,i142,i143,
                  i144,i145,i146,i147,i148,i149,i15,i150,i151,i152,i153,i154,i155,i156,i157,i158,i159,
                  i16,i160, i161,i162,i163,i164,i165,i166,i17,i18,i19,i2,i20,i21,i22,i23,i24,i25,i26,
                  i27,i28,i29,i3,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i4,i40,i41,i42,i43,i44,i45,
                  i46,i47,i48,i49,i5,i50,i51,i52,i53,i54,i55,i56,i57,i58,i59,i6,i60,i61,i62,i63,i64,
                  i65,i66,i67,i68,i69,i7,i70,i71,i72,i73,i74,i75,i76,i77,i78,i79,i8,i80,i81,i82,i83,
                  i84,i85,i86,i87,i88,i89,i9,i90,i91,i92,i93,i94,i95,i96,i97,i98,i99)

# head(high_load[-c(1:236),])



colnames(high_load)<- high_load[237,]
high_load<- high_load[-c(1:236),] 

### Low Impact - homozygous

F370 	<- high_load %>% filter(F370 == "1/1") %>% count()
F372	<- high_load %>% filter(F372 == "1/1") %>% count()
F373	<- high_load %>% filter(F373 == "1/1") %>% count()
F374	<- high_load %>% filter(F374 == "1/1") %>% count()
F375	<- high_load %>% filter(F375 == "1/1") %>% count()
F376	<- high_load %>% filter(F376 == "1/1") %>% count()
F377	<- high_load %>% filter(F377 == "1/1") %>% count()
F378	<- high_load %>% filter(F378 == "1/1") %>% count()
F379	<- high_load %>% filter(F379 == "1/1") %>% count()
F380	<- high_load %>% filter(F380 == "1/1") %>% count()
F381	<- high_load %>% filter(F381 == "1/1") %>% count()
F382	<- high_load %>% filter(F382 == "1/1") %>% count()
F384	<- high_load %>% filter(F384 == "1/1") %>% count()
F385	<- high_load %>% filter(F385 == "1/1") %>% count()
F386	<- high_load %>% filter(F386 == "1/1") %>% count()
F388	<- high_load %>% filter(F388 == "1/1") %>% count()
F389	<- high_load %>% filter(F389 == "1/1") %>% count()
F390	<- high_load %>% filter(F390 == "1/1") %>% count()
F391	<- high_load %>% filter(F391 == "1/1") %>% count()
F392	<- high_load %>% filter(F392 == "1/1") %>% count()
F395	<- high_load %>% filter(F395 == "1/1") %>% count()
F396	<- high_load %>% filter(F396 == "1/1") %>% count()
F397	<- high_load %>% filter(F397 == "1/1") %>% count()
F398	<- high_load %>% filter(F398 == "1/1") %>% count()
F399	<- high_load %>% filter(F399 == "1/1") %>% count()
F400	<- high_load %>% filter(F400 == "1/1") %>% count()
F401	<- high_load %>% filter(F401 == "1/1") %>% count()
F402	<- high_load %>% filter(F402 == "1/1") %>% count()
F403	<- high_load %>% filter(F403 == "1/1") %>% count()
F404	<- high_load %>% filter(F404 == "1/1") %>% count()
F405	<- high_load %>% filter(F405 == "1/1") %>% count()
F406	<- high_load %>% filter(F406 == "1/1") %>% count()
F407	<- high_load %>% filter(F407 == "1/1") %>% count()
F408	<- high_load %>% filter(F408 == "1/1") %>% count()
F409	<- high_load %>% filter(F409 == "1/1") %>% count()
F410	<- high_load %>% filter(F410 == "1/1") %>% count()



F411	<- high_load %>% filter(F411 == "1/1") %>% count()
F412	<- high_load %>% filter(F412 == "1/1") %>% count()
F413	<- high_load %>% filter(F413 == "1/1") %>% count()
F414	<- high_load %>% filter(F414 == "1/1") %>% count()
F415	<- high_load %>% filter(F415 == "1/1") %>% count()
F416	<- high_load %>% filter(F416 == "1/1") %>% count()
F417	<- high_load %>% filter(F417 == "1/1") %>% count()
F419	<- high_load %>% filter(F419 == "1/1") %>% count()
F420	<- high_load %>% filter(F420 == "1/1") %>% count()
F421	<- high_load %>% filter(F421 == "1/1") %>% count()
F422	<- high_load %>% filter(F422 == "1/1") %>% count()
F424	<- high_load %>% filter(F424 == "1/1") %>% count()
F425	<- high_load %>% filter(F425 == "1/1") %>% count()
F427	<- high_load %>% filter(F427 == "1/1") %>% count()
F428	<- high_load %>% filter(F428 == "1/1") %>% count()
F429	<- high_load %>% filter(F429 == "1/1") %>% count()
F431	<- high_load %>% filter(F431 == "1/1") %>% count()
F434	<- high_load %>% filter(F434 == "1/1") %>% count()
F437	<- high_load %>% filter(F437 == "1/1") %>% count()
F438	<- high_load %>% filter(F438 == "1/1") %>% count()
F441	<- high_load %>% filter(F441 == "1/1") %>% count()
F442	<- high_load %>% filter(F442 == "1/1") %>% count()
F443	<- high_load %>% filter(F443 == "1/1") %>% count()



F445	<- high_load %>% filter(F445 == "1/1") %>% count()
F450	<- high_load %>% filter(F450 == "1/1") %>% count()
F451	<- high_load %>% filter(F451 == "1/1") %>% count()
F457	<- high_load %>% filter(F457 == "1/1") %>% count()
F458	<- high_load %>% filter(F458 == "1/1") %>% count()
F461	<- high_load %>% filter(F461 == "1/1") %>% count()
F463	<- high_load %>% filter(F463 == "1/1") %>% count()
F465	<- high_load %>% filter(F465 == "1/1") %>% count()
F466	<- high_load %>% filter(F466 == "1/1") %>% count()
F473	<- high_load %>% filter(F473 == "1/1") %>% count()
F474	<- high_load %>% filter(F474 == "1/1") %>% count()
F476	<- high_load %>% filter(F476 == "1/1") %>% count()
F477	<- high_load %>% filter(F477 == "1/1") %>% count()
F479	<- high_load %>% filter(F479 == "1/1") %>% count()
F481	<- high_load %>% filter(F481 == "1/1") %>% count()
F482	<- high_load %>% filter(F482 == "1/1") %>% count()
F483	<- high_load %>% filter(F483 == "1/1") %>% count()
F484	<- high_load %>% filter(F484 == "1/1") %>% count()
F487	<- high_load %>% filter(F487 == "1/1") %>% count()
F488	<- high_load %>% filter(F488 == "1/1") %>% count()
F489	<- high_load %>% filter(F489 == "1/1") %>% count()
F491	<- high_load %>% filter(F491 == "1/1") %>% count()
F492	<- high_load %>% filter(F492 == "1/1") %>% count()



F493	<- high_load %>% filter(F493 == "1/1") %>% count()
F494	<- high_load %>% filter(F494 == "1/1") %>% count()
F495	<- high_load %>% filter(F495 == "1/1") %>% count()
F497	<- high_load %>% filter(F497 == "1/1") %>% count()
F499	<- high_load %>% filter(F499 == "1/1") %>% count()
F501	<- high_load %>% filter(F501 == "1/1") %>% count()
F502	<- high_load %>% filter(F502 == "1/1") %>% count()
F504	<- high_load %>% filter(F504 == "1/1") %>% count()
F505	<- high_load %>% filter(F505 == "1/1") %>% count()
F506	<- high_load %>% filter(F506 == "1/1") %>% count()
F507	<- high_load %>% filter(F507 == "1/1") %>% count()
F508	<- high_load %>% filter(F508 == "1/1") %>% count()
F509	<- high_load %>% filter(F509 == "1/1") %>% count()
F510	<- high_load %>% filter(F510 == "1/1") %>% count()
F511	<- high_load %>% filter(F511 == "1/1") %>% count()
F512	<- high_load %>% filter(F512 == "1/1") %>% count()



F513	<- high_load %>% filter(F513 == "1/1") %>% count()
F515	<- high_load %>% filter(F515 == "1/1") %>% count()
F516	<- high_load %>% filter(F516 == "1/1") %>% count()
F518	<- high_load %>% filter(F518 == "1/1") %>% count()
F519	<- high_load %>% filter(F519 == "1/1") %>% count()
F520	<- high_load %>% filter(F520 == "1/1") %>% count()
F521	<- high_load %>% filter(F521 == "1/1") %>% count()
F522	<- high_load %>% filter(F522 == "1/1") %>% count()
F523	<- high_load %>% filter(F523 == "1/1") %>% count()
F525	<- high_load %>% filter(F525 == "1/1") %>% count()
F526	<- high_load %>% filter(F526 == "1/1") %>% count()
F527	<- high_load %>% filter(F527 == "1/1") %>% count()
F528	<- high_load %>% filter(F528 == "1/1") %>% count()
F529	<- high_load %>% filter(F529 == "1/1") %>% count()
F530	<- high_load %>% filter(F530 == "1/1") %>% count()


F531	<- high_load %>% filter(F531 == "1/1") %>% count()
F532	<- high_load %>% filter(F532 == "1/1") %>% count()
F534	<- high_load %>% filter(F534 == "1/1") %>% count()
F539	<- high_load %>% filter(F539 == "1/1") %>% count()
F540	<- high_load %>% filter(F540 == "1/1") %>% count()
F541	<- high_load %>% filter(F541 == "1/1") %>% count()
F542	<- high_load %>% filter(F542 == "1/1") %>% count()
F543	<- high_load %>% filter(F543 == "1/1") %>% count()
F544	<- high_load %>% filter(F544 == "1/1") %>% count()
F545	<- high_load %>% filter(F545 == "1/1") %>% count()
F546	<- high_load %>% filter(F546 == "1/1") %>% count()
F549	<- high_load %>% filter(F549 == "1/1") %>% count()
F556	<- high_load %>% filter(F556 == "1/1") %>% count()
F557	<- high_load %>% filter(F557 == "1/1") %>% count()
F558	<- high_load %>% filter(F558 == "1/1") %>% count()
F559	<- high_load %>% filter(F559 == "1/1") %>% count()



F560	<- high_load %>% filter(F560 == "1/1") %>% count()
F563	<- high_load %>% filter(F563 == "1/1") %>% count()
F565	<- high_load %>% filter(F565 == "1/1") %>% count()
F567	<- high_load %>% filter(F567 == "1/1") %>% count()
F568	<- high_load %>% filter(F568 == "1/1") %>% count()
F569	<- high_load %>% filter(F569 == "1/1") %>% count()
F570	<- high_load %>% filter(F570 == "1/1") %>% count()
F574	<- high_load %>% filter(F574 == "1/1") %>% count()
F579	<- high_load %>% filter(F579 == "1/1") %>% count()
F580	<- high_load %>% filter(F580 == "1/1") %>% count()
F581	<- high_load %>% filter(F581 == "1/1") %>% count()
F583	<- high_load %>% filter(F583 == "1/1") %>% count()
F587	<- high_load %>% filter(F587 == "1/1") %>% count()
F588	<- high_load %>% filter(F588 == "1/1") %>% count()
F593	<- high_load %>% filter(F593 == "1/1") %>% count()
F602	<- high_load %>% filter(F602 == "1/1") %>% count()
F603	<- high_load %>% filter(F603 == "1/1") %>% count()
F604	<- high_load %>% filter(F604 == "1/1") %>% count()
F605	<- high_load %>% filter(F605 == "1/1") %>% count()
F606	<- high_load %>% filter(F606 == "1/1") %>% count()
F608	<- high_load %>% filter(F608 == "1/1") %>% count()
F610	<- high_load %>% filter(F610 == "1/1") %>% count()



F611	<- high_load %>% filter(F611 == "1/1") %>% count()
F612	<- high_load %>% filter(F612 == "1/1") %>% count()
F618	<- high_load %>% filter(F618 == "1/1") %>% count()
F619	<- high_load %>% filter(F619 == "1/1") %>% count()
F623	<- high_load %>% filter(F623 == "1/1") %>% count()
F628	<- high_load %>% filter(F628 == "1/1") %>% count()
F629	<- high_load %>% filter(F629 == "1/1") %>% count()
F630	<- high_load %>% filter(F630 == "1/1") %>% count()
F631	<- high_load %>% filter(F631 == "1/1") %>% count()
F632	<- high_load %>% filter(F632 == "1/1") %>% count()
F634	<- high_load %>% filter(F634 == "1/1") %>% count()
F635	<- high_load %>% filter(F635 == "1/1") %>% count()
F637	<- high_load %>% filter(F637 == "1/1") %>% count()
F640	<- high_load %>% filter(F640 == "1/1") %>% count()
F641	<- high_load %>% filter(F641 == "1/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


high_hm_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                     ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                     ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                     ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                     ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                     ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                     ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                     ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                     ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                     ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                     ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                     ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                     ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                     ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                     ,F631,F632,F634,F635,F637,F640,F641)


high_hm_load<- melt(high_hm_load)
colnames(high_hm_load)<- c("ID", "HIGH_HM_Alleles")


high_hm_load<- high_hm_load %>% mutate(HIGH_HM_LOAD = HIGH_HM_Alleles/(dim(high_load)[1]))



### Non-coding - heterozygous

F370 	<- high_load %>% filter(F370 == "0/1") %>% count()
F372	<- high_load %>% filter(F372 == "0/1") %>% count()
F373	<- high_load %>% filter(F373 == "0/1") %>% count()
F374	<- high_load %>% filter(F374 == "0/1") %>% count()
F375	<- high_load %>% filter(F375 == "0/1") %>% count()
F376	<- high_load %>% filter(F376 == "0/1") %>% count()
F377	<- high_load %>% filter(F377 == "0/1") %>% count()
F378	<- high_load %>% filter(F378 == "0/1") %>% count()
F379	<- high_load %>% filter(F379 == "0/1") %>% count()
F380	<- high_load %>% filter(F380 == "0/1") %>% count()
F381	<- high_load %>% filter(F381 == "0/1") %>% count()
F382	<- high_load %>% filter(F382 == "0/1") %>% count()
F384	<- high_load %>% filter(F384 == "0/1") %>% count()
F385	<- high_load %>% filter(F385 == "0/1") %>% count()
F386	<- high_load %>% filter(F386 == "0/1") %>% count()
F388	<- high_load %>% filter(F388 == "0/1") %>% count()
F389	<- high_load %>% filter(F389 == "0/1") %>% count()
F390	<- high_load %>% filter(F390 == "0/1") %>% count()
F391	<- high_load %>% filter(F391 == "0/1") %>% count()
F392	<- high_load %>% filter(F392 == "0/1") %>% count()
F395	<- high_load %>% filter(F395 == "0/1") %>% count()
F396	<- high_load %>% filter(F396 == "0/1") %>% count()
F397	<- high_load %>% filter(F397 == "0/1") %>% count()
F398	<- high_load %>% filter(F398 == "0/1") %>% count()
F399	<- high_load %>% filter(F399 == "0/1") %>% count()
F400	<- high_load %>% filter(F400 == "0/1") %>% count()
F401	<- high_load %>% filter(F401 == "0/1") %>% count()
F402	<- high_load %>% filter(F402 == "0/1") %>% count()
F403	<- high_load %>% filter(F403 == "0/1") %>% count()
F404	<- high_load %>% filter(F404 == "0/1") %>% count()
F405	<- high_load %>% filter(F405 == "0/1") %>% count()
F406	<- high_load %>% filter(F406 == "0/1") %>% count()
F407	<- high_load %>% filter(F407 == "0/1") %>% count()
F408	<- high_load %>% filter(F408 == "0/1") %>% count()
F409	<- high_load %>% filter(F409 == "0/1") %>% count()
F410	<- high_load %>% filter(F410 == "0/1") %>% count()



F411	<- high_load %>% filter(F411 == "0/1") %>% count()
F412	<- high_load %>% filter(F412 == "0/1") %>% count()
F413	<- high_load %>% filter(F413 == "0/1") %>% count()
F414	<- high_load %>% filter(F414 == "0/1") %>% count()
F415	<- high_load %>% filter(F415 == "0/1") %>% count()
F416	<- high_load %>% filter(F416 == "0/1") %>% count()
F417	<- high_load %>% filter(F417 == "0/1") %>% count()
F419	<- high_load %>% filter(F419 == "0/1") %>% count()
F420	<- high_load %>% filter(F420 == "0/1") %>% count()
F421	<- high_load %>% filter(F421 == "0/1") %>% count()
F422	<- high_load %>% filter(F422 == "0/1") %>% count()
F424	<- high_load %>% filter(F424 == "0/1") %>% count()
F425	<- high_load %>% filter(F425 == "0/1") %>% count()
F427	<- high_load %>% filter(F427 == "0/1") %>% count()
F428	<- high_load %>% filter(F428 == "0/1") %>% count()
F429	<- high_load %>% filter(F429 == "0/1") %>% count()
F431	<- high_load %>% filter(F431 == "0/1") %>% count()
F434	<- high_load %>% filter(F434 == "0/1") %>% count()
F437	<- high_load %>% filter(F437 == "0/1") %>% count()
F438	<- high_load %>% filter(F438 == "0/1") %>% count()
F441	<- high_load %>% filter(F441 == "0/1") %>% count()
F442	<- high_load %>% filter(F442 == "0/1") %>% count()
F443	<- high_load %>% filter(F443 == "0/1") %>% count()



F445	<- high_load %>% filter(F445 == "0/1") %>% count()
F450	<- high_load %>% filter(F450 == "0/1") %>% count()
F451	<- high_load %>% filter(F451 == "0/1") %>% count()
F457	<- high_load %>% filter(F457 == "0/1") %>% count()
F458	<- high_load %>% filter(F458 == "0/1") %>% count()
F461	<- high_load %>% filter(F461 == "0/1") %>% count()
F463	<- high_load %>% filter(F463 == "0/1") %>% count()
F465	<- high_load %>% filter(F465 == "0/1") %>% count()
F466	<- high_load %>% filter(F466 == "0/1") %>% count()
F473	<- high_load %>% filter(F473 == "0/1") %>% count()
F474	<- high_load %>% filter(F474 == "0/1") %>% count()
F476	<- high_load %>% filter(F476 == "0/1") %>% count()
F477	<- high_load %>% filter(F477 == "0/1") %>% count()
F479	<- high_load %>% filter(F479 == "0/1") %>% count()
F481	<- high_load %>% filter(F481 == "0/1") %>% count()
F482	<- high_load %>% filter(F482 == "0/1") %>% count()
F483	<- high_load %>% filter(F483 == "0/1") %>% count()
F484	<- high_load %>% filter(F484 == "0/1") %>% count()
F487	<- high_load %>% filter(F487 == "0/1") %>% count()
F488	<- high_load %>% filter(F488 == "0/1") %>% count()
F489	<- high_load %>% filter(F489 == "0/1") %>% count()
F491	<- high_load %>% filter(F491 == "0/1") %>% count()
F492	<- high_load %>% filter(F492 == "0/1") %>% count()



F493	<- high_load %>% filter(F493 == "0/1") %>% count()
F494	<- high_load %>% filter(F494 == "0/1") %>% count()
F495	<- high_load %>% filter(F495 == "0/1") %>% count()
F497	<- high_load %>% filter(F497 == "0/1") %>% count()
F499	<- high_load %>% filter(F499 == "0/1") %>% count()
F501	<- high_load %>% filter(F501 == "0/1") %>% count()
F502	<- high_load %>% filter(F502 == "0/1") %>% count()
F504	<- high_load %>% filter(F504 == "0/1") %>% count()
F505	<- high_load %>% filter(F505 == "0/1") %>% count()
F506	<- high_load %>% filter(F506 == "0/1") %>% count()
F507	<- high_load %>% filter(F507 == "0/1") %>% count()
F508	<- high_load %>% filter(F508 == "0/1") %>% count()
F509	<- high_load %>% filter(F509 == "0/1") %>% count()
F510	<- high_load %>% filter(F510 == "0/1") %>% count()
F511	<- high_load %>% filter(F511 == "0/1") %>% count()
F512	<- high_load %>% filter(F512 == "0/1") %>% count()



F513	<- high_load %>% filter(F513 == "0/1") %>% count()
F515	<- high_load %>% filter(F515 == "0/1") %>% count()
F516	<- high_load %>% filter(F516 == "0/1") %>% count()
F518	<- high_load %>% filter(F518 == "0/1") %>% count()
F519	<- high_load %>% filter(F519 == "0/1") %>% count()
F520	<- high_load %>% filter(F520 == "0/1") %>% count()
F521	<- high_load %>% filter(F521 == "0/1") %>% count()
F522	<- high_load %>% filter(F522 == "0/1") %>% count()
F523	<- high_load %>% filter(F523 == "0/1") %>% count()
F525	<- high_load %>% filter(F525 == "0/1") %>% count()
F526	<- high_load %>% filter(F526 == "0/1") %>% count()
F527	<- high_load %>% filter(F527 == "0/1") %>% count()
F528	<- high_load %>% filter(F528 == "0/1") %>% count()
F529	<- high_load %>% filter(F529 == "0/1") %>% count()
F530	<- high_load %>% filter(F530 == "0/1") %>% count()


F531	<- high_load %>% filter(F531 == "0/1") %>% count()
F532	<- high_load %>% filter(F532 == "0/1") %>% count()
F534	<- high_load %>% filter(F534 == "0/1") %>% count()
F539	<- high_load %>% filter(F539 == "0/1") %>% count()
F540	<- high_load %>% filter(F540 == "0/1") %>% count()
F541	<- high_load %>% filter(F541 == "0/1") %>% count()
F542	<- high_load %>% filter(F542 == "0/1") %>% count()
F543	<- high_load %>% filter(F543 == "0/1") %>% count()
F544	<- high_load %>% filter(F544 == "0/1") %>% count()
F545	<- high_load %>% filter(F545 == "0/1") %>% count()
F546	<- high_load %>% filter(F546 == "0/1") %>% count()
F549	<- high_load %>% filter(F549 == "0/1") %>% count()
F556	<- high_load %>% filter(F556 == "0/1") %>% count()
F557	<- high_load %>% filter(F557 == "0/1") %>% count()
F558	<- high_load %>% filter(F558 == "0/1") %>% count()
F559	<- high_load %>% filter(F559 == "0/1") %>% count()



F560	<- high_load %>% filter(F560 == "0/1") %>% count()
F563	<- high_load %>% filter(F563 == "0/1") %>% count()
F565	<- high_load %>% filter(F565 == "0/1") %>% count()
F567	<- high_load %>% filter(F567 == "0/1") %>% count()
F568	<- high_load %>% filter(F568 == "0/1") %>% count()
F569	<- high_load %>% filter(F569 == "0/1") %>% count()
F570	<- high_load %>% filter(F570 == "0/1") %>% count()
F574	<- high_load %>% filter(F574 == "0/1") %>% count()
F579	<- high_load %>% filter(F579 == "0/1") %>% count()
F580	<- high_load %>% filter(F580 == "0/1") %>% count()
F581	<- high_load %>% filter(F581 == "0/1") %>% count()
F583	<- high_load %>% filter(F583 == "0/1") %>% count()
F587	<- high_load %>% filter(F587 == "0/1") %>% count()
F588	<- high_load %>% filter(F588 == "0/1") %>% count()
F593	<- high_load %>% filter(F593 == "0/1") %>% count()
F602	<- high_load %>% filter(F602 == "0/1") %>% count()
F603	<- high_load %>% filter(F603 == "0/1") %>% count()
F604	<- high_load %>% filter(F604 == "0/1") %>% count()
F605	<- high_load %>% filter(F605 == "0/1") %>% count()
F606	<- high_load %>% filter(F606 == "0/1") %>% count()
F608	<- high_load %>% filter(F608 == "0/1") %>% count()
F610	<- high_load %>% filter(F610 == "0/1") %>% count()



F611	<- high_load %>% filter(F611 == "0/1") %>% count()
F612	<- high_load %>% filter(F612 == "0/1") %>% count()
F618	<- high_load %>% filter(F618 == "0/1") %>% count()
F619	<- high_load %>% filter(F619 == "0/1") %>% count()
F623	<- high_load %>% filter(F623 == "0/1") %>% count()
F628	<- high_load %>% filter(F628 == "0/1") %>% count()
F629	<- high_load %>% filter(F629 == "0/1") %>% count()
F630	<- high_load %>% filter(F630 == "0/1") %>% count()
F631	<- high_load %>% filter(F631 == "0/1") %>% count()
F632	<- high_load %>% filter(F632 == "0/1") %>% count()
F634	<- high_load %>% filter(F634 == "0/1") %>% count()
F635	<- high_load %>% filter(F635 == "0/1") %>% count()
F637	<- high_load %>% filter(F637 == "0/1") %>% count()
F640	<- high_load %>% filter(F640 == "0/1") %>% count()
F641	<- high_load %>% filter(F641 == "0/1") %>% count()

colnames(F370)<- "F370"
colnames(F372)<- "F372"
colnames(F373)<- "F373"
colnames(F374)<- "F374"
colnames(F375)<- "F375"
colnames(F376)<- "F376"
colnames(F377)<- "F377"
colnames(F378)<- "F378"
colnames(F379)<- "F379"
colnames(F380)<- "F380"
colnames(F381)<- "F381"
colnames(F382)<- "F382"
colnames(F384)<- "F384"
colnames(F385)<- "F385"
colnames(F386)<- "F386"
colnames(F388)<- "F388"
colnames(F389)<- "F389"
colnames(F390)<- "F390"
colnames(F391)<- "F391"
colnames(F392)<- "F392"
colnames(F395)<- "F395"
colnames(F396)<- "F396"
colnames(F397)<- "F397"
colnames(F398)<- "F398"
colnames(F399)<- "F399"
colnames(F400)<- "F400"
colnames(F401)<- "F401"
colnames(F402)<- "F402"
colnames(F403)<- "F403"
colnames(F404)<- "F404"
colnames(F405)<- "F405"
colnames(F406)<- "F406"
colnames(F407)<- "F407"
colnames(F408)<- "F408"
colnames(F409)<- "F409"
colnames(F410)<- "F410"
colnames(F411)<- "F411"
colnames(F412)<- "F412"
colnames(F413)<- "F413"
colnames(F414)<- "F414"
colnames(F415)<- "F415"
colnames(F416)<- "F416"
colnames(F417)<- "F417"
colnames(F419)<- "F419"
colnames(F420)<- "F420"
colnames(F421)<- "F421"
colnames(F422)<- "F422"
colnames(F424)<- "F424"
colnames(F425)<- "F425"
colnames(F427)<- "F427"
colnames(F428)<- "F428"
colnames(F429)<- "F429"
colnames(F431)<- "F431"
colnames(F434)<- "F434"
colnames(F437)<- "F437"
colnames(F438)<- "F438"
colnames(F441)<- "F441"
colnames(F442)<- "F442"
colnames(F443)<- "F443"
colnames(F445)<- "F445"
colnames(F450)<- "F450"
colnames(F451)<- "F451"
colnames(F457)<- "F457"
colnames(F458)<- "F458"
colnames(F461)<- "F461"
colnames(F463)<- "F463"
colnames(F465)<- "F465"
colnames(F466)<- "F466"
colnames(F473)<- "F473"
colnames(F474)<- "F474"
colnames(F476)<- "F476"
colnames(F477)<- "F477"
colnames(F479)<- "F479"
colnames(F481)<- "F481"
colnames(F482)<- "F482"
colnames(F483)<- "F483"
colnames(F484)<- "F484"
colnames(F487)<- "F487"
colnames(F488)<- "F488"
colnames(F489)<- "F489"
colnames(F491)<- "F491"
colnames(F492)<- "F492"
colnames(F493)<- "F493"
colnames(F494)<- "F494"
colnames(F495)<- "F495"
colnames(F497)<- "F497"
colnames(F499)<- "F499"
colnames(F501)<- "F501"
colnames(F502)<- "F502"
colnames(F504)<- "F504"
colnames(F505)<- "F505"
colnames(F506)<- "F506"
colnames(F507)<- "F507"
colnames(F508)<- "F508"
colnames(F509)<- "F509"
colnames(F510)<- "F510"
colnames(F511)<- "F511"
colnames(F512)<- "F512"
colnames(F513)<- "F513"
colnames(F515)<- "F515"
colnames(F516)<- "F516"
colnames(F518)<- "F518"
colnames(F519)<- "F519"
colnames(F520)<- "F520"
colnames(F521)<- "F521"
colnames(F522)<- "F522"
colnames(F523)<- "F523"
colnames(F525)<- "F525"
colnames(F526)<- "F526"
colnames(F527)<- "F527"
colnames(F528)<- "F528"
colnames(F529)<- "F529"
colnames(F530)<- "F530"
colnames(F531)<- "F531"
colnames(F532)<- "F532"
colnames(F534)<- "F534"
colnames(F539)<- "F539"
colnames(F540)<- "F540"
colnames(F541)<- "F541"
colnames(F542)<- "F542"
colnames(F543)<- "F543"
colnames(F544)<- "F544"
colnames(F545)<- "F545"
colnames(F546)<- "F546"
colnames(F549)<- "F549"
colnames(F556)<- "F556"
colnames(F557)<- "F557"
colnames(F558)<- "F558"
colnames(F559)<- "F559"
colnames(F560)<- "F560"
colnames(F563)<- "F563"
colnames(F565)<- "F565"
colnames(F567)<- "F567"
colnames(F568)<- "F568"
colnames(F569)<- "F569"
colnames(F570)<- "F570"
colnames(F574)<- "F574"
colnames(F579)<- "F579"
colnames(F580)<- "F580"
colnames(F581)<- "F581"
colnames(F583)<- "F583"
colnames(F587)<- "F587"
colnames(F588)<- "F588"
colnames(F593)<- "F593"
colnames(F602)<- "F602"
colnames(F603)<- "F603"
colnames(F604)<- "F604"
colnames(F605)<- "F605"
colnames(F606)<- "F606"
colnames(F608)<- "F608"
colnames(F610)<- "F610"
colnames(F611)<- "F611"
colnames(F612)<- "F612"
colnames(F618)<- "F618"
colnames(F619)<- "F619"
colnames(F623)<- "F623"
colnames(F628)<- "F628"
colnames(F629)<- "F629"
colnames(F630)<- "F630"
colnames(F631)<- "F631"
colnames(F632)<- "F632"
colnames(F634)<- "F634"
colnames(F635)<- "F635"
colnames(F637)<- "F637"
colnames(F640)<- "F640"
colnames(F641)<- "F641"


high_het_load<- cbind(F370,F372,F373,F374,F375,F376,F377,F378,F379,F380,F381,F382
                      ,F384,F385,F386,F388,F389,F390,F391,F392,F395,F396,F397,F398
                      ,F399,F400,F401,F402,F403,F404,F405,F406,F407,F408,F409,F410,F411,F412
                      ,F413,F414,F415,F416,F417,F419,F420,F421,F422,F424,F425,F427
                      ,F428,F429,F431,F434,F437,F438,F441,F442,F443,F445,F450
                      ,F451,F457,F458,F461,F463,F465,F466,F473,F474,F476,F477
                      ,F479,F481,F482,F483,F484,F487,F488,F489,F491,F492,F493
                      ,F494,F495,F497,F499,F501,F502,F504,F505,F506,F507
                      ,F508,F509,F510,F511,F512,F513,F515,F516,F518,F519,F520
                      ,F521,F522,F523,F525,F526,F527,F528,F529,F530,F531,F532
                      ,F534,F539,F540,F541,F542,F543,F544,F545,F546,F549,F556
                      ,F557,F558,F559,F560,F563,F565,F567,F568,F569,F570,F574
                      ,F579,F580,F581,F583,F587,F588,F593,F602,F603,F604,F605
                      ,F606,F608,F610,F611,F612,F618,F619,F623,F628,F629,F630
                      ,F631,F632,F634,F635,F637,F640,F641)

high_het_load<- melt(high_het_load)
colnames(high_het_load)<- c("ID", "HIGH_HT_Alleles")

high_het_load<- high_het_load %>% mutate(HIGH_HT_LOAD = HIGH_HT_Alleles/(dim(high_load)[1]))
high<- left_join(high_hm_load, high_het_load)



## Combine All Files 

all_load<- left_join(nc,low)
all_load<- left_join(all_load, moderate)
all_load<- left_join(all_load, high)


write.csv(all_load, "all_load.csv")


