#Metagene Data plots

#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R")
dir()

#make tables for main AUG
setwd("C:/Users/fated/OneDrive/R/YeastGenomicAnnotation_Iyer")
#reading in all data files
chr1<-read.delim("chr1.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr2<-read.delim("chr2.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr3<-read.delim("chr3.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr4<-read.delim("chr4.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr5<-read.delim("chr5.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr6<-read.delim("chr6.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr7<-read.delim("chr7.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr8<-read.delim("chr8.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr9<-read.delim("chr9.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr10<-read.delim("chr10.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr11<-read.delim("chr11.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr12<-read.delim("chr12.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr13<-read.delim("chr13.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr14<-read.delim("chr14.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr15<-read.delim("chr15.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr16<-read.delim("chr16.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

#Split on strand
chr1fw <-chr1[which(chr1[,9] ==1),]
chr2fw <-chr2[which(chr2[,9] ==1),]
chr3fw <-chr3[which(chr3[,9] ==1),]
chr4fw <-chr4[which(chr4[,9] ==1),]
chr5fw <-chr5[which(chr5[,9] ==1),]
chr6fw <-chr6[which(chr6[,9] ==1),]
chr7fw <-chr7[which(chr7[,9] ==1),]
chr8fw <-chr8[which(chr8[,9] ==1),]
chr9fw <-chr9[which(chr9[,9] ==1),]
chr10fw <-chr10[which(chr10[,9] ==1),]
chr11fw <-chr11[which(chr11[,9] ==1),]
chr12fw <-chr12[which(chr12[,9] ==1),]
chr13fw <-chr13[which(chr13[,9] ==1),]
chr14fw <-chr14[which(chr14[,9] ==1),]
chr15fw <-chr15[which(chr15[,9] ==1),]
chr16fw <-chr16[which(chr16[,9] ==1),]

chr1rev <-chr1[which(chr1[,9] ==-1),]
chr2rev <-chr2[which(chr2[,9] ==-1),]
chr3rev <-chr3[which(chr3[,9] ==-1),]
chr4rev <-chr4[which(chr4[,9] ==-1),]
chr5rev <-chr5[which(chr5[,9] ==-1),]
chr6rev <-chr6[which(chr6[,9] ==-1),]
chr7rev <-chr7[which(chr7[,9] ==-1),]
chr8rev <-chr8[which(chr8[,9] ==-1),]
chr9rev <-chr9[which(chr9[,9] ==-1),]
chr10rev <-chr10[which(chr10[,9] ==-1),]
chr11rev <-chr11[which(chr11[,9] ==-1),]
chr12rev <-chr12[which(chr12[,9] ==-1),]
chr13rev <-chr13[which(chr13[,9] ==-1),]
chr14rev <-chr14[which(chr14[,9] ==-1),]
chr15rev <-chr15[which(chr15[,9] ==-1),]
chr16rev <-chr16[which(chr16[,9] ==-1),]

#assign col names
colnames(chr1fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr2fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr3fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr4fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr5fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr6fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr7fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr8fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr9fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr10fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr11fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr12fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr13fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr14fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr15fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr16fw) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")

colnames(chr1rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr2rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr3rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr4rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr5rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr6rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr7rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr8rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr9rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr10rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr11rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr12rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr13rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr14rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr15rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")
colnames(chr16rev) <- c("gene","chr", "AUG", "Stop", "TSS", "PAS","UTR5length","UTR3length","Strand")

#find Orf Length
chr1fw$ORFlength <-chr1fw$Stop-chr1fw$AUG+1
chr2fw$ORFlength <-chr2fw$Stop-chr2fw$AUG+1
chr3fw$ORFlength <-chr3fw$Stop-chr3fw$AUG+1
chr4fw$ORFlength <-chr4fw$Stop-chr4fw$AUG+1
chr5fw$ORFlength <-chr5fw$Stop-chr5fw$AUG+1
chr6fw$ORFlength <-chr6fw$Stop-chr6fw$AUG+1
chr7fw$ORFlength <-chr7fw$Stop-chr7fw$AUG+1
chr8fw$ORFlength <-chr8fw$Stop-chr8fw$AUG+1
chr9fw$ORFlength <-chr9fw$Stop-chr9fw$AUG+1
chr10fw$ORFlength <-chr10fw$Stop-chr10fw$AUG+1
chr11fw$ORFlength <-chr11fw$Stop-chr11fw$AUG+1
chr12fw$ORFlength <-chr12fw$Stop-chr12fw$AUG+1
chr13fw$ORFlength <-chr13fw$Stop-chr13fw$AUG+1
chr14fw$ORFlength <-chr14fw$Stop-chr14fw$AUG+1
chr15fw$ORFlength <-chr15fw$Stop-chr15fw$AUG+1
chr16fw$ORFlength <-chr16fw$Stop-chr16fw$AUG+1

chr1rev$ORFlength <-chr1rev$AUG-chr1rev$Stop+1
chr2rev$ORFlength <-chr2rev$AUG-chr2rev$Stop+1
chr3rev$ORFlength <-chr3rev$AUG-chr3rev$Stop+1
chr4rev$ORFlength <-chr4rev$AUG-chr4rev$Stop+1
chr5rev$ORFlength <-chr5rev$AUG-chr5rev$Stop+1
chr6rev$ORFlength <-chr6rev$AUG-chr6rev$Stop+1
chr7rev$ORFlength <-chr7rev$AUG-chr7rev$Stop+1
chr8rev$ORFlength <-chr8rev$AUG-chr8rev$Stop+1
chr9rev$ORFlength <-chr9rev$AUG-chr9rev$Stop+1
chr10rev$ORFlength <-chr10rev$AUG-chr10rev$Stop+1
chr11rev$ORFlength <-chr11rev$AUG-chr11rev$Stop+1
chr12rev$ORFlength <-chr12rev$AUG-chr12rev$Stop+1
chr13rev$ORFlength <-chr13rev$AUG-chr13rev$Stop+1
chr14rev$ORFlength <-chr14rev$AUG-chr14rev$Stop+1
chr15rev$ORFlength <-chr15rev$AUG-chr15rev$Stop+1
chr16rev$ORFlength <-chr16rev$AUG-chr16rev$Stop+1

#take just the columns we want
e<-c(1,3:8,10)
chr1fw <-chr1fw[,e]
chr2fw <-chr2fw[,e]
chr3fw <-chr3fw[,e]
chr4fw <-chr4fw[,e]
chr5fw <-chr5fw[,e]
chr6fw <-chr6fw[,e]
chr7fw <-chr7fw[,e]
chr8fw <-chr8fw[,e]
chr9fw <-chr9fw[,e]
chr10fw <-chr10fw[,e]
chr11fw <-chr11fw[,e]
chr12fw <-chr12fw[,e]
chr13fw <-chr13fw[,e]
chr14fw <-chr14fw[,e]
chr15fw <-chr15fw[,e]
chr16fw <-chr16fw[,e]

chr1rev <-chr1rev[,e]
chr2rev <-chr2rev[,e]
chr3rev <-chr3rev[,e]
chr4rev <-chr4rev[,e]
chr5rev <-chr5rev[,e]
chr6rev <-chr6rev[,e]
chr7rev <-chr7rev[,e]
chr8rev <-chr8rev[,e]
chr9rev <-chr9rev[,e]
chr10rev <-chr10rev[,e]
chr11rev <-chr11rev[,e]
chr12rev <-chr12rev[,e]
chr13rev <-chr13rev[,e]
chr14rev <-chr14rev[,e]
chr15rev <-chr15rev[,e]
chr16rev <-chr16rev[,e]

#make metagene plot with 100 most and least effected to show more binding in most effected in 5'UTR
#Read in dTE info
dTE_data <- read.delim("translationalEfficiencies_ranks.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#join with gene location data
chr1fw <- join(chr1fw,dTE_data,by="gene")
chr2fw <- join(chr2fw,dTE_data,by="gene")
chr3fw <- join(chr3fw,dTE_data,by="gene")
chr4fw <- join(chr4fw,dTE_data,by="gene")
chr5fw <- join(chr5fw,dTE_data,by="gene")
chr6fw <- join(chr6fw,dTE_data,by="gene")
chr7fw <- join(chr7fw,dTE_data,by="gene")
chr8fw <- join(chr8fw,dTE_data,by="gene")
chr9fw <- join(chr9fw,dTE_data,by="gene")
chr10fw <- join(chr10fw,dTE_data,by="gene")
chr11fw <- join(chr11fw,dTE_data,by="gene")
chr12fw <- join(chr12fw,dTE_data,by="gene")
chr13fw <- join(chr13fw,dTE_data,by="gene")
chr14fw <- join(chr14fw,dTE_data,by="gene")
chr15fw <- join(chr15fw,dTE_data,by="gene")
chr16fw <- join(chr16fw,dTE_data,by="gene")

chr1rev <- join(chr1rev,dTE_data,by="gene")
chr2rev <- join(chr2rev,dTE_data,by="gene")
chr3rev <- join(chr3rev,dTE_data,by="gene")
chr4rev <- join(chr4rev,dTE_data,by="gene")
chr5rev <- join(chr5rev,dTE_data,by="gene")
chr6rev <- join(chr6rev,dTE_data,by="gene")
chr7rev <- join(chr7rev,dTE_data,by="gene")
chr8rev <- join(chr8rev,dTE_data,by="gene")
chr9rev <- join(chr9rev,dTE_data,by="gene")
chr10rev <- join(chr10rev,dTE_data,by="gene")
chr11rev <- join(chr11rev,dTE_data,by="gene")
chr12rev <- join(chr12rev,dTE_data,by="gene")
chr13rev <- join(chr13rev,dTE_data,by="gene")
chr14rev <- join(chr14rev,dTE_data,by="gene")
chr15rev <- join(chr15rev,dTE_data,by="gene")
chr16rev <- join(chr16rev,dTE_data,by="gene")

chr1fw <- chr1fw[ which(chr1fw$rank_dTE < 101),]
chr2fw <- chr2fw[ which(chr2fw$rank_dTE < 101),]
chr3fw <- chr3fw[ which(chr1fw$rank_dTE < 101),]
chr4fw <- chr4fw[ which(chr1fw$rank_dTE < 101),]
chr5fw <- chr5fw[ which(chr1fw$rank_dTE < 101),]
chr6fw <- chr6fw[ which(chr1fw$rank_dTE < 101),]
chr7fw <- chr7fw[ which(chr1fw$rank_dTE < 101),]
chr8fw <- chr8fw[ which(chr1fw$rank_dTE < 101),]
chr9fw <- chr9fw[ which(chr1fw$rank_dTE < 101),]
chr10fw <- chr10fw[ which(chr1fw$rank_dTE < 101),]
chr11fw <- chr11fw[ which(chr1fw$rank_dTE < 101),]
chr12fw <- chr12fw[ which(chr1fw$rank_dTE < 101),]
chr13fw <- chr13fw[ which(chr1fw$rank_dTE < 101),]
chr14fw <- chr14fw[ which(chr1fw$rank_dTE < 101),]
chr15fw <- chr15fw[ which(chr1fw$rank_dTE < 101),]
chr16fw <- chr16fw[ which(chr1fw$rank_dTE < 101),]

chr1rev <- chr1rev[ which(chr1rev$rank_dTE < 101),]
chr2rev <- chr2rev[ which(chr2rev$rank_dTE < 101),]
chr3rev <- chr3rev[ which(chr3rev$rank_dTE < 101),]
chr4rev <- chr4rev[ which(chr4rev$rank_dTE < 101),]
chr5rev <- chr5rev[ which(chr5rev$rank_dTE < 101),]
chr6rev <- chr6rev[ which(chr6rev$rank_dTE < 101),]
chr7rev <- chr7rev[ which(chr7rev$rank_dTE < 101),]
chr8rev <- chr8rev[ which(chr8rev$rank_dTE < 101),]
chr9rev <- chr9rev[ which(chr9rev$rank_dTE < 101),]
chr10rev <- chr10rev[ which(chr10rev$rank_dTE < 101),]
chr11rev <- chr11rev[ which(chr11rev$rank_dTE < 101),]
chr12rev <- chr12rev[ which(chr12rev$rank_dTE < 101),]
chr13rev <- chr13rev[ which(chr13rev$rank_dTE < 101),]
chr14rev <- chr14rev[ which(chr14rev$rank_dTE < 101),]
chr15rev <- chr15rev[ which(chr15rev$rank_dTE < 101),]
chr16rev <- chr16rev[ which(chr16rev$rank_dTE < 101),]

#Read in my normalized data
setwd("C:/Users/fated/OneDrive/R")
NormdataOnly_chr1rev<- read.delim("New2_Mastergenedata_chr1rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr2rev<- read.delim("New2_Mastergenedata_chr2rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr3rev<- read.delim("New2_Mastergenedata_chr3rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr4rev<- read.delim("New2_Mastergenedata_chr4rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr5rev<- read.delim("New2_Mastergenedata_chr5rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr6rev<- read.delim("New2_Mastergenedata_chr6rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr7rev<- read.delim("New2_Mastergenedata_chr7rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr8rev<- read.delim("New2_Mastergenedata_chr8rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr9rev<- read.delim("New2_Mastergenedata_chr9rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr10rev<- read.delim("New2_Mastergenedata_chr10rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr11rev<- read.delim("New2_Mastergenedata_chr11rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr12rev<- read.delim("New2_Mastergenedata_chr12rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr13rev<- read.delim("New2_Mastergenedata_chr13rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr14rev<- read.delim("New2_Mastergenedata_chr14rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr15rev<- read.delim("New2_Mastergenedata_chr15rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr16rev<- read.delim("New2_Mastergenedata_chr16rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

NormdataOnly_chr1fw<- read.delim("New2_Mastergenedata_chr1fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr2fw<- read.delim("New2_Mastergenedata_chr2fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr3fw<- read.delim("New2_Mastergenedata_chr3fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr4fw<- read.delim("New2_Mastergenedata_chr4fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr5fw<- read.delim("New2_Mastergenedata_chr5fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr6fw<- read.delim("New2_Mastergenedata_chr6fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr7fw<- read.delim("New2_Mastergenedata_chr7fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr8fw<- read.delim("New2_Mastergenedata_chr8fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr9fw<- read.delim("New2_Mastergenedata_chr9fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr10fw<- read.delim("New2_Mastergenedata_chr10fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr11fw<- read.delim("New2_Mastergenedata_chr11fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr12fw<- read.delim("New2_Mastergenedata_chr12fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr13fw<- read.delim("New2_Mastergenedata_chr13fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr14fw<- read.delim("New2_Mastergenedata_chr14fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr15fw<- read.delim("New2_Mastergenedata_chr15fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
NormdataOnly_chr16fw<- read.delim("New2_Mastergenedata_chr16fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

colnames(NormdataOnly_chr1rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr2rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr3rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr4rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr5rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr6rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr7rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr8rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr9rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr10rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr11rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr12rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr13rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr14rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr15rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr16rev)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")

colnames(NormdataOnly_chr1fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr2fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr3fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr4fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr5fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr6fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr7fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr8fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr9fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr10fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr11fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr12fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr13fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr14fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr15fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")
colnames(NormdataOnly_chr16fw)<- c("chr","pos","1","2","gene","feature","5","6","7","8","9")

AnnotatedNorm_chr1fw <- NormdataOnly_chr1fw[ which(NormdataOnly_chr1fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr2fw <- NormdataOnly_chr2fw [which(NormdataOnly_chr2fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr3fw <- NormdataOnly_chr3fw [which(NormdataOnly_chr3fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr4fw <- NormdataOnly_chr4fw [which(NormdataOnly_chr4fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr5fw <- NormdataOnly_chr5fw [which(NormdataOnly_chr5fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr6fw <- NormdataOnly_chr6fw [which(NormdataOnly_chr6fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr7fw <- NormdataOnly_chr7fw [which(NormdataOnly_chr7fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr8fw <- NormdataOnly_chr8fw [which(NormdataOnly_chr8fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr9fw <- NormdataOnly_chr9fw [which(NormdataOnly_chr9fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr10fw <- NormdataOnly_chr10fw [which(NormdataOnly_chr10fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr11fw <- NormdataOnly_chr11fw [which(NormdataOnly_chr11fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr12fw <- NormdataOnly_chr12fw [which(NormdataOnly_chr12fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr13fw <- NormdataOnly_chr13fw [which(NormdataOnly_chr13fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr14fw <- NormdataOnly_chr14fw [which(NormdataOnly_chr14fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr15fw <- NormdataOnly_chr15fw [which(NormdataOnly_chr15fw$New_Gene!="unassigned"),]
AnnotatedNorm_chr16fw <- NormdataOnly_chr16fw [which(NormdataOnly_chr16fw$New_Gene!="unassigned"),]

AnnotatedNorm_chr1rev <- NormdataOnly_chr1rev[ which(NormdataOnly_chr1rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr2rev <- NormdataOnly_chr2rev [which(NormdataOnly_chr2rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr3rev <- NormdataOnly_chr3rev [which(NormdataOnly_chr3rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr4rev <- NormdataOnly_chr4rev [which(NormdataOnly_chr4rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr5rev <- NormdataOnly_chr5rev [which(NormdataOnly_chr5rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr6rev <- NormdataOnly_chr6rev [which(NormdataOnly_chr6rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr7rev <- NormdataOnly_chr7rev [which(NormdataOnly_chr7rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr8rev <- NormdataOnly_chr8rev [which(NormdataOnly_chr8rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr9rev <- NormdataOnly_chr9rev [which(NormdataOnly_chr9rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr10rev <- NormdataOnly_chr10rev [which(NormdataOnly_chr10rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr11rev <- NormdataOnly_chr11rev [which(NormdataOnly_chr11rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr12rev <- NormdataOnly_chr12rev [which(NormdataOnly_chr12rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr13rev <- NormdataOnly_chr13rev [which(NormdataOnly_chr13rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr14rev <- NormdataOnly_chr14rev [which(NormdataOnly_chr14rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr15rev <- NormdataOnly_chr15rev [which(NormdataOnly_chr15rev$New_Gene!="unassigned"),]
AnnotatedNorm_chr16rev <- NormdataOnly_chr16rev [which(NormdataOnly_chr16rev$New_Gene!="unassigned"),]
library(plyr)

AnnotatedNorm_chr1fw$GenomeNormValue <- AnnotatedNorm_chr1fw$Total_iCLIPhit/110856
AnnotatedNorm_chr2fw$GenomeNormValue <- AnnotatedNorm_chr2fw$Total_iCLIPhit/110856
AnnotatedNorm_chr3fw$GenomeNormValue <- AnnotatedNorm_chr3fw$Total_iCLIPhit/110856
AnnotatedNorm_chr4fw$GenomeNormValue <- AnnotatedNorm_chr4fw$Total_iCLIPhit/110856
AnnotatedNorm_chr5fw$GenomeNormValue <- AnnotatedNorm_chr5fw$Total_iCLIPhit/110856
AnnotatedNorm_chr6fw$GenomeNormValue <- AnnotatedNorm_chr6fw$Total_iCLIPhit/110856
AnnotatedNorm_chr7fw$GenomeNormValue <- AnnotatedNorm_chr7fw$Total_iCLIPhit/110856
AnnotatedNorm_chr8fw$GenomeNormValue <- AnnotatedNorm_chr8fw$Total_iCLIPhit/110856
AnnotatedNorm_chr9fw$GenomeNormValue <- AnnotatedNorm_chr9fw$Total_iCLIPhit/110856
AnnotatedNorm_chr10fw$GenomeNormValue <- AnnotatedNorm_chr10fw$Total_iCLIPhit/110856
AnnotatedNorm_chr11fw$GenomeNormValue <- AnnotatedNorm_chr11fw$Total_iCLIPhit/110856
AnnotatedNorm_chr12fw$GenomeNormValue <- AnnotatedNorm_chr12fw$Total_iCLIPhit/110856
AnnotatedNorm_chr13fw$GenomeNormValue <- AnnotatedNorm_chr13fw$Total_iCLIPhit/110856
AnnotatedNorm_chr14fw$GenomeNormValue <- AnnotatedNorm_chr14fw$Total_iCLIPhit/110856
AnnotatedNorm_chr15fw$GenomeNormValue <- AnnotatedNorm_chr15fw$Total_iCLIPhit/110856
AnnotatedNorm_chr16fw$GenomeNormValue <- AnnotatedNorm_chr16fw$Total_iCLIPhit/110856

AnnotatedNorm_chr1rev$GenomeNormValue <- AnnotatedNorm_chr1rev$Total_iCLIPhit/110856
AnnotatedNorm_chr2rev$GenomeNormValue <- AnnotatedNorm_chr2rev$Total_iCLIPhit/110856
AnnotatedNorm_chr3rev$GenomeNormValue <- AnnotatedNorm_chr3rev$Total_iCLIPhit/110856
AnnotatedNorm_chr4rev$GenomeNormValue <- AnnotatedNorm_chr4rev$Total_iCLIPhit/110856
AnnotatedNorm_chr5rev$GenomeNormValue <- AnnotatedNorm_chr5rev$Total_iCLIPhit/110856
AnnotatedNorm_chr6rev$GenomeNormValue <- AnnotatedNorm_chr6rev$Total_iCLIPhit/110856
AnnotatedNorm_chr7rev$GenomeNormValue <- AnnotatedNorm_chr7rev$Total_iCLIPhit/110856
AnnotatedNorm_chr8rev$GenomeNormValue <- AnnotatedNorm_chr8rev$Total_iCLIPhit/110856
AnnotatedNorm_chr9rev$GenomeNormValue <- AnnotatedNorm_chr9rev$Total_iCLIPhit/110856
AnnotatedNorm_chr10rev$GenomeNormValue <- AnnotatedNorm_chr10rev$Total_iCLIPhit/110856
AnnotatedNorm_chr11rev$GenomeNormValue <- AnnotatedNorm_chr11rev$Total_iCLIPhit/110856
AnnotatedNorm_chr12rev$GenomeNormValue <- AnnotatedNorm_chr12rev$Total_iCLIPhit/110856
AnnotatedNorm_chr13rev$GenomeNormValue <- AnnotatedNorm_chr13rev$Total_iCLIPhit/110856
AnnotatedNorm_chr14rev$GenomeNormValue <- AnnotatedNorm_chr14rev$Total_iCLIPhit/110856
AnnotatedNorm_chr15rev$GenomeNormValue <- AnnotatedNorm_chr15rev$Total_iCLIPhit/110856
AnnotatedNorm_chr16rev$GenomeNormValue <- AnnotatedNorm_chr16rev$Total_iCLIPhit/110856

AnnotatedNorm_chr1fw$NewNormDbp2 <- AnnotatedNorm_chr1fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr1fw$GenomeNormValue
AnnotatedNorm_chr2fw$NewNormDbp2 <- AnnotatedNorm_chr2fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr2fw$GenomeNormValue
AnnotatedNorm_chr3fw$NewNormDbp2 <- AnnotatedNorm_chr3fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr3fw$GenomeNormValue
AnnotatedNorm_chr4fw$NewNormDbp2 <- AnnotatedNorm_chr4fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr4fw$GenomeNormValue
AnnotatedNorm_chr5fw$NewNormDbp2 <- AnnotatedNorm_chr5fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr5fw$GenomeNormValue
AnnotatedNorm_chr6fw$NewNormDbp2 <- AnnotatedNorm_chr6fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr6fw$GenomeNormValue
AnnotatedNorm_chr7fw$NewNormDbp2 <- AnnotatedNorm_chr7fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr7fw$GenomeNormValue
AnnotatedNorm_chr8fw$NewNormDbp2 <- AnnotatedNorm_chr8fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr8fw$GenomeNormValue
AnnotatedNorm_chr9fw$NewNormDbp2 <- AnnotatedNorm_chr9fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr9fw$GenomeNormValue
AnnotatedNorm_chr10fw$NewNormDbp2 <- AnnotatedNorm_chr10fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr10fw$GenomeNormValue
AnnotatedNorm_chr11fw$NewNormDbp2 <- AnnotatedNorm_chr11fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr11fw$GenomeNormValue
AnnotatedNorm_chr12fw$NewNormDbp2 <- AnnotatedNorm_chr12fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr12fw$GenomeNormValue
AnnotatedNorm_chr13fw$NewNormDbp2 <- AnnotatedNorm_chr13fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr13fw$GenomeNormValue
AnnotatedNorm_chr14fw$NewNormDbp2 <- AnnotatedNorm_chr14fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr14fw$GenomeNormValue
AnnotatedNorm_chr15fw$NewNormDbp2 <- AnnotatedNorm_chr15fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr15fw$GenomeNormValue
AnnotatedNorm_chr16fw$NewNormDbp2 <- AnnotatedNorm_chr16fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr16fw$GenomeNormValue

AnnotatedNorm_chr1rev$NewNormDbp2 <- AnnotatedNorm_chr1rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr1rev$GenomeNormValue
AnnotatedNorm_chr2rev$NewNormDbp2 <- AnnotatedNorm_chr2rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr2rev$GenomeNormValue
AnnotatedNorm_chr3rev$NewNormDbp2 <- AnnotatedNorm_chr3rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr3rev$GenomeNormValue
AnnotatedNorm_chr4rev$NewNormDbp2 <- AnnotatedNorm_chr4rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr4rev$GenomeNormValue
AnnotatedNorm_chr5rev$NewNormDbp2 <- AnnotatedNorm_chr5rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr5rev$GenomeNormValue
AnnotatedNorm_chr6rev$NewNormDbp2 <- AnnotatedNorm_chr6rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr6rev$GenomeNormValue
AnnotatedNorm_chr7rev$NewNormDbp2 <- AnnotatedNorm_chr7rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr7rev$GenomeNormValue
AnnotatedNorm_chr8rev$NewNormDbp2 <- AnnotatedNorm_chr8rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr8rev$GenomeNormValue
AnnotatedNorm_chr9rev$NewNormDbp2 <- AnnotatedNorm_chr9rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr9rev$GenomeNormValue
AnnotatedNorm_chr10rev$NewNormDbp2 <- AnnotatedNorm_chr10rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr10rev$GenomeNormValue
AnnotatedNorm_chr11rev$NewNormDbp2 <- AnnotatedNorm_chr11rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr11rev$GenomeNormValue
AnnotatedNorm_chr12rev$NewNormDbp2 <- AnnotatedNorm_chr12rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr12rev$GenomeNormValue
AnnotatedNorm_chr13rev$NewNormDbp2 <- AnnotatedNorm_chr13rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr13rev$GenomeNormValue
AnnotatedNorm_chr14rev$NewNormDbp2 <- AnnotatedNorm_chr14rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr14rev$GenomeNormValue
AnnotatedNorm_chr15rev$NewNormDbp2 <- AnnotatedNorm_chr15rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr15rev$GenomeNormValue
AnnotatedNorm_chr16rev$NewNormDbp2 <- AnnotatedNorm_chr16rev$Dbp2_iCLIPnorm*AnnotatedNorm_chr16rev$GenomeNormValue

#Filter genes that have less than 3 reads
AnnotatedNorm_chr1fw$NewNormDbp2 <- AnnotatedNorm_chr1fw$Dbp2_iCLIPnorm*AnnotatedNorm_chr1fw$GenomeNormValue

### New filter of Dbp2rep
AnnotatedNorm_chr1rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr1rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr1rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr2rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr2rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr2rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr3rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr3rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr3rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr4rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr4rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr4rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr5rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr5rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr5rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr6rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr6rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr6rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr7rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr7rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr7rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr8rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr8rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr8rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr9rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr9rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr9rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr10rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr10rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr10rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr11rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr11rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr11rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr12rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr12rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr12rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr13rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr13rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr13rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr14rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr14rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr14rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr15rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr15rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr15rev$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr16rev$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr16rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr16rev$Dbp2rep_iCLIPnorm)

AnnotatedNorm_chr1fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr1fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr1fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr2fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr2fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr2fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr3fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr3fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr3fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr4fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr4fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr4fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr5fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr5fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr5fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr6fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr6fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr6fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr7fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr7fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr7fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr8fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr8fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr8fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr9fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr9fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr9fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr10fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr10fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr10fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr11fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr11fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr11fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr12fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr12fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr12fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr13fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr13fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr13fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr14fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr14fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr14fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr15fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr15fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr15fw$Dbp2rep_iCLIPnorm)
AnnotatedNorm_chr16fw$Dbp2_norm_filter <- ifelse(AnnotatedNorm_chr16fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr16fw$Dbp2rep_iCLIPnorm)
#get rid of extra columns
e<-c(1:16,30,31)
AnnotatedNorm_chr1rev <-AnnotatedNorm_chr1rev[,e]
AnnotatedNorm_chr2rev <-AnnotatedNorm_chr2rev[,e]
AnnotatedNorm_chr3rev <-AnnotatedNorm_chr3rev[,e]
AnnotatedNorm_chr4rev <-AnnotatedNorm_chr4rev[,e]
AnnotatedNorm_chr5rev <-AnnotatedNorm_chr5rev[,e]
AnnotatedNorm_chr6rev <-AnnotatedNorm_chr6rev[,e]
AnnotatedNorm_chr7rev <-AnnotatedNorm_chr7rev[,e]
AnnotatedNorm_chr8rev <-AnnotatedNorm_chr8rev[,e]
AnnotatedNorm_chr9rev <-AnnotatedNorm_chr9rev[,e]
AnnotatedNorm_chr10rev <-AnnotatedNorm_chr10rev[,e]
AnnotatedNorm_chr11rev <-AnnotatedNorm_chr11rev[,e]
AnnotatedNorm_chr12rev <-AnnotatedNorm_chr12rev[,e]
AnnotatedNorm_chr13rev <-AnnotatedNorm_chr13rev[,e]
AnnotatedNorm_chr14rev <-AnnotatedNorm_chr14rev[,e]
AnnotatedNorm_chr15rev <-AnnotatedNorm_chr15rev[,e]
AnnotatedNorm_chr16rev <-AnnotatedNorm_chr16rev[,e]

AnnotatedNorm_chr1fw <-AnnotatedNorm_chr1fw[,e]
AnnotatedNorm_chr2fw <-AnnotatedNorm_chr2fw[,e]
AnnotatedNorm_chr3fw <-AnnotatedNorm_chr3fw[,e]
AnnotatedNorm_chr4fw <-AnnotatedNorm_chr4fw[,e]
AnnotatedNorm_chr5fw <-AnnotatedNorm_chr5fw[,e]
AnnotatedNorm_chr6fw <-AnnotatedNorm_chr6fw[,e]
AnnotatedNorm_chr7fw <-AnnotatedNorm_chr7fw[,e]
AnnotatedNorm_chr8fw <-AnnotatedNorm_chr8fw[,e]
AnnotatedNorm_chr9fw <-AnnotatedNorm_chr9fw[,e]
AnnotatedNorm_chr10fw <-AnnotatedNorm_chr10fw[,e]
AnnotatedNorm_chr11fw <-AnnotatedNorm_chr11fw[,e]
AnnotatedNorm_chr12fw <-AnnotatedNorm_chr12fw[,e]
AnnotatedNorm_chr13fw <-AnnotatedNorm_chr13fw[,e]
AnnotatedNorm_chr14fw <-AnnotatedNorm_chr14fw[,e]
AnnotatedNorm_chr15fw <-AnnotatedNorm_chr15fw[,e]
AnnotatedNorm_chr16fw <-AnnotatedNorm_chr16fw[,e]



### write this table that has the filtered norm column
write.table(AnnotatedNorm_chr1rev, file = "AnnotatedNorm_chr1rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr2rev, file = "AnnotatedNorm_chr2rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr3rev, file = "AnnotatedNorm_chr3rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr4rev, file = "AnnotatedNorm_chr4rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr5rev, file = "AnnotatedNorm_chr5rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr6rev, file = "AnnotatedNorm_chr6rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr7rev, file = "AnnotatedNorm_chr7rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr8rev, file = "AnnotatedNorm_chr8rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr9rev, file = "AnnotatedNorm_chr9rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr10rev, file = "AnnotatedNorm_chr10rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr11rev, file = "AnnotatedNorm_chr11rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr12rev, file = "AnnotatedNorm_chr12rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr13rev, file = "AnnotatedNorm_chr13rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr14rev, file = "AnnotatedNorm_chr14rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr15rev, file = "AnnotatedNorm_chr15rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr16rev, file = "AnnotatedNorm_chr16rev_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(AnnotatedNorm_chr1fw, file = "AnnotatedNorm_chr1fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr2fw, file = "AnnotatedNorm_chr2fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr3fw, file = "AnnotatedNorm_chr3fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr4fw, file = "AnnotatedNorm_chr4fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr5fw, file = "AnnotatedNorm_chr5fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr6fw, file = "AnnotatedNorm_chr6fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr7fw, file = "AnnotatedNorm_chr7fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr8fw, file = "AnnotatedNorm_chr8fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr9fw, file = "AnnotatedNorm_chr9fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr10fw, file = "AnnotatedNorm_chr10fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr11fw, file = "AnnotatedNorm_chr11fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr12fw, file = "AnnotatedNorm_chr12fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr13fw, file = "AnnotatedNorm_chr13fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr14fw, file = "AnnotatedNorm_chr14fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr15fw, file = "AnnotatedNorm_chr15fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr16fw, file = "AnnotatedNorm_chr16fw_mean_filter.txt", sep = "\t",row.names = F,col.names = T, quote=T)


AnnotatedNorm_chr1rev$NewNormFilter <- ifelse(AnnotatedNorm_chr1rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr1rev$tot_hits_Dbp2)
AnnotatedNorm_chr2rev$NewNormFilter <- ifelse(AnnotatedNorm_chr2rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr2rev$tot_hits_Dbp2)
AnnotatedNorm_chr3rev$NewNormFilter <- ifelse(AnnotatedNorm_chr3rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr3rev$tot_hits_Dbp2)
AnnotatedNorm_chr4rev$NewNormFilter <- ifelse(AnnotatedNorm_chr4rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr4rev$tot_hits_Dbp2)
AnnotatedNorm_chr5rev$NewNormFilter <- ifelse(AnnotatedNorm_chr5rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr5rev$tot_hits_Dbp2)
AnnotatedNorm_chr6rev$NewNormFilter <- ifelse(AnnotatedNorm_chr6rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr6rev$tot_hits_Dbp2)
AnnotatedNorm_chr7rev$NewNormFilter <- ifelse(AnnotatedNorm_chr7rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr7rev$tot_hits_Dbp2)
AnnotatedNorm_chr8rev$NewNormFilter <- ifelse(AnnotatedNorm_chr8rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr8rev$tot_hits_Dbp2)
AnnotatedNorm_chr9rev$NewNormFilter <- ifelse(AnnotatedNorm_chr9rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr9rev$tot_hits_Dbp2)
AnnotatedNorm_chr10rev$NewNormFilter <- ifelse(AnnotatedNorm_chr10rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr10rev$tot_hits_Dbp2)
AnnotatedNorm_chr11rev$NewNormFilter <- ifelse(AnnotatedNorm_chr11rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr11rev$tot_hits_Dbp2)
AnnotatedNorm_chr12rev$NewNormFilter <- ifelse(AnnotatedNorm_chr12rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr12rev$tot_hits_Dbp2)
AnnotatedNorm_chr13rev$NewNormFilter <- ifelse(AnnotatedNorm_chr13rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr13rev$tot_hits_Dbp2)
AnnotatedNorm_chr14rev$NewNormFilter <- ifelse(AnnotatedNorm_chr14rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr14rev$tot_hits_Dbp2)
AnnotatedNorm_chr15rev$NewNormFilter <- ifelse(AnnotatedNorm_chr15rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr15rev$tot_hits_Dbp2)
AnnotatedNorm_chr16rev$NewNormFilter <- ifelse(AnnotatedNorm_chr16rev$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr16rev$tot_hits_Dbp2)

AnnotatedNorm_chr1fw$NewNormFilter <- ifelse(AnnotatedNorm_chr1fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr1fw$tot_hits_Dbp2)
AnnotatedNorm_chr2fw$NewNormFilter <- ifelse(AnnotatedNorm_chr2fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr2fw$tot_hits_Dbp2)
AnnotatedNorm_chr3fw$NewNormFilter <- ifelse(AnnotatedNorm_chr3fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr3fw$tot_hits_Dbp2)
AnnotatedNorm_chr4fw$NewNormFilter <- ifelse(AnnotatedNorm_chr4fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr4fw$tot_hits_Dbp2)
AnnotatedNorm_chr5fw$NewNormFilter <- ifelse(AnnotatedNorm_chr5fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr5fw$tot_hits_Dbp2)
AnnotatedNorm_chr6fw$NewNormFilter <- ifelse(AnnotatedNorm_chr6fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr6fw$tot_hits_Dbp2)
AnnotatedNorm_chr7fw$NewNormFilter <- ifelse(AnnotatedNorm_chr7fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr7fw$tot_hits_Dbp2)
AnnotatedNorm_chr8fw$NewNormFilter <- ifelse(AnnotatedNorm_chr8fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr8fw$tot_hits_Dbp2)
AnnotatedNorm_chr9fw$NewNormFilter <- ifelse(AnnotatedNorm_chr9fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr9fw$tot_hits_Dbp2)
AnnotatedNorm_chr10fw$NewNormFilter <- ifelse(AnnotatedNorm_chr10fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr10fw$tot_hits_Dbp2)
AnnotatedNorm_chr11fw$NewNormFilter <- ifelse(AnnotatedNorm_chr11fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr11fw$tot_hits_Dbp2)
AnnotatedNorm_chr12fw$NewNormFilter <- ifelse(AnnotatedNorm_chr12fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr12fw$tot_hits_Dbp2)
AnnotatedNorm_chr13fw$NewNormFilter <- ifelse(AnnotatedNorm_chr13fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr13fw$tot_hits_Dbp2)
AnnotatedNorm_chr14fw$NewNormFilter <- ifelse(AnnotatedNorm_chr14fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr14fw$tot_hits_Dbp2)
AnnotatedNorm_chr15fw$NewNormFilter <- ifelse(AnnotatedNorm_chr15fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr15fw$tot_hits_Dbp2)
AnnotatedNorm_chr16fw$NewNormFilter <- ifelse(AnnotatedNorm_chr16fw$tot_hits_Dbp2 <4,0,AnnotatedNorm_chr16fw$tot_hits_Dbp2)

colnames(chr1rev)[1] <- "New_Gene"
colnames(chr2rev)[1] <- "New_Gene"
colnames(chr3rev)[1] <- "New_Gene"
colnames(chr4rev)[1] <- "New_Gene"
colnames(chr5rev)[1] <- "New_Gene"
colnames(chr6rev)[1] <- "New_Gene"
colnames(chr7rev)[1] <- "New_Gene"
colnames(chr8rev)[1] <- "New_Gene"
colnames(chr9rev)[1] <- "New_Gene"
colnames(chr10rev)[1] <- "New_Gene"
colnames(chr11rev)[1] <- "New_Gene"
colnames(chr12rev)[1] <- "New_Gene"
colnames(chr13rev)[1] <- "New_Gene"
colnames(chr14rev)[1] <- "New_Gene"
colnames(chr15rev)[1] <- "New_Gene"
colnames(chr16rev)[1] <- "New_Gene"

colnames(chr1fw)[1] <- "New_Gene"
colnames(chr2fw)[1] <- "New_Gene"
colnames(chr3fw)[1] <- "New_Gene"
colnames(chr4fw)[1] <- "New_Gene"
colnames(chr5fw)[1] <- "New_Gene"
colnames(chr6fw)[1] <- "New_Gene"
colnames(chr7fw)[1] <- "New_Gene"
colnames(chr8fw)[1] <- "New_Gene"
colnames(chr9fw)[1] <- "New_Gene"
colnames(chr10fw)[1] <- "New_Gene"
colnames(chr11fw)[1] <- "New_Gene"
colnames(chr12fw)[1] <- "New_Gene"
colnames(chr13fw)[1] <- "New_Gene"
colnames(chr14fw)[1] <- "New_Gene"
colnames(chr15fw)[1] <- "New_Gene"
colnames(chr16fw)[1] <- "New_Gene"

#join by gene col
AnnotatedNorm_chr1rev <- join(AnnotatedNorm_chr1rev,chr1rev, by = "New_Gene")
AnnotatedNorm_chr2rev <- join(AnnotatedNorm_chr2rev,chr2rev, by = "New_Gene")
AnnotatedNorm_chr3rev <- join(AnnotatedNorm_chr3rev,chr3rev, by = "New_Gene")
AnnotatedNorm_chr4rev <- join(AnnotatedNorm_chr4rev,chr4rev, by = "New_Gene")
AnnotatedNorm_chr5rev <- join(AnnotatedNorm_chr5rev,chr5rev, by = "New_Gene")
AnnotatedNorm_chr6rev <- join(AnnotatedNorm_chr6rev,chr6rev, by = "New_Gene")
AnnotatedNorm_chr7rev <- join(AnnotatedNorm_chr7rev,chr7rev, by = "New_Gene")
AnnotatedNorm_chr8rev <- join(AnnotatedNorm_chr8rev,chr8rev, by = "New_Gene")
AnnotatedNorm_chr9rev <- join(AnnotatedNorm_chr9rev,chr9rev, by = "New_Gene")
AnnotatedNorm_chr10rev <- join(AnnotatedNorm_chr10rev,chr10rev, by = "New_Gene")
AnnotatedNorm_chr11rev <- join(AnnotatedNorm_chr11rev,chr11rev, by = "New_Gene")
AnnotatedNorm_chr12rev <- join(AnnotatedNorm_chr12rev,chr12rev, by = "New_Gene")
AnnotatedNorm_chr13rev <- join(AnnotatedNorm_chr13rev,chr13rev, by = "New_Gene")
AnnotatedNorm_chr14rev <- join(AnnotatedNorm_chr14rev,chr14rev, by = "New_Gene")
AnnotatedNorm_chr15rev <- join(AnnotatedNorm_chr15rev,chr15rev, by = "New_Gene")
AnnotatedNorm_chr16rev <- join(AnnotatedNorm_chr16rev,chr16rev, by = "New_Gene")

AnnotatedNorm_chr1fw <- join(AnnotatedNorm_chr1fw,chr1fw, by = "New_Gene")
AnnotatedNorm_chr2fw <- join(AnnotatedNorm_chr2fw,chr2fw, by = "New_Gene")
AnnotatedNorm_chr3fw <- join(AnnotatedNorm_chr3fw,chr3fw, by = "New_Gene")
AnnotatedNorm_chr4fw <- join(AnnotatedNorm_chr4fw,chr4fw, by = "New_Gene")
AnnotatedNorm_chr5fw <- join(AnnotatedNorm_chr5fw,chr5fw, by = "New_Gene")
AnnotatedNorm_chr6fw <- join(AnnotatedNorm_chr6fw,chr6fw, by = "New_Gene")
AnnotatedNorm_chr7fw <- join(AnnotatedNorm_chr7fw,chr7fw, by = "New_Gene")
AnnotatedNorm_chr8fw <- join(AnnotatedNorm_chr8fw,chr8fw, by = "New_Gene")
AnnotatedNorm_chr9fw <- join(AnnotatedNorm_chr9fw,chr9fw, by = "New_Gene")
AnnotatedNorm_chr10fw <- join(AnnotatedNorm_chr10fw,chr10fw, by = "New_Gene")
AnnotatedNorm_chr11fw <- join(AnnotatedNorm_chr11fw,chr11fw, by = "New_Gene")
AnnotatedNorm_chr12fw <- join(AnnotatedNorm_chr12fw,chr12fw, by = "New_Gene")
AnnotatedNorm_chr13fw <- join(AnnotatedNorm_chr13fw,chr13fw, by = "New_Gene")
AnnotatedNorm_chr14fw <- join(AnnotatedNorm_chr14fw,chr14fw, by = "New_Gene")
AnnotatedNorm_chr15fw <- join(AnnotatedNorm_chr15fw,chr15fw, by = "New_Gene")
AnnotatedNorm_chr16fw <- join(AnnotatedNorm_chr16fw,chr16fw, by = "New_Gene")


#second normalization by total number of reads
SumChr1fw <- sum(AnnotatedNorm_chr1fw$Dbp2_iCLIP)
SumChr2fw <- sum(AnnotatedNorm_chr2fw$Dbp2_iCLIP)
SumChr3fw <- sum(AnnotatedNorm_chr3fw$Dbp2_iCLIP)
SumChr4fw <- sum(AnnotatedNorm_chr4fw$Dbp2_iCLIP)
SumChr5fw <- sum(AnnotatedNorm_chr5fw$Dbp2_iCLIP)
SumChr6fw <- sum(AnnotatedNorm_chr6fw$Dbp2_iCLIP)
SumChr7fw <- sum(AnnotatedNorm_chr7fw$Dbp2_iCLIP)
SumChr8fw <- sum(AnnotatedNorm_chr8fw$Dbp2_iCLIP)
SumChr9fw <- sum(AnnotatedNorm_chr9fw$Dbp2_iCLIP)
SumChr10fw <- sum(AnnotatedNorm_chr10fw$Dbp2_iCLIP)
SumChr11fw <- sum(AnnotatedNorm_chr11fw$Dbp2_iCLIP)
SumChr12fw <- sum(AnnotatedNorm_chr12fw$Dbp2_iCLIP)
SumChr13fw <- sum(AnnotatedNorm_chr13fw$Dbp2_iCLIP)
SumChr14fw <- sum(AnnotatedNorm_chr14fw$Dbp2_iCLIP)
SumChr15fw <- sum(AnnotatedNorm_chr15fw$Dbp2_iCLIP)
SumChr16fw <- sum(AnnotatedNorm_chr16fw$Dbp2_iCLIP)

SumChr1rev <- sum(AnnotatedNorm_chr1rev$Dbp2_iCLIP)
SumChr2rev <- sum(AnnotatedNorm_chr2rev$Dbp2_iCLIP)
SumChr3rev <- sum(AnnotatedNorm_chr3rev$Dbp2_iCLIP)
SumChr4rev <- sum(AnnotatedNorm_chr4rev$Dbp2_iCLIP)
SumChr5rev <- sum(AnnotatedNorm_chr5rev$Dbp2_iCLIP)
SumChr6rev <- sum(AnnotatedNorm_chr6rev$Dbp2_iCLIP)
SumChr7rev <- sum(AnnotatedNorm_chr7rev$Dbp2_iCLIP)
SumChr8rev <- sum(AnnotatedNorm_chr8rev$Dbp2_iCLIP)
SumChr9rev <- sum(AnnotatedNorm_chr9rev$Dbp2_iCLIP)
SumChr10rev <- sum(AnnotatedNorm_chr10rev$Dbp2_iCLIP)
SumChr11rev <- sum(AnnotatedNorm_chr11rev$Dbp2_iCLIP)
SumChr12rev <- sum(AnnotatedNorm_chr12rev$Dbp2_iCLIP)
SumChr13rev <- sum(AnnotatedNorm_chr13rev$Dbp2_iCLIP)
SumChr14rev <- sum(AnnotatedNorm_chr14rev$Dbp2_iCLIP)
SumChr15rev <- sum(AnnotatedNorm_chr15rev$Dbp2_iCLIP)
SumChr16rev <- sum(AnnotatedNorm_chr16rev$Dbp2_iCLIP)

Total_Dbp2_Hits_mRNA <- sum(SumChr16rev,SumChr15rev,SumChr14rev,SumChr13rev,SumChr12rev,SumChr11rev,SumChr10rev,SumChr9fw,SumChr8rev,SumChr7rev,SumChr6rev,SumChr5rev,SumChr4rev,SumChr3rev,SumChr2rev,SumChr1rev
                       ,SumChr16fw,SumChr15fw,SumChr14fw,SumChr13fw,SumChr12fw,SumChr11fw,SumChr10fw,SumChr9fw,SumChr8fw,SumChr7fw,SumChr6fw,SumChr5fw,SumChr4fw,SumChr3fw,SumChr2fw,SumChr1fw)

#make positions relative to TSS start in percent units
AnnotatedNorm_chr1fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr1fw$pos>=AnnotatedNorm_chr1fw$TSS & AnnotatedNorm_chr1fw$pos<AnnotatedNorm_chr1fw$AUG, (AnnotatedNorm_chr1fw$pos+1-AnnotatedNorm_chr1fw$TSS)/AnnotatedNorm_chr1fw$UTR5length,NA)
AnnotatedNorm_chr2fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr2fw$pos>=AnnotatedNorm_chr2fw$TSS & AnnotatedNorm_chr2fw$pos<AnnotatedNorm_chr2fw$AUG, (AnnotatedNorm_chr2fw$pos+1-AnnotatedNorm_chr2fw$TSS)/AnnotatedNorm_chr2fw$UTR5length,NA)
AnnotatedNorm_chr3fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr3fw$pos>=AnnotatedNorm_chr3fw$TSS & AnnotatedNorm_chr3fw$pos<AnnotatedNorm_chr3fw$AUG, (AnnotatedNorm_chr3fw$pos+1-AnnotatedNorm_chr3fw$TSS)/AnnotatedNorm_chr3fw$UTR5length,NA)
AnnotatedNorm_chr4fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr4fw$pos>=AnnotatedNorm_chr4fw$TSS & AnnotatedNorm_chr4fw$pos<AnnotatedNorm_chr4fw$AUG, (AnnotatedNorm_chr4fw$pos+1-AnnotatedNorm_chr4fw$TSS)/AnnotatedNorm_chr4fw$UTR5length,NA)
AnnotatedNorm_chr5fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr5fw$pos>=AnnotatedNorm_chr5fw$TSS & AnnotatedNorm_chr5fw$pos<AnnotatedNorm_chr5fw$AUG, (AnnotatedNorm_chr5fw$pos+1-AnnotatedNorm_chr5fw$TSS)/AnnotatedNorm_chr5fw$UTR5length,NA)
AnnotatedNorm_chr6fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr6fw$pos>=AnnotatedNorm_chr6fw$TSS & AnnotatedNorm_chr6fw$pos<AnnotatedNorm_chr6fw$AUG, (AnnotatedNorm_chr6fw$pos+1-AnnotatedNorm_chr6fw$TSS)/AnnotatedNorm_chr6fw$UTR5length,NA)
AnnotatedNorm_chr7fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr7fw$pos>=AnnotatedNorm_chr7fw$TSS & AnnotatedNorm_chr7fw$pos<AnnotatedNorm_chr7fw$AUG, (AnnotatedNorm_chr7fw$pos+1-AnnotatedNorm_chr7fw$TSS)/AnnotatedNorm_chr7fw$UTR5length,NA)
AnnotatedNorm_chr8fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr8fw$pos>=AnnotatedNorm_chr8fw$TSS & AnnotatedNorm_chr8fw$pos<AnnotatedNorm_chr8fw$AUG, (AnnotatedNorm_chr8fw$pos+1-AnnotatedNorm_chr8fw$TSS)/AnnotatedNorm_chr8fw$UTR5length,NA)
AnnotatedNorm_chr9fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr9fw$pos>=AnnotatedNorm_chr9fw$TSS & AnnotatedNorm_chr9fw$pos<AnnotatedNorm_chr9fw$AUG, (AnnotatedNorm_chr9fw$pos+1-AnnotatedNorm_chr9fw$TSS)/AnnotatedNorm_chr9fw$UTR5length,NA)
AnnotatedNorm_chr10fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr10fw$pos>=AnnotatedNorm_chr10fw$TSS & AnnotatedNorm_chr10fw$pos<AnnotatedNorm_chr10fw$AUG, (AnnotatedNorm_chr10fw$pos+1-AnnotatedNorm_chr10fw$TSS)/AnnotatedNorm_chr10fw$UTR5length,NA)
AnnotatedNorm_chr11fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr11fw$pos>=AnnotatedNorm_chr11fw$TSS & AnnotatedNorm_chr11fw$pos<AnnotatedNorm_chr11fw$AUG, (AnnotatedNorm_chr11fw$pos+1-AnnotatedNorm_chr11fw$TSS)/AnnotatedNorm_chr11fw$UTR5length,NA)
AnnotatedNorm_chr12fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr12fw$pos>=AnnotatedNorm_chr12fw$TSS & AnnotatedNorm_chr12fw$pos<AnnotatedNorm_chr12fw$AUG, (AnnotatedNorm_chr12fw$pos+1-AnnotatedNorm_chr12fw$TSS)/AnnotatedNorm_chr12fw$UTR5length,NA)
AnnotatedNorm_chr13fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr13fw$pos>=AnnotatedNorm_chr13fw$TSS & AnnotatedNorm_chr13fw$pos<AnnotatedNorm_chr13fw$AUG, (AnnotatedNorm_chr13fw$pos+1-AnnotatedNorm_chr13fw$TSS)/AnnotatedNorm_chr13fw$UTR5length,NA)
AnnotatedNorm_chr14fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr14fw$pos>=AnnotatedNorm_chr14fw$TSS & AnnotatedNorm_chr14fw$pos<AnnotatedNorm_chr14fw$AUG, (AnnotatedNorm_chr14fw$pos+1-AnnotatedNorm_chr14fw$TSS)/AnnotatedNorm_chr14fw$UTR5length,NA)
AnnotatedNorm_chr15fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr15fw$pos>=AnnotatedNorm_chr15fw$TSS & AnnotatedNorm_chr15fw$pos<AnnotatedNorm_chr15fw$AUG, (AnnotatedNorm_chr15fw$pos+1-AnnotatedNorm_chr15fw$TSS)/AnnotatedNorm_chr15fw$UTR5length,NA)
AnnotatedNorm_chr16fw$relpos_UTR5<- ifelse(AnnotatedNorm_chr16fw$pos>=AnnotatedNorm_chr16fw$TSS & AnnotatedNorm_chr16fw$pos<AnnotatedNorm_chr16fw$AUG, (AnnotatedNorm_chr16fw$pos+1-AnnotatedNorm_chr16fw$TSS)/AnnotatedNorm_chr16fw$UTR5length,NA)

AnnotatedNorm_chr1rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr1rev$pos<=AnnotatedNorm_chr1rev$TSS & AnnotatedNorm_chr1rev$pos>AnnotatedNorm_chr1rev$AUG, (AnnotatedNorm_chr1rev$TSS-AnnotatedNorm_chr1rev$pos+1)/AnnotatedNorm_chr1rev$UTR5length,NA)
AnnotatedNorm_chr2rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr2rev$pos<=AnnotatedNorm_chr2rev$TSS & AnnotatedNorm_chr2rev$pos>AnnotatedNorm_chr2rev$AUG, (AnnotatedNorm_chr2rev$TSS-AnnotatedNorm_chr2rev$pos+1)/AnnotatedNorm_chr2rev$UTR5length,NA)
AnnotatedNorm_chr3rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr3rev$pos<=AnnotatedNorm_chr3rev$TSS & AnnotatedNorm_chr3rev$pos>AnnotatedNorm_chr3rev$AUG, (AnnotatedNorm_chr3rev$TSS-AnnotatedNorm_chr3rev$pos+1)/AnnotatedNorm_chr3rev$UTR5length,NA)
AnnotatedNorm_chr4rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr4rev$pos<=AnnotatedNorm_chr4rev$TSS & AnnotatedNorm_chr4rev$pos>AnnotatedNorm_chr4rev$AUG, (AnnotatedNorm_chr4rev$TSS-AnnotatedNorm_chr4rev$pos+1)/AnnotatedNorm_chr4rev$UTR5length,NA)
AnnotatedNorm_chr5rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr5rev$pos<=AnnotatedNorm_chr5rev$TSS & AnnotatedNorm_chr5rev$pos>AnnotatedNorm_chr5rev$AUG, (AnnotatedNorm_chr5rev$TSS-AnnotatedNorm_chr5rev$pos+1)/AnnotatedNorm_chr5rev$UTR5length,NA)
AnnotatedNorm_chr6rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr6rev$pos<=AnnotatedNorm_chr6rev$TSS & AnnotatedNorm_chr6rev$pos>AnnotatedNorm_chr6rev$AUG, (AnnotatedNorm_chr6rev$TSS-AnnotatedNorm_chr6rev$pos+1)/AnnotatedNorm_chr6rev$UTR5length,NA)
AnnotatedNorm_chr7rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr7rev$pos<=AnnotatedNorm_chr7rev$TSS & AnnotatedNorm_chr7rev$pos>AnnotatedNorm_chr7rev$AUG, (AnnotatedNorm_chr7rev$TSS-AnnotatedNorm_chr7rev$pos+1)/AnnotatedNorm_chr7rev$UTR5length,NA)
AnnotatedNorm_chr8rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr8rev$pos<=AnnotatedNorm_chr8rev$TSS & AnnotatedNorm_chr8rev$pos>AnnotatedNorm_chr8rev$AUG, (AnnotatedNorm_chr8rev$TSS-AnnotatedNorm_chr8rev$pos+1)/AnnotatedNorm_chr8rev$UTR5length,NA)
AnnotatedNorm_chr9rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr9rev$pos<=AnnotatedNorm_chr9rev$TSS & AnnotatedNorm_chr9rev$pos>AnnotatedNorm_chr9rev$AUG, (AnnotatedNorm_chr9rev$TSS-AnnotatedNorm_chr9rev$pos+1)/AnnotatedNorm_chr9rev$UTR5length,NA)
AnnotatedNorm_chr10rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr10rev$pos<=AnnotatedNorm_chr10rev$TSS & AnnotatedNorm_chr10rev$pos>AnnotatedNorm_chr10rev$AUG, (AnnotatedNorm_chr10rev$TSS-AnnotatedNorm_chr10rev$pos+1)/AnnotatedNorm_chr10rev$UTR5length,NA)
AnnotatedNorm_chr11rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr11rev$pos<=AnnotatedNorm_chr11rev$TSS & AnnotatedNorm_chr11rev$pos>AnnotatedNorm_chr11rev$AUG, (AnnotatedNorm_chr11rev$TSS-AnnotatedNorm_chr11rev$pos+1)/AnnotatedNorm_chr11rev$UTR5length,NA)
AnnotatedNorm_chr12rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr12rev$pos<=AnnotatedNorm_chr12rev$TSS & AnnotatedNorm_chr12rev$pos>AnnotatedNorm_chr12rev$AUG, (AnnotatedNorm_chr12rev$TSS-AnnotatedNorm_chr12rev$pos+1)/AnnotatedNorm_chr12rev$UTR5length,NA)
AnnotatedNorm_chr13rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr13rev$pos<=AnnotatedNorm_chr13rev$TSS & AnnotatedNorm_chr13rev$pos>AnnotatedNorm_chr13rev$AUG, (AnnotatedNorm_chr13rev$TSS-AnnotatedNorm_chr13rev$pos+1)/AnnotatedNorm_chr13rev$UTR5length,NA)
AnnotatedNorm_chr14rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr14rev$pos<=AnnotatedNorm_chr14rev$TSS & AnnotatedNorm_chr14rev$pos>AnnotatedNorm_chr14rev$AUG, (AnnotatedNorm_chr14rev$TSS-AnnotatedNorm_chr14rev$pos+1)/AnnotatedNorm_chr14rev$UTR5length,NA)
AnnotatedNorm_chr15rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr15rev$pos<=AnnotatedNorm_chr15rev$TSS & AnnotatedNorm_chr15rev$pos>AnnotatedNorm_chr15rev$AUG, (AnnotatedNorm_chr15rev$TSS-AnnotatedNorm_chr15rev$pos+1)/AnnotatedNorm_chr15rev$UTR5length,NA)
AnnotatedNorm_chr16rev$relpos_UTR5<- ifelse(AnnotatedNorm_chr16rev$pos<=AnnotatedNorm_chr16rev$TSS & AnnotatedNorm_chr16rev$pos>AnnotatedNorm_chr16rev$AUG, (AnnotatedNorm_chr16rev$TSS-AnnotatedNorm_chr16rev$pos+1)/AnnotatedNorm_chr16rev$UTR5length,NA)


#make positions relative to ORF start in percent units
AnnotatedNorm_chr1fw$relpos_ORF<- ifelse(AnnotatedNorm_chr1fw$pos>=AnnotatedNorm_chr1fw$AUG & AnnotatedNorm_chr1fw$pos<AnnotatedNorm_chr1fw$Stop, (AnnotatedNorm_chr1fw$pos+1-AnnotatedNorm_chr1fw$AUG)/AnnotatedNorm_chr1fw$ORFlength,NA)
AnnotatedNorm_chr2fw$relpos_ORF<- ifelse(AnnotatedNorm_chr2fw$pos>=AnnotatedNorm_chr2fw$AUG & AnnotatedNorm_chr2fw$pos<AnnotatedNorm_chr2fw$Stop, (AnnotatedNorm_chr2fw$pos+1-AnnotatedNorm_chr2fw$AUG)/AnnotatedNorm_chr2fw$ORFlength,NA)
AnnotatedNorm_chr3fw$relpos_ORF<- ifelse(AnnotatedNorm_chr3fw$pos>=AnnotatedNorm_chr3fw$AUG & AnnotatedNorm_chr3fw$pos<AnnotatedNorm_chr3fw$Stop, (AnnotatedNorm_chr3fw$pos+1-AnnotatedNorm_chr3fw$AUG)/AnnotatedNorm_chr3fw$ORFlength,NA)
AnnotatedNorm_chr4fw$relpos_ORF<- ifelse(AnnotatedNorm_chr4fw$pos>=AnnotatedNorm_chr4fw$AUG & AnnotatedNorm_chr4fw$pos<AnnotatedNorm_chr4fw$Stop, (AnnotatedNorm_chr4fw$pos+1-AnnotatedNorm_chr4fw$AUG)/AnnotatedNorm_chr4fw$ORFlength,NA)
AnnotatedNorm_chr5fw$relpos_ORF<- ifelse(AnnotatedNorm_chr5fw$pos>=AnnotatedNorm_chr5fw$AUG & AnnotatedNorm_chr5fw$pos<AnnotatedNorm_chr5fw$Stop, (AnnotatedNorm_chr5fw$pos+1-AnnotatedNorm_chr5fw$AUG)/AnnotatedNorm_chr5fw$ORFlength,NA)
AnnotatedNorm_chr6fw$relpos_ORF<- ifelse(AnnotatedNorm_chr6fw$pos>=AnnotatedNorm_chr6fw$AUG & AnnotatedNorm_chr6fw$pos<AnnotatedNorm_chr6fw$Stop, (AnnotatedNorm_chr6fw$pos+1-AnnotatedNorm_chr6fw$AUG)/AnnotatedNorm_chr6fw$ORFlength,NA)
AnnotatedNorm_chr7fw$relpos_ORF<- ifelse(AnnotatedNorm_chr7fw$pos>=AnnotatedNorm_chr7fw$AUG & AnnotatedNorm_chr7fw$pos<AnnotatedNorm_chr7fw$Stop, (AnnotatedNorm_chr7fw$pos+1-AnnotatedNorm_chr7fw$AUG)/AnnotatedNorm_chr7fw$ORFlength,NA)
AnnotatedNorm_chr8fw$relpos_ORF<- ifelse(AnnotatedNorm_chr8fw$pos>=AnnotatedNorm_chr8fw$AUG & AnnotatedNorm_chr8fw$pos<AnnotatedNorm_chr8fw$Stop, (AnnotatedNorm_chr8fw$pos+1-AnnotatedNorm_chr8fw$AUG)/AnnotatedNorm_chr8fw$ORFlength,NA)
AnnotatedNorm_chr9fw$relpos_ORF<- ifelse(AnnotatedNorm_chr9fw$pos>=AnnotatedNorm_chr9fw$AUG & AnnotatedNorm_chr9fw$pos<AnnotatedNorm_chr9fw$Stop, (AnnotatedNorm_chr9fw$pos+1-AnnotatedNorm_chr9fw$AUG)/AnnotatedNorm_chr9fw$ORFlength,NA)
AnnotatedNorm_chr10fw$relpos_ORF<- ifelse(AnnotatedNorm_chr10fw$pos>=AnnotatedNorm_chr10fw$AUG & AnnotatedNorm_chr10fw$pos<AnnotatedNorm_chr10fw$Stop, (AnnotatedNorm_chr10fw$pos+1-AnnotatedNorm_chr10fw$AUG)/AnnotatedNorm_chr10fw$ORFlength,NA)
AnnotatedNorm_chr11fw$relpos_ORF<- ifelse(AnnotatedNorm_chr11fw$pos>=AnnotatedNorm_chr11fw$AUG & AnnotatedNorm_chr11fw$pos<AnnotatedNorm_chr11fw$Stop, (AnnotatedNorm_chr11fw$pos+1-AnnotatedNorm_chr11fw$AUG)/AnnotatedNorm_chr11fw$ORFlength,NA)
AnnotatedNorm_chr12fw$relpos_ORF<- ifelse(AnnotatedNorm_chr12fw$pos>=AnnotatedNorm_chr12fw$AUG & AnnotatedNorm_chr12fw$pos<AnnotatedNorm_chr12fw$Stop, (AnnotatedNorm_chr12fw$pos+1-AnnotatedNorm_chr12fw$AUG)/AnnotatedNorm_chr12fw$ORFlength,NA)
AnnotatedNorm_chr13fw$relpos_ORF<- ifelse(AnnotatedNorm_chr13fw$pos>=AnnotatedNorm_chr13fw$AUG & AnnotatedNorm_chr13fw$pos<AnnotatedNorm_chr13fw$Stop, (AnnotatedNorm_chr13fw$pos+1-AnnotatedNorm_chr13fw$AUG)/AnnotatedNorm_chr13fw$ORFlength,NA)
AnnotatedNorm_chr14fw$relpos_ORF<- ifelse(AnnotatedNorm_chr14fw$pos>=AnnotatedNorm_chr14fw$AUG & AnnotatedNorm_chr14fw$pos<AnnotatedNorm_chr14fw$Stop, (AnnotatedNorm_chr14fw$pos+1-AnnotatedNorm_chr14fw$AUG)/AnnotatedNorm_chr14fw$ORFlength,NA)
AnnotatedNorm_chr15fw$relpos_ORF<- ifelse(AnnotatedNorm_chr15fw$pos>=AnnotatedNorm_chr15fw$AUG & AnnotatedNorm_chr15fw$pos<AnnotatedNorm_chr15fw$Stop, (AnnotatedNorm_chr15fw$pos+1-AnnotatedNorm_chr15fw$AUG)/AnnotatedNorm_chr15fw$ORFlength,NA)
AnnotatedNorm_chr16fw$relpos_ORF<- ifelse(AnnotatedNorm_chr16fw$pos>=AnnotatedNorm_chr16fw$AUG & AnnotatedNorm_chr16fw$pos<AnnotatedNorm_chr16fw$Stop, (AnnotatedNorm_chr16fw$pos+1-AnnotatedNorm_chr16fw$AUG)/AnnotatedNorm_chr16fw$ORFlength,NA)

AnnotatedNorm_chr1rev$relpos_ORF<- ifelse(AnnotatedNorm_chr1rev$pos<=AnnotatedNorm_chr1rev$AUG & AnnotatedNorm_chr1rev$pos>AnnotatedNorm_chr1rev$Stop, (AnnotatedNorm_chr1rev$AUG-AnnotatedNorm_chr1rev$pos+1)/AnnotatedNorm_chr1rev$ORFlength,NA)
AnnotatedNorm_chr2rev$relpos_ORF<- ifelse(AnnotatedNorm_chr2rev$pos<=AnnotatedNorm_chr2rev$AUG & AnnotatedNorm_chr2rev$pos>AnnotatedNorm_chr2rev$Stop, (AnnotatedNorm_chr2rev$AUG-AnnotatedNorm_chr2rev$pos+1)/AnnotatedNorm_chr2rev$ORFlength,NA)
AnnotatedNorm_chr3rev$relpos_ORF<- ifelse(AnnotatedNorm_chr3rev$pos<=AnnotatedNorm_chr3rev$AUG & AnnotatedNorm_chr3rev$pos>AnnotatedNorm_chr3rev$Stop, (AnnotatedNorm_chr3rev$AUG-AnnotatedNorm_chr3rev$pos+1)/AnnotatedNorm_chr3rev$ORFlength,NA)
AnnotatedNorm_chr4rev$relpos_ORF<- ifelse(AnnotatedNorm_chr4rev$pos<=AnnotatedNorm_chr4rev$AUG & AnnotatedNorm_chr4rev$pos>AnnotatedNorm_chr4rev$Stop, (AnnotatedNorm_chr4rev$AUG-AnnotatedNorm_chr4rev$pos+1)/AnnotatedNorm_chr4rev$ORFlength,NA)
AnnotatedNorm_chr5rev$relpos_ORF<- ifelse(AnnotatedNorm_chr5rev$pos<=AnnotatedNorm_chr5rev$AUG & AnnotatedNorm_chr5rev$pos>AnnotatedNorm_chr5rev$Stop, (AnnotatedNorm_chr5rev$AUG-AnnotatedNorm_chr5rev$pos+1)/AnnotatedNorm_chr5rev$ORFlength,NA)
AnnotatedNorm_chr6rev$relpos_ORF<- ifelse(AnnotatedNorm_chr6rev$pos<=AnnotatedNorm_chr6rev$AUG & AnnotatedNorm_chr6rev$pos>AnnotatedNorm_chr6rev$Stop, (AnnotatedNorm_chr6rev$AUG-AnnotatedNorm_chr6rev$pos+1)/AnnotatedNorm_chr6rev$ORFlength,NA)
AnnotatedNorm_chr7rev$relpos_ORF<- ifelse(AnnotatedNorm_chr7rev$pos<=AnnotatedNorm_chr7rev$AUG & AnnotatedNorm_chr7rev$pos>AnnotatedNorm_chr7rev$Stop, (AnnotatedNorm_chr7rev$AUG-AnnotatedNorm_chr7rev$pos+1)/AnnotatedNorm_chr7rev$ORFlength,NA)
AnnotatedNorm_chr8rev$relpos_ORF<- ifelse(AnnotatedNorm_chr8rev$pos<=AnnotatedNorm_chr8rev$AUG & AnnotatedNorm_chr8rev$pos>AnnotatedNorm_chr8rev$Stop, (AnnotatedNorm_chr8rev$AUG-AnnotatedNorm_chr8rev$pos+1)/AnnotatedNorm_chr8rev$ORFlength,NA)
AnnotatedNorm_chr9rev$relpos_ORF<- ifelse(AnnotatedNorm_chr9rev$pos<=AnnotatedNorm_chr9rev$AUG & AnnotatedNorm_chr9rev$pos>AnnotatedNorm_chr9rev$Stop, (AnnotatedNorm_chr9rev$AUG-AnnotatedNorm_chr9rev$pos+1)/AnnotatedNorm_chr9rev$ORFlength,NA)
AnnotatedNorm_chr10rev$relpos_ORF<- ifelse(AnnotatedNorm_chr10rev$pos<=AnnotatedNorm_chr10rev$AUG & AnnotatedNorm_chr10rev$pos>AnnotatedNorm_chr10rev$Stop, (AnnotatedNorm_chr10rev$AUG-AnnotatedNorm_chr10rev$pos+1)/AnnotatedNorm_chr10rev$ORFlength,NA)
AnnotatedNorm_chr11rev$relpos_ORF<- ifelse(AnnotatedNorm_chr11rev$pos<=AnnotatedNorm_chr11rev$AUG & AnnotatedNorm_chr11rev$pos>AnnotatedNorm_chr11rev$Stop, (AnnotatedNorm_chr11rev$AUG-AnnotatedNorm_chr11rev$pos+1)/AnnotatedNorm_chr11rev$ORFlength,NA)
AnnotatedNorm_chr12rev$relpos_ORF<- ifelse(AnnotatedNorm_chr12rev$pos<=AnnotatedNorm_chr12rev$AUG & AnnotatedNorm_chr12rev$pos>AnnotatedNorm_chr12rev$Stop, (AnnotatedNorm_chr12rev$AUG-AnnotatedNorm_chr12rev$pos+1)/AnnotatedNorm_chr12rev$ORFlength,NA)
AnnotatedNorm_chr13rev$relpos_ORF<- ifelse(AnnotatedNorm_chr13rev$pos<=AnnotatedNorm_chr13rev$AUG & AnnotatedNorm_chr13rev$pos>AnnotatedNorm_chr13rev$Stop, (AnnotatedNorm_chr13rev$AUG-AnnotatedNorm_chr13rev$pos+1)/AnnotatedNorm_chr13rev$ORFlength,NA)
AnnotatedNorm_chr14rev$relpos_ORF<- ifelse(AnnotatedNorm_chr14rev$pos<=AnnotatedNorm_chr14rev$AUG & AnnotatedNorm_chr14rev$pos>AnnotatedNorm_chr14rev$Stop, (AnnotatedNorm_chr14rev$AUG-AnnotatedNorm_chr14rev$pos+1)/AnnotatedNorm_chr14rev$ORFlength,NA)
AnnotatedNorm_chr15rev$relpos_ORF<- ifelse(AnnotatedNorm_chr15rev$pos<=AnnotatedNorm_chr15rev$AUG & AnnotatedNorm_chr15rev$pos>AnnotatedNorm_chr15rev$Stop, (AnnotatedNorm_chr15rev$AUG-AnnotatedNorm_chr15rev$pos+1)/AnnotatedNorm_chr15rev$ORFlength,NA)
AnnotatedNorm_chr16rev$relpos_ORF<- ifelse(AnnotatedNorm_chr16rev$pos<=AnnotatedNorm_chr16rev$AUG & AnnotatedNorm_chr16rev$pos>AnnotatedNorm_chr16rev$Stop, (AnnotatedNorm_chr16rev$AUG-AnnotatedNorm_chr16rev$pos+1)/AnnotatedNorm_chr16rev$ORFlength,NA)


#make positions relative to UTR3 start in percent units
AnnotatedNorm_chr1fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr1fw$pos>=AnnotatedNorm_chr1fw$Stop & AnnotatedNorm_chr1fw$pos<AnnotatedNorm_chr1fw$PAS,(AnnotatedNorm_chr1fw$pos+1-AnnotatedNorm_chr1fw$Stop)/AnnotatedNorm_chr1fw$UTR3length,NA)
AnnotatedNorm_chr2fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr2fw$pos>=AnnotatedNorm_chr2fw$Stop & AnnotatedNorm_chr2fw$pos<AnnotatedNorm_chr2fw$PAS,(AnnotatedNorm_chr2fw$pos+1-AnnotatedNorm_chr2fw$Stop)/AnnotatedNorm_chr2fw$UTR3length,NA)
AnnotatedNorm_chr3fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr3fw$pos>=AnnotatedNorm_chr3fw$Stop & AnnotatedNorm_chr3fw$pos<AnnotatedNorm_chr3fw$PAS,(AnnotatedNorm_chr3fw$pos+1-AnnotatedNorm_chr3fw$Stop)/AnnotatedNorm_chr3fw$UTR3length,NA)
AnnotatedNorm_chr4fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr4fw$pos>=AnnotatedNorm_chr4fw$Stop & AnnotatedNorm_chr4fw$pos<AnnotatedNorm_chr4fw$PAS,(AnnotatedNorm_chr4fw$pos+1-AnnotatedNorm_chr4fw$Stop)/AnnotatedNorm_chr4fw$UTR3length,NA)
AnnotatedNorm_chr5fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr5fw$pos>=AnnotatedNorm_chr5fw$Stop & AnnotatedNorm_chr5fw$pos<AnnotatedNorm_chr5fw$PAS,(AnnotatedNorm_chr5fw$pos+1-AnnotatedNorm_chr5fw$Stop)/AnnotatedNorm_chr5fw$UTR3length,NA)
AnnotatedNorm_chr6fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr6fw$pos>=AnnotatedNorm_chr6fw$Stop & AnnotatedNorm_chr6fw$pos<AnnotatedNorm_chr6fw$PAS,(AnnotatedNorm_chr6fw$pos+1-AnnotatedNorm_chr6fw$Stop)/AnnotatedNorm_chr6fw$UTR3length,NA)
AnnotatedNorm_chr7fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr7fw$pos>=AnnotatedNorm_chr7fw$Stop & AnnotatedNorm_chr7fw$pos<AnnotatedNorm_chr7fw$PAS,(AnnotatedNorm_chr7fw$pos+1-AnnotatedNorm_chr7fw$Stop)/AnnotatedNorm_chr7fw$UTR3length,NA)
AnnotatedNorm_chr8fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr8fw$pos>=AnnotatedNorm_chr8fw$Stop & AnnotatedNorm_chr8fw$pos<AnnotatedNorm_chr8fw$PAS,(AnnotatedNorm_chr8fw$pos+1-AnnotatedNorm_chr8fw$Stop)/AnnotatedNorm_chr8fw$UTR3length,NA)
AnnotatedNorm_chr9fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr9fw$pos>=AnnotatedNorm_chr9fw$Stop & AnnotatedNorm_chr9fw$pos<AnnotatedNorm_chr9fw$PAS,(AnnotatedNorm_chr9fw$pos+1-AnnotatedNorm_chr9fw$Stop)/AnnotatedNorm_chr9fw$UTR3length,NA)
AnnotatedNorm_chr10fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr10fw$pos>=AnnotatedNorm_chr10fw$Stop & AnnotatedNorm_chr10fw$pos<AnnotatedNorm_chr10fw$PAS,(AnnotatedNorm_chr10fw$pos+1-AnnotatedNorm_chr10fw$Stop)/AnnotatedNorm_chr10fw$UTR3length,NA)
AnnotatedNorm_chr11fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr11fw$pos>=AnnotatedNorm_chr11fw$Stop & AnnotatedNorm_chr11fw$pos<AnnotatedNorm_chr11fw$PAS,(AnnotatedNorm_chr11fw$pos+1-AnnotatedNorm_chr11fw$Stop)/AnnotatedNorm_chr11fw$UTR3length,NA)
AnnotatedNorm_chr12fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr12fw$pos>=AnnotatedNorm_chr12fw$Stop & AnnotatedNorm_chr12fw$pos<AnnotatedNorm_chr12fw$PAS,(AnnotatedNorm_chr12fw$pos+1-AnnotatedNorm_chr12fw$Stop)/AnnotatedNorm_chr12fw$UTR3length,NA)
AnnotatedNorm_chr13fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr13fw$pos>=AnnotatedNorm_chr13fw$Stop & AnnotatedNorm_chr13fw$pos<AnnotatedNorm_chr13fw$PAS,(AnnotatedNorm_chr13fw$pos+1-AnnotatedNorm_chr13fw$Stop)/AnnotatedNorm_chr13fw$UTR3length,NA)
AnnotatedNorm_chr14fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr14fw$pos>=AnnotatedNorm_chr14fw$Stop & AnnotatedNorm_chr14fw$pos<AnnotatedNorm_chr14fw$PAS,(AnnotatedNorm_chr14fw$pos+1-AnnotatedNorm_chr14fw$Stop)/AnnotatedNorm_chr14fw$UTR3length,NA)
AnnotatedNorm_chr15fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr15fw$pos>=AnnotatedNorm_chr15fw$Stop & AnnotatedNorm_chr15fw$pos<AnnotatedNorm_chr15fw$PAS,(AnnotatedNorm_chr15fw$pos+1-AnnotatedNorm_chr15fw$Stop)/AnnotatedNorm_chr15fw$UTR3length,NA)
AnnotatedNorm_chr16fw$relpos_UTR3<- ifelse(AnnotatedNorm_chr16fw$pos>=AnnotatedNorm_chr16fw$Stop & AnnotatedNorm_chr16fw$pos<AnnotatedNorm_chr16fw$PAS,(AnnotatedNorm_chr16fw$pos+1-AnnotatedNorm_chr16fw$Stop)/AnnotatedNorm_chr16fw$UTR3length,NA)

AnnotatedNorm_chr1rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr1rev$pos<=AnnotatedNorm_chr1rev$Stop & AnnotatedNorm_chr1rev$pos>AnnotatedNorm_chr1rev$PAS,(AnnotatedNorm_chr1rev$Stop-AnnotatedNorm_chr1rev$pos+1)/AnnotatedNorm_chr1rev$UTR3length,NA)
AnnotatedNorm_chr2rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr2rev$pos<=AnnotatedNorm_chr2rev$Stop & AnnotatedNorm_chr2rev$pos>AnnotatedNorm_chr2rev$PAS,(AnnotatedNorm_chr2rev$Stop-AnnotatedNorm_chr2rev$pos+1)/AnnotatedNorm_chr2rev$UTR3length,NA)
AnnotatedNorm_chr3rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr3rev$pos<=AnnotatedNorm_chr3rev$Stop & AnnotatedNorm_chr3rev$pos>AnnotatedNorm_chr3rev$PAS,(AnnotatedNorm_chr3rev$Stop-AnnotatedNorm_chr3rev$pos+1)/AnnotatedNorm_chr3rev$UTR3length,NA)
AnnotatedNorm_chr4rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr4rev$pos<=AnnotatedNorm_chr4rev$Stop & AnnotatedNorm_chr4rev$pos>AnnotatedNorm_chr4rev$PAS,(AnnotatedNorm_chr4rev$Stop-AnnotatedNorm_chr4rev$pos+1)/AnnotatedNorm_chr4rev$UTR3length,NA)
AnnotatedNorm_chr5rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr5rev$pos<=AnnotatedNorm_chr5rev$Stop & AnnotatedNorm_chr5rev$pos>AnnotatedNorm_chr5rev$PAS,(AnnotatedNorm_chr5rev$Stop-AnnotatedNorm_chr5rev$pos+1)/AnnotatedNorm_chr5rev$UTR3length,NA)
AnnotatedNorm_chr6rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr6rev$pos<=AnnotatedNorm_chr6rev$Stop & AnnotatedNorm_chr6rev$pos>AnnotatedNorm_chr6rev$PAS,(AnnotatedNorm_chr6rev$Stop-AnnotatedNorm_chr6rev$pos+1)/AnnotatedNorm_chr6rev$UTR3length,NA)
AnnotatedNorm_chr7rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr7rev$pos<=AnnotatedNorm_chr7rev$Stop & AnnotatedNorm_chr7rev$pos>AnnotatedNorm_chr7rev$PAS,(AnnotatedNorm_chr7rev$Stop-AnnotatedNorm_chr7rev$pos+1)/AnnotatedNorm_chr7rev$UTR3length,NA)
AnnotatedNorm_chr8rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr8rev$pos<=AnnotatedNorm_chr8rev$Stop & AnnotatedNorm_chr8rev$pos>AnnotatedNorm_chr8rev$PAS,(AnnotatedNorm_chr8rev$Stop-AnnotatedNorm_chr8rev$pos+1)/AnnotatedNorm_chr8rev$UTR3length,NA)
AnnotatedNorm_chr9rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr9rev$pos<=AnnotatedNorm_chr9rev$Stop & AnnotatedNorm_chr9rev$pos>AnnotatedNorm_chr9rev$PAS,(AnnotatedNorm_chr9rev$Stop-AnnotatedNorm_chr9rev$pos+1)/AnnotatedNorm_chr9rev$UTR3length,NA)
AnnotatedNorm_chr10rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr10rev$pos<=AnnotatedNorm_chr10rev$Stop & AnnotatedNorm_chr10rev$pos>AnnotatedNorm_chr10rev$PAS,(AnnotatedNorm_chr10rev$Stop-AnnotatedNorm_chr10rev$pos+1)/AnnotatedNorm_chr10rev$UTR3length,NA)
AnnotatedNorm_chr11rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr11rev$pos<=AnnotatedNorm_chr11rev$Stop & AnnotatedNorm_chr11rev$pos>AnnotatedNorm_chr11rev$PAS,(AnnotatedNorm_chr11rev$Stop-AnnotatedNorm_chr11rev$pos+1)/AnnotatedNorm_chr11rev$UTR3length,NA)
AnnotatedNorm_chr12rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr12rev$pos<=AnnotatedNorm_chr12rev$Stop & AnnotatedNorm_chr12rev$pos>AnnotatedNorm_chr12rev$PAS,(AnnotatedNorm_chr12rev$Stop-AnnotatedNorm_chr12rev$pos+1)/AnnotatedNorm_chr12rev$UTR3length,NA)
AnnotatedNorm_chr13rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr13rev$pos<=AnnotatedNorm_chr13rev$Stop & AnnotatedNorm_chr13rev$pos>AnnotatedNorm_chr13rev$PAS,(AnnotatedNorm_chr13rev$Stop-AnnotatedNorm_chr13rev$pos+1)/AnnotatedNorm_chr13rev$UTR3length,NA)
AnnotatedNorm_chr14rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr14rev$pos<=AnnotatedNorm_chr14rev$Stop & AnnotatedNorm_chr14rev$pos>AnnotatedNorm_chr14rev$PAS,(AnnotatedNorm_chr14rev$Stop-AnnotatedNorm_chr14rev$pos+1)/AnnotatedNorm_chr14rev$UTR3length,NA)
AnnotatedNorm_chr15rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr15rev$pos<=AnnotatedNorm_chr15rev$Stop & AnnotatedNorm_chr15rev$pos>AnnotatedNorm_chr15rev$PAS,(AnnotatedNorm_chr15rev$Stop-AnnotatedNorm_chr15rev$pos+1)/AnnotatedNorm_chr15rev$UTR3length,NA)
AnnotatedNorm_chr16rev$relpos_UTR3<- ifelse(AnnotatedNorm_chr16rev$pos<=AnnotatedNorm_chr16rev$Stop & AnnotatedNorm_chr16rev$pos>AnnotatedNorm_chr16rev$PAS,(AnnotatedNorm_chr16rev$Stop-AnnotatedNorm_chr16rev$pos+1)/AnnotatedNorm_chr16rev$UTR3length,NA)

#binning the 5'UTR
AnnotatedNorm_chr1fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr1fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr2fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr2fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr3fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr3fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr4fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr4fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr5fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr5fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr6fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr6fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr7fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr7fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr8fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr8fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr9fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr9fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr10fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr10fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr11fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr11fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr12fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr12fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr13fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr13fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr14fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr14fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr15fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr15fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr16fw$relbin_UTR5 <- findInterval(AnnotatedNorm_chr16fw$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))

AnnotatedNorm_chr1rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr1rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr2rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr2rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr3rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr3rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr4rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr4rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr5rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr5rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr6rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr6rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr7rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr7rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr8rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr8rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr9rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr9rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr10rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr10rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr11rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr11rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr12rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr12rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr13rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr13rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr14rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr14rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr15rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr15rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))
AnnotatedNorm_chr16rev$relbin_UTR5 <- findInterval(AnnotatedNorm_chr16rev$relpos_UTR5, seq(0.06666667, 1, by=0.06666667))

#binning the ORF
AnnotatedNorm_chr1fw$relbin_ORF <- findInterval(AnnotatedNorm_chr1fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr2fw$relbin_ORF <- findInterval(AnnotatedNorm_chr2fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr3fw$relbin_ORF <- findInterval(AnnotatedNorm_chr3fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr4fw$relbin_ORF <- findInterval(AnnotatedNorm_chr4fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr5fw$relbin_ORF <- findInterval(AnnotatedNorm_chr5fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr6fw$relbin_ORF <- findInterval(AnnotatedNorm_chr6fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr7fw$relbin_ORF <- findInterval(AnnotatedNorm_chr7fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr8fw$relbin_ORF <- findInterval(AnnotatedNorm_chr8fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr9fw$relbin_ORF <- findInterval(AnnotatedNorm_chr9fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr10fw$relbin_ORF <- findInterval(AnnotatedNorm_chr10fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr11fw$relbin_ORF <- findInterval(AnnotatedNorm_chr11fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr12fw$relbin_ORF <- findInterval(AnnotatedNorm_chr12fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr13fw$relbin_ORF <- findInterval(AnnotatedNorm_chr13fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr14fw$relbin_ORF <- findInterval(AnnotatedNorm_chr14fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr15fw$relbin_ORF <- findInterval(AnnotatedNorm_chr15fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr16fw$relbin_ORF <- findInterval(AnnotatedNorm_chr16fw$relpos_ORF, seq(0.00234742, 1, by=0.00234742))

AnnotatedNorm_chr1rev$relbin_ORF <- findInterval(AnnotatedNorm_chr1rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr2rev$relbin_ORF <- findInterval(AnnotatedNorm_chr2rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr3rev$relbin_ORF <- findInterval(AnnotatedNorm_chr3rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr4rev$relbin_ORF <- findInterval(AnnotatedNorm_chr4rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr5rev$relbin_ORF <- findInterval(AnnotatedNorm_chr5rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr6rev$relbin_ORF <- findInterval(AnnotatedNorm_chr6rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr7rev$relbin_ORF <- findInterval(AnnotatedNorm_chr7rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr8rev$relbin_ORF <- findInterval(AnnotatedNorm_chr8rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr9rev$relbin_ORF <- findInterval(AnnotatedNorm_chr9rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr10rev$relbin_ORF <- findInterval(AnnotatedNorm_chr10rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr11rev$relbin_ORF <- findInterval(AnnotatedNorm_chr11rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr12rev$relbin_ORF <- findInterval(AnnotatedNorm_chr12rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr13rev$relbin_ORF <- findInterval(AnnotatedNorm_chr13rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr14rev$relbin_ORF <- findInterval(AnnotatedNorm_chr14rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr15rev$relbin_ORF <- findInterval(AnnotatedNorm_chr15rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))
AnnotatedNorm_chr16rev$relbin_ORF <- findInterval(AnnotatedNorm_chr16rev$relpos_ORF, seq(0.00234742, 1, by=0.00234742))

#binning the 3'UTR
AnnotatedNorm_chr1fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr1fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr2fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr2fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr3fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr3fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr4fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr4fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr5fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr5fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr6fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr6fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr7fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr7fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr8fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr8fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr9fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr9fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr10fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr10fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr11fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr11fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr12fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr12fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr13fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr13fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr14fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr14fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr15fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr15fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr16fw$relbin_UTR3 <- findInterval(AnnotatedNorm_chr16fw$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))

AnnotatedNorm_chr1rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr1rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr2rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr2rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr3rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr3rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr4rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr4rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr5rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr5rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr6rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr6rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr7rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr7rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr8rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr8rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr9rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr9rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr10rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr10rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr11rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr11rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr12rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr12rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr13rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr13rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr14rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr14rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr15rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr15rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))
AnnotatedNorm_chr16rev$relbin_UTR3 <- findInterval(AnnotatedNorm_chr16rev$relpos_UTR3, seq(0.03333333, 1, by=0.03333333))

#adding the end positions to bin 19
AnnotatedNorm_chr1fw$relbin_UTR5[AnnotatedNorm_chr1fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr2fw$relbin_UTR5[AnnotatedNorm_chr2fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr3fw$relbin_UTR5[AnnotatedNorm_chr3fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr4fw$relbin_UTR5[AnnotatedNorm_chr4fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr5fw$relbin_UTR5[AnnotatedNorm_chr5fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr6fw$relbin_UTR5[AnnotatedNorm_chr6fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr7fw$relbin_UTR5[AnnotatedNorm_chr7fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr8fw$relbin_UTR5[AnnotatedNorm_chr8fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr9fw$relbin_UTR5[AnnotatedNorm_chr9fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr10fw$relbin_UTR5[AnnotatedNorm_chr10fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr11fw$relbin_UTR5[AnnotatedNorm_chr11fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr12fw$relbin_UTR5[AnnotatedNorm_chr12fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr13fw$relbin_UTR5[AnnotatedNorm_chr13fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr14fw$relbin_UTR5[AnnotatedNorm_chr14fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr15fw$relbin_UTR5[AnnotatedNorm_chr15fw$relbin_UTR5==15]<-14
AnnotatedNorm_chr16fw$relbin_UTR5[AnnotatedNorm_chr16fw$relbin_UTR5==15]<-14

AnnotatedNorm_chr1rev$relbin_UTR5[AnnotatedNorm_chr1rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr2rev$relbin_UTR5[AnnotatedNorm_chr2rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr3rev$relbin_UTR5[AnnotatedNorm_chr3rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr4rev$relbin_UTR5[AnnotatedNorm_chr4rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr5rev$relbin_UTR5[AnnotatedNorm_chr5rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr6rev$relbin_UTR5[AnnotatedNorm_chr6rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr7rev$relbin_UTR5[AnnotatedNorm_chr7rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr8rev$relbin_UTR5[AnnotatedNorm_chr8rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr9rev$relbin_UTR5[AnnotatedNorm_chr9rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr10rev$relbin_UTR5[AnnotatedNorm_chr10rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr11rev$relbin_UTR5[AnnotatedNorm_chr11rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr12rev$relbin_UTR5[AnnotatedNorm_chr12rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr13rev$relbin_UTR5[AnnotatedNorm_chr13rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr14rev$relbin_UTR5[AnnotatedNorm_chr14rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr15rev$relbin_UTR5[AnnotatedNorm_chr15rev$relbin_UTR5==15]<-14
AnnotatedNorm_chr16rev$relbin_UTR5[AnnotatedNorm_chr16rev$relbin_UTR5==15]<-14

AnnotatedNorm_chr1fw$relbin_ORF[AnnotatedNorm_chr1fw$relbin_ORF==426]<-425
AnnotatedNorm_chr2fw$relbin_ORF[AnnotatedNorm_chr2fw$relbin_ORF==426]<-425
AnnotatedNorm_chr3fw$relbin_ORF[AnnotatedNorm_chr3fw$relbin_ORF==426]<-425
AnnotatedNorm_chr4fw$relbin_ORF[AnnotatedNorm_chr4fw$relbin_ORF==426]<-425
AnnotatedNorm_chr5fw$relbin_ORF[AnnotatedNorm_chr5fw$relbin_ORF==426]<-425
AnnotatedNorm_chr6fw$relbin_ORF[AnnotatedNorm_chr6fw$relbin_ORF==426]<-425
AnnotatedNorm_chr7fw$relbin_ORF[AnnotatedNorm_chr7fw$relbin_ORF==426]<-425
AnnotatedNorm_chr8fw$relbin_ORF[AnnotatedNorm_chr8fw$relbin_ORF==426]<-425
AnnotatedNorm_chr9fw$relbin_ORF[AnnotatedNorm_chr9fw$relbin_ORF==426]<-425
AnnotatedNorm_chr10fw$relbin_ORF[AnnotatedNorm_chr10fw$relbin_ORF==426]<-425
AnnotatedNorm_chr11fw$relbin_ORF[AnnotatedNorm_chr11fw$relbin_ORF==426]<-425
AnnotatedNorm_chr12fw$relbin_ORF[AnnotatedNorm_chr12fw$relbin_ORF==426]<-425
AnnotatedNorm_chr13fw$relbin_ORF[AnnotatedNorm_chr13fw$relbin_ORF==426]<-425
AnnotatedNorm_chr14fw$relbin_ORF[AnnotatedNorm_chr14fw$relbin_ORF==426]<-425
AnnotatedNorm_chr15fw$relbin_ORF[AnnotatedNorm_chr15fw$relbin_ORF==426]<-425
AnnotatedNorm_chr16fw$relbin_ORF[AnnotatedNorm_chr16fw$relbin_ORF==426]<-425

AnnotatedNorm_chr1rev$relbin_ORF[AnnotatedNorm_chr1rev$relbin_ORF==426]<-425
AnnotatedNorm_chr2rev$relbin_ORF[AnnotatedNorm_chr2rev$relbin_ORF==426]<-425
AnnotatedNorm_chr3rev$relbin_ORF[AnnotatedNorm_chr3rev$relbin_ORF==426]<-425
AnnotatedNorm_chr4rev$relbin_ORF[AnnotatedNorm_chr4rev$relbin_ORF==426]<-425
AnnotatedNorm_chr5rev$relbin_ORF[AnnotatedNorm_chr5rev$relbin_ORF==426]<-425
AnnotatedNorm_chr6rev$relbin_ORF[AnnotatedNorm_chr6rev$relbin_ORF==426]<-425
AnnotatedNorm_chr7rev$relbin_ORF[AnnotatedNorm_chr7rev$relbin_ORF==426]<-425
AnnotatedNorm_chr8rev$relbin_ORF[AnnotatedNorm_chr8rev$relbin_ORF==426]<-425
AnnotatedNorm_chr9rev$relbin_ORF[AnnotatedNorm_chr9rev$relbin_ORF==426]<-425
AnnotatedNorm_chr10rev$relbin_ORF[AnnotatedNorm_chr10rev$relbin_ORF==426]<-425
AnnotatedNorm_chr11rev$relbin_ORF[AnnotatedNorm_chr11rev$relbin_ORF==426]<-425
AnnotatedNorm_chr12rev$relbin_ORF[AnnotatedNorm_chr12rev$relbin_ORF==426]<-425
AnnotatedNorm_chr13rev$relbin_ORF[AnnotatedNorm_chr13rev$relbin_ORF==426]<-425
AnnotatedNorm_chr14rev$relbin_ORF[AnnotatedNorm_chr14rev$relbin_ORF==426]<-425
AnnotatedNorm_chr15rev$relbin_ORF[AnnotatedNorm_chr15rev$relbin_ORF==426]<-425
AnnotatedNorm_chr16rev$relbin_ORF[AnnotatedNorm_chr16rev$relbin_ORF==426]<-425

AnnotatedNorm_chr1fw$relbin_UTR3[AnnotatedNorm_chr1fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr2fw$relbin_UTR3[AnnotatedNorm_chr2fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr3fw$relbin_UTR3[AnnotatedNorm_chr3fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr4fw$relbin_UTR3[AnnotatedNorm_chr4fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr5fw$relbin_UTR3[AnnotatedNorm_chr5fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr6fw$relbin_UTR3[AnnotatedNorm_chr6fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr7fw$relbin_UTR3[AnnotatedNorm_chr7fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr8fw$relbin_UTR3[AnnotatedNorm_chr8fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr9fw$relbin_UTR3[AnnotatedNorm_chr9fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr10fw$relbin_UTR3[AnnotatedNorm_chr10fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr11fw$relbin_UTR3[AnnotatedNorm_chr11fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr12fw$relbin_UTR3[AnnotatedNorm_chr12fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr13fw$relbin_UTR3[AnnotatedNorm_chr13fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr14fw$relbin_UTR3[AnnotatedNorm_chr14fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr15fw$relbin_UTR3[AnnotatedNorm_chr15fw$relbin_UTR3==30]<-29
AnnotatedNorm_chr16fw$relbin_UTR3[AnnotatedNorm_chr16fw$relbin_UTR3==30]<-29

AnnotatedNorm_chr1rev$relbin_UTR3[AnnotatedNorm_chr1rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr2rev$relbin_UTR3[AnnotatedNorm_chr2rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr3rev$relbin_UTR3[AnnotatedNorm_chr3rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr4rev$relbin_UTR3[AnnotatedNorm_chr4rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr5rev$relbin_UTR3[AnnotatedNorm_chr5rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr6rev$relbin_UTR3[AnnotatedNorm_chr6rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr7rev$relbin_UTR3[AnnotatedNorm_chr7rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr8rev$relbin_UTR3[AnnotatedNorm_chr8rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr9rev$relbin_UTR3[AnnotatedNorm_chr9rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr10rev$relbin_UTR3[AnnotatedNorm_chr10rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr11rev$relbin_UTR3[AnnotatedNorm_chr11rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr12rev$relbin_UTR3[AnnotatedNorm_chr12rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr13rev$relbin_UTR3[AnnotatedNorm_chr13rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr14rev$relbin_UTR3[AnnotatedNorm_chr14rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr15rev$relbin_UTR3[AnnotatedNorm_chr15rev$relbin_UTR3==30]<-29
AnnotatedNorm_chr16rev$relbin_UTR3[AnnotatedNorm_chr16rev$relbin_UTR3==30]<-29

setwd("C:/Users/fated/OneDrive/R")
write.table(AnnotatedNorm_chr1fw,file="chr1fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr2fw,file="chr2fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr3fw,file="chr3fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr4fw,file="chr4fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr5fw,file="chr5fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr6fw,file="chr6fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr7fw,file="chr7fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr8fw,file="chr8fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr9fw,file="chr9fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr10fw,file="chr10fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr11fw,file="chr11fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr12fw,file="chr12fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr13fw,file="chr13fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr14fw,file="chr14fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr15fw,file="chr15fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr16fw,file="chr16fw_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)

write.table(AnnotatedNorm_chr1rev,file="chr1rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr2rev,file="chr2rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr3rev,file="chr3rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr4rev,file="chr4rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr5rev,file="chr5rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr6rev,file="chr6rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr7rev,file="chr7rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr8rev,file="chr8rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr9rev,file="chr9rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr10rev,file="chr10rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr11rev,file="chr11rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr12rev,file="chr12rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr13rev,file="chr13rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr14rev,file="chr14rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr15rev,file="chr15rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)
write.table(AnnotatedNorm_chr16rev,file="chr16rev_AnnotatedNorm.txt",sep="\t",row.names = F,col.names = T, quote=T)

setwd("C:/Users/fated/OneDrive/R")
AnnotatedNorm_chr1fw<- read.delim("chr1fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr2fw<- read.delim("chr2fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr3fw<- read.delim("chr3fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr4fw<- read.delim("chr4fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr5fw<- read.delim("chr5fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr6fw<- read.delim("chr6fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr7fw<- read.delim("chr7fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr8fw<- read.delim("chr8fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr9fw<- read.delim("chr9fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr10fw<- read.delim("chr10fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr11fw<- read.delim("chr11fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr12fw<- read.delim("chr12fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr13fw<- read.delim("chr13fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr14fw<- read.delim("chr14fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr15fw<- read.delim("chr15fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr16fw<- read.delim("chr16fw_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

AnnotatedNorm_chr1rev<- read.delim("chr1rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr2rev<- read.delim("chr2rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr3rev<- read.delim("chr3rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr4rev<- read.delim("chr4rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr5rev<- read.delim("chr5rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr6rev<- read.delim("chr6rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr7rev<- read.delim("chr7rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr8rev<- read.delim("chr8rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr9rev<- read.delim("chr9rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr10rev<- read.delim("chr10rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr11rev<- read.delim("chr11rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr12rev<- read.delim("chr12rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr13rev<- read.delim("chr13rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr14rev<- read.delim("chr14rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr15rev<- read.delim("chr15rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
AnnotatedNorm_chr16rev<- read.delim("chr16rev_AnnotatedNorm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#reducing the tables to metagene format
e<-c(44,61:63)
MetageneNorm_chr1fw <- AnnotatedNorm_chr1fw[,e]
MetageneNorm_chr1fw <- AnnotatedNorm_chr1fw[,e]
MetageneNorm_chr2fw <- AnnotatedNorm_chr2fw[,e]
MetageneNorm_chr3fw <- AnnotatedNorm_chr3fw[,e]
MetageneNorm_chr4fw <- AnnotatedNorm_chr4fw[,e]
MetageneNorm_chr5fw <- AnnotatedNorm_chr5fw[,e]
MetageneNorm_chr6fw <- AnnotatedNorm_chr6fw[,e]
MetageneNorm_chr7fw <- AnnotatedNorm_chr7fw[,e]
MetageneNorm_chr8fw <- AnnotatedNorm_chr8fw[,e]
MetageneNorm_chr9fw <- AnnotatedNorm_chr9fw[,e]
MetageneNorm_chr10fw <- AnnotatedNorm_chr10fw[,e]
MetageneNorm_chr11fw <- AnnotatedNorm_chr11fw[,e]
MetageneNorm_chr12fw <- AnnotatedNorm_chr12fw[,e]
MetageneNorm_chr13fw <- AnnotatedNorm_chr13fw[,e]
MetageneNorm_chr14fw <- AnnotatedNorm_chr14fw[,e]
MetageneNorm_chr15fw <- AnnotatedNorm_chr15fw[,e]
MetageneNorm_chr16fw <- AnnotatedNorm_chr16fw[,e]

MetageneNorm_chr1rev <- AnnotatedNorm_chr1rev[,e]
MetageneNorm_chr2rev <- AnnotatedNorm_chr2rev[,e]
MetageneNorm_chr3rev <- AnnotatedNorm_chr3rev[,e]
MetageneNorm_chr4rev <- AnnotatedNorm_chr4rev[,e]
MetageneNorm_chr5rev <- AnnotatedNorm_chr5rev[,e]
MetageneNorm_chr6rev <- AnnotatedNorm_chr6rev[,e]
MetageneNorm_chr7rev <- AnnotatedNorm_chr7rev[,e]
MetageneNorm_chr8rev <- AnnotatedNorm_chr8rev[,e]
MetageneNorm_chr9rev <- AnnotatedNorm_chr9rev[,e]
MetageneNorm_chr10rev <- AnnotatedNorm_chr10rev[,e]
MetageneNorm_chr11rev <- AnnotatedNorm_chr11rev[,e]
MetageneNorm_chr12rev <- AnnotatedNorm_chr12rev[,e]
MetageneNorm_chr13rev <- AnnotatedNorm_chr13rev[,e]
MetageneNorm_chr14rev <- AnnotatedNorm_chr14rev[,e]
MetageneNorm_chr15rev <- AnnotatedNorm_chr15rev[,e]
MetageneNorm_chr16rev <- AnnotatedNorm_chr16rev[,e]

#-----------------------------------------------------------------making one file------------------
frames_MetageneNorm<- list (MetageneNorm_chr1fw, MetageneNorm_chr2fw, MetageneNorm_chr3fw, MetageneNorm_chr4fw, MetageneNorm_chr5fw, MetageneNorm_chr6fw, MetageneNorm_chr7fw, MetageneNorm_chr8fw, MetageneNorm_chr9fw,MetageneNorm_chr10fw, MetageneNorm_chr11fw, MetageneNorm_chr12fw, MetageneNorm_chr13fw, MetageneNorm_chr14fw, MetageneNorm_chr15fw, MetageneNorm_chr16fw, MetageneNorm_chr1rev, MetageneNorm_chr2rev, MetageneNorm_chr3rev, MetageneNorm_chr4rev, MetageneNorm_chr5rev, MetageneNorm_chr6rev, MetageneNorm_chr7rev, MetageneNorm_chr8rev, MetageneNorm_chr9rev,MetageneNorm_chr10rev, MetageneNorm_chr11rev, MetageneNorm_chr12rev, MetageneNorm_chr13rev, MetageneNorm_chr14rev, MetageneNorm_chr15rev, MetageneNorm_chr16rev)
Saccer3_MetageneNorm<-do.call(rbind.fill, frames_MetageneNorm)

#dealing with infinite and zero values
Saccer3_MetageneNorm[,1][is.na(Saccer3_MetageneNorm[,1])]<-0
Saccer3_MetageneNorm[,1][Saccer3_MetageneNorm[,1]==Inf]<-NA
Saccer3_MetageneNorm[,1][Saccer3_MetageneNorm[,1]==-Inf]<-NA
#---------------------------------------------------------------------------------------------------
write.table(Saccer3_MetageneNorm,file="Saccer3_MetageneNorm2filter.txt",sep="\t",row.names = F,col.names = T, quote=F)

Saccer3_MetageneNorm<- read.delim("Saccer3_MetageneNorm2filter.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
rm(Saccer3_MetageneNorm)


#calculating the binned mean+sd on the 5'UTRs
Metagene_UTR5_mean<-NULL
Metagene_ORF_mean<-NULL
Metagene_UTR3_mean<-NULL
Metagene_UTR5_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_UTR5), FUN=mean, na.rm=T)
Metagene_ORF_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_ORF), FUN=mean, na.rm=T)
Metagene_UTR3_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_UTR3), FUN=mean, na.rm=T)

View(Metagene_UTR5_mean)
View(Metagene_ORF_mean)
View(Metagene_UTR3_mean)
b


colnames(Metagene_ORF_mean) <- c("bin","Dbp2rep_iCLIP")
colnames(Metagene_UTR5_mean) <- c("bin","Dbp2rep_iCLIP")
colnames(Metagene_UTR3_mean) <- c("bin","Dbp2rep_iCLIP")
#-------------------------------------------------------------------
# Create Line Chart
# get the range for the x and y axis
xrange <- c(0.025 , 0.075 , 0.125 , 0.175 , 0.225 , 0.275 , 0.325 , 0.375 , 0.425 , 0.475 , 0.525 , 0.575 , 0.625 , 0.675 , 0.725 , 0.775 , 0.825 , 0.875 , 0.925 , 0.975)
z <- c(1.025 , 1.075 , 1.125 , 1.175 , 1.225 , 1.275 , 1.325 , 1.375 , 1.425 , 1.475 , 1.525 , 1.575 , 1.625 , 1.675 , 1.725 , 1.775 , 1.825 , 1.875 , 1.925 , 1.975)
q <- c(2.025 , 2.075 , 2.125 , 2.175 , 2.225 , 2.275 , 2.325 , 2.375 , 2.425 , 2.475 , 2.525 , 2.575 , 2.625 , 2.675 , 2.725 , 2.775 , 2.825 , 2.875 , 2.925 , 2.975)

yrange <- c(Metagene_UTR5_mean$Dbp2rep_iCLIP)

# set up the plot
plot(xrange, yrange, type="n", xlim=c(0,3), ylim=c(0,.002), xlab="feature length",
     ylab="Dbp2 filter binding density (norm)" )

# add lines
lines(xrange, Metagene_UTR5_mean$Dbp2rep_iCLIP, type="b", lwd=1.5,
      pch=19, col="blue")
lines(z, Metagene_ORF_mean$Dbp2rep_iCLIP, type="b", lwd=1.5,
      pch=19,col="black")
lines(q, Metagene_UTR3_mean$Dbp2rep_iCLIP, type="b", lwd=1.5,
      pch=19,col="green")



# add a title and subtitle
title("Metagene profile of Dbp2 binding to mRNAs")

# add a legend
# turn off clipping
legend("topleft", c("5'UTR", "ORF", "3'UTR"), lty=c(1,1), lwd=c(1,1), col=c("blue", "black", "green"), xjust=1.2, bty= "n", text.font=1, pch=19, pt.cex = 1, cex=0.6)
#-------------------------------------------------------------------