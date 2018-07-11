#Violin plot

library(ggplot2)
library(vioplot)

all<-read.delim("All_ViolinPlot.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
RiboProteins<-read.delim("RP_ViolinPlot.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
CD<-read.delim("CD_ViolinPlot.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
HACA<-read.delim("HACA_ViolinPlot.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
D2null_all<-read.delim("D2_ReadThrough.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
Wt_all<-read.delim("Wt_ReadThrough.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
mRNA<-read.delim("mRNA_ViolinPlotData.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)



l <- c(1)
mRNA <- mRNA[,l]
all <-all[,l]
RiboProteins<- RiboProteins[,l]
CD <-CD[,l]
HACA <-HACA[,l]
D2null_all<-D2null_all[,l]
Wt_all<-Wt_all[,l]

vioplot(all,RiboProteins,CD,HACA, names=c("All","RP", "C/D","H/ACA"), col="blue")
title("FPKM Fold Change")


vioplot(D2null_all,Wt_all, names=c("Dbp2-null","Wt"), col="blue")
