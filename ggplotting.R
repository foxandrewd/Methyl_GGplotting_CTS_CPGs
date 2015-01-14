

REF2_n=as.numeric( Mv[CTS_NEUTRO, c(i_n, i_4, i_8, i_k, i_b, i_m)])

sink("cts_NU.csv")
for(i in 1:288){cat(REF2_n[i], "\n")}
sink()

cts_NU = read.csv("cts_NU.csv", sep="\t")

cts_NU$source = factor(cts_NU$source, labels=c("N","T4","T8","K","B","M"))


pltNU = ggplot(cts_NU, aes(source, cts_NU, fill=factor(source))) + geom_boxplot() + ggtitle("reference N") + theme(legend.position="none", axis.text=element_text(size=28, color="black"), axis.title.x=element_blank(), axis.title.y=element_blank(),axis.title=element_text(size=42,face="bold"), plot.title=element_text(size=45)) + ylim(-5,5)


grid.arrange(pltNU, pltT4, pltT8, pltNK, pltBC, pltMO, ncol=6)