
setwd("~/Documents/methyl/epi_data")

fil <- read.csv("Naeem_Haroon_filter_450kchip.csv", head=T)

keep <- fil[fil$Flag.discard.keep.=="keep",]
load("Mvals_betaThreshold0_001.RData")
load("Mlincheck.RData")

## We now have the main datasets

MvKeep = Mv[ as.character(keep$probe) , ]
MlinKeep = Mlin[ as.character(keep$probe) , ]

wasKept_Mv = rownames(MvKeep)        # 
wasKept_Mlin = rownames(MlinKeep)    # 

### save(MvKeep, file="Mvals_Filtered_betaThreshold0_001.RData")
### save(MlinKeep, file="Mlincheck_Filtered.RData")


