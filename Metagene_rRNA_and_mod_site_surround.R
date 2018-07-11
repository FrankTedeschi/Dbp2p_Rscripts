#Make XUT Metagene plots

#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R/Ref/rRNA")
library(plyr)


CUT_annotation_chr1<-read.delim("chr1.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr2<-read.delim("chr2.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr3<-read.delim("chr3.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr4<-read.delim("chr4.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr5<-read.delim("chr5.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr6<-read.delim("chr6.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr7<-read.delim("chr7.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr8<-read.delim("chr8.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr9<-read.delim("chr9.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr10<-read.delim("chr10.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr11<-read.delim("chr11.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr12<-read.delim("chr12.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr13<-read.delim("chr13.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr14<-read.delim("chr14.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr15<-read.delim("chr15.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
CUT_annotation_chr16<-read.delim("chr16.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

q <- c(1:4,9)
CUT_annotation_chr1 <- CUT_annotation_chr1[,q]
CUT_annotation_chr2 <- CUT_annotation_chr2[,q]
CUT_annotation_chr3 <- CUT_annotation_chr3[,q]
CUT_annotation_chr4 <- CUT_annotation_chr4[,q]
CUT_annotation_chr5 <- CUT_annotation_chr5[,q]
CUT_annotation_chr6 <- CUT_annotation_chr6[,q]
CUT_annotation_chr7 <- CUT_annotation_chr7[,q]
CUT_annotation_chr8 <- CUT_annotation_chr8[,q]
CUT_annotation_chr9 <- CUT_annotation_chr9[,q]
CUT_annotation_chr10 <- CUT_annotation_chr10[,q]
CUT_annotation_chr11 <- CUT_annotation_chr11[,q]
CUT_annotation_chr12 <- CUT_annotation_chr12[,q]
CUT_annotation_chr13 <- CUT_annotation_chr13[,q]
CUT_annotation_chr14 <- CUT_annotation_chr14[,q]
CUT_annotation_chr15 <- CUT_annotation_chr15[,q]
CUT_annotation_chr16 <- CUT_annotation_chr16[,q]

#separate by strand
chr1fcut <-CUT_annotation_chr1[which(CUT_annotation_chr1[,5] ==1),]
chr2fcut <-CUT_annotation_chr2[which(CUT_annotation_chr2[,5] ==1),]
chr3fcut <-CUT_annotation_chr3[which(CUT_annotation_chr3[,5] ==1),]
chr4fcut <-CUT_annotation_chr4[which(CUT_annotation_chr4[,5] ==1),]
chr5fcut <-CUT_annotation_chr5[which(CUT_annotation_chr5[,5] ==1),]
chr6fcut <-CUT_annotation_chr6[which(CUT_annotation_chr6[,5] ==1),]
chr7fcut <-CUT_annotation_chr7[which(CUT_annotation_chr7[,5] ==1),]
chr8fcut <-CUT_annotation_chr8[which(CUT_annotation_chr8[,5] ==1),]
chr9fcut <-CUT_annotation_chr9[which(CUT_annotation_chr9[,5] ==1),]
chr10fcut <-CUT_annotation_chr10[which(CUT_annotation_chr10[,5] ==1),]
chr11fcut <-CUT_annotation_chr11[which(CUT_annotation_chr11[,5] ==1),]
chr12fcut <-CUT_annotation_chr12[which(CUT_annotation_chr12[,5] ==1),]
chr13fcut <-CUT_annotation_chr13[which(CUT_annotation_chr13[,5] ==1),]
chr14fcut <-CUT_annotation_chr14[which(CUT_annotation_chr14[,5] ==1),]
chr15fcut <-CUT_annotation_chr15[which(CUT_annotation_chr15[,5] ==1),]
chr16fcut <-CUT_annotation_chr16[which(CUT_annotation_chr16[,5] ==1),]

chr1rcut <-CUT_annotation_chr1[which(CUT_annotation_chr1[,5] ==-1),]
chr2rcut <-CUT_annotation_chr2[which(CUT_annotation_chr2[,5] ==-1),]
chr3rcut <-CUT_annotation_chr3[which(CUT_annotation_chr3[,5] ==-1),]
chr4rcut <-CUT_annotation_chr4[which(CUT_annotation_chr4[,5] ==-1),]
chr5rcut <-CUT_annotation_chr5[which(CUT_annotation_chr5[,5] ==-1),]
chr6rcut <-CUT_annotation_chr6[which(CUT_annotation_chr6[,5] ==-1),]
chr7rcut <-CUT_annotation_chr7[which(CUT_annotation_chr7[,5] ==-1),]
chr8rcut <-CUT_annotation_chr8[which(CUT_annotation_chr8[,5] ==-1),]
chr9rcut <-CUT_annotation_chr9[which(CUT_annotation_chr9[,5] ==-1),]
chr10rcut <-CUT_annotation_chr10[which(CUT_annotation_chr10[,5] ==-1),]
chr11rcut <-CUT_annotation_chr11[which(CUT_annotation_chr11[,5] ==-1),]
chr12rcut <-CUT_annotation_chr12[which(CUT_annotation_chr12[,5] ==-1),]
chr13rcut <-CUT_annotation_chr13[which(CUT_annotation_chr13[,5] ==-1),]
chr14rcut <-CUT_annotation_chr14[which(CUT_annotation_chr14[,5] ==-1),]
chr15rcut <-CUT_annotation_chr15[which(CUT_annotation_chr15[,5] ==-1),]
chr16rcut <-CUT_annotation_chr16[which(CUT_annotation_chr16[,5] ==-1),]

colnames(chr1fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr2fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr3fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr4fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr5fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr6fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr7fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr8fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr9fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr10fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr11fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr12fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr13fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr14fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr15fcut) <- c("gene","chrom","start","stop","strand")
colnames(chr16fcut) <- c("gene","chrom","start","stop","strand")

colnames(chr1rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr2rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr3rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr4rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr5rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr6rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr7rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr8rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr9rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr10rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr11rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr12rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr13rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr14rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr15rcut) <- c("gene","chrom","start","stop","strand")
colnames(chr16rcut) <- c("gene","chrom","start","stop","strand")

chr1fcut$length <- chr1fcut$stop-chr1fcut$start+1
chr2fcut$length <- chr2fcut$stop-chr2fcut$start+1
chr3fcut$length <- chr3fcut$stop-chr3fcut$start+1
chr4fcut$length <- chr4fcut$stop-chr4fcut$start+1
chr5fcut$length <- chr5fcut$stop-chr5fcut$start+1
chr6fcut$length <- chr6fcut$stop-chr6fcut$start+1
chr7fcut$length <- chr7fcut$stop-chr7fcut$start+1
chr8fcut$length <- chr8fcut$stop-chr8fcut$start+1
chr9fcut$length <- chr9fcut$stop-chr9fcut$start+1
chr10fcut$length <- chr10fcut$stop-chr10fcut$start+1
chr11fcut$length <- chr11fcut$stop-chr11fcut$start+1
chr12fcut$length <- chr12fcut$stop-chr12fcut$start+1
chr13fcut$length <- chr13fcut$stop-chr13fcut$start+1
chr14fcut$length <- chr14fcut$stop-chr14fcut$start+1
chr15fcut$length <- chr15fcut$stop-chr15fcut$start+1
chr16fcut$length <- chr16fcut$stop-chr16fcut$start+1

chr1rcut$length <- (chr1rcut$stop-chr1rcut$start+1)*-1
chr2rcut$length <- (chr2rcut$stop-chr2rcut$start+1)*-1
chr3rcut$length <- (chr3rcut$stop-chr3rcut$start+1)*-1
chr4rcut$length <- (chr4rcut$stop-chr4rcut$start+1)*-1
chr5rcut$length <- (chr5rcut$stop-chr5rcut$start+1)*-1
chr6rcut$length <- (chr6rcut$stop-chr6rcut$start+1)*-1
chr7rcut$length <- (chr7rcut$stop-chr7rcut$start+1)*-1
chr8rcut$length <- (chr8rcut$stop-chr8rcut$start+1)*-1
chr9rcut$length <- (chr9rcut$stop-chr9rcut$start+1)*-1
chr10rcut$length <- (chr10rcut$stop-chr10rcut$start+1)*-1
chr11rcut$length <- (chr11rcut$stop-chr11rcut$start+1)*-1
chr12rcut$length <- (chr12rcut$stop-chr12rcut$start+1)*-1
chr13rcut$length <- (chr13rcut$stop-chr13rcut$start+1)*-1
chr14rcut$length <- (chr14rcut$stop-chr14rcut$start+1)*-1
chr15rcut$length <- (chr15rcut$stop-chr15rcut$start+1)*-1
chr16rcut$length <- (chr16rcut$stop-chr16rcut$start+1)*-1


setwd("C:/Users/fated/OneDrive/R")

CUT_annotation <- read.delim("allyeast_rRNA_1hit_out1_new.txt", sep="\t",header = F, quote="\"", stringsAsFactors=F)

chr1_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr1"),]
chr2_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr2"),]
chr3_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr3"),]
chr4_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr4"),]
chr5_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr5"),]
chr6_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr6"),]
chr7_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr7"),]
chr8_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr8"),]
chr9_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr9"),]
chr10_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr10"),]
chr11_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr11"),]
chr12_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr12"),]
chr13_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr13"),]
chr14_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr14"),]
chr15_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr15"),]
chr16_CUT <-CUT_annotation[which(CUT_annotation[,1] =="chr16"),]

#split by strand
chr1_CUTf <-chr1_CUT[which(chr1_CUT[,3] =="F"),]
chr2_CUTf <-chr2_CUT[which(chr2_CUT[,3] =="F"),]
chr3_CUTf <-chr3_CUT[which(chr3_CUT[,3] =="F"),]
chr4_CUTf <-chr4_CUT[which(chr4_CUT[,3] =="F"),]
chr5_CUTf <-chr5_CUT[which(chr5_CUT[,3] =="F"),]
chr6_CUTf <-chr6_CUT[which(chr6_CUT[,3] =="F"),]
chr7_CUTf <-chr7_CUT[which(chr7_CUT[,3] =="F"),]
chr8_CUTf <-chr8_CUT[which(chr8_CUT[,3] =="F"),]
chr9_CUTf <-chr9_CUT[which(chr9_CUT[,3] =="F"),]
chr10_CUTf <-chr10_CUT[which(chr10_CUT[,3] =="F"),]
chr11_CUTf <-chr11_CUT[which(chr11_CUT[,3] =="F"),]
chr12_CUTf <-chr12_CUT[which(chr12_CUT[,3] =="F"),]
chr13_CUTf <-chr13_CUT[which(chr13_CUT[,3] =="F"),]
chr14_CUTf <-chr14_CUT[which(chr14_CUT[,3] =="F"),]
chr15_CUTf <-chr15_CUT[which(chr15_CUT[,3] =="F"),]
chr16_CUTf <-chr16_CUT[which(chr16_CUT[,3] =="F"),]

chr1_CUTr <-chr1_CUT[which(chr1_CUT[,3] =="R"),]
chr2_CUTr <-chr2_CUT[which(chr2_CUT[,3] =="R"),]
chr3_CUTr <-chr3_CUT[which(chr3_CUT[,3] =="R"),]
chr4_CUTr <-chr4_CUT[which(chr4_CUT[,3] =="R"),]
chr5_CUTr <-chr5_CUT[which(chr5_CUT[,3] =="R"),]
chr6_CUTr <-chr6_CUT[which(chr6_CUT[,3] =="R"),]
chr7_CUTr <-chr7_CUT[which(chr7_CUT[,3] =="R"),]
chr8_CUTr <-chr8_CUT[which(chr8_CUT[,3] =="R"),]
chr9_CUTr <-chr9_CUT[which(chr9_CUT[,3] =="R"),]
chr10_CUTr <-chr10_CUT[which(chr10_CUT[,3] =="R"),]
chr11_CUTr <-chr11_CUT[which(chr11_CUT[,3] =="R"),]
chr12_CUTr <-chr12_CUT[which(chr12_CUT[,3] =="R"),]
chr13_CUTr <-chr13_CUT[which(chr13_CUT[,3] =="R"),]
chr14_CUTr <-chr14_CUT[which(chr14_CUT[,3] =="R"),]
chr15_CUTr <-chr15_CUT[which(chr15_CUT[,3] =="R"),]
chr16_CUTr <-chr16_CUT[which(chr16_CUT[,3] =="R"),]

colnames(chr1_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr2_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr3_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr4_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr5_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr6_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr7_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr8_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr9_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr10_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr11_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr12_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr13_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr14_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr15_CUTf) <- c("chrom","pos","strand","feature","gene")
colnames(chr16_CUTf) <- c("chrom","pos","strand","feature","gene")

colnames(chr1_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr2_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr3_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr4_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr5_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr6_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr7_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr8_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr9_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr10_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr11_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr12_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr13_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr14_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr15_CUTr) <- c("chrom","pos","strand","feature","gene")
colnames(chr16_CUTr) <- c("chrom","pos","strand","feature","gene")

#make genedata table with CUT
setwd("C:/Users/fated/OneDrive/R")
genedata_chr1rev<- read.delim("New2_Mastergenedata_chr1rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<- read.delim("New2_Mastergenedata_chr2rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<- read.delim("New2_Mastergenedata_chr3rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<- read.delim("New2_Mastergenedata_chr4rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<- read.delim("New2_Mastergenedata_chr5rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<- read.delim("New2_Mastergenedata_chr6rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<- read.delim("New2_Mastergenedata_chr7rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<- read.delim("New2_Mastergenedata_chr8rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<- read.delim("New2_Mastergenedata_chr9rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<- read.delim("New2_Mastergenedata_chr10rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<- read.delim("New2_Mastergenedata_chr11rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<- read.delim("New2_Mastergenedata_chr12rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<- read.delim("New2_Mastergenedata_chr13rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<- read.delim("New2_Mastergenedata_chr14rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<- read.delim("New2_Mastergenedata_chr15rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<- read.delim("New2_Mastergenedata_chr16rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw<- read.delim("New2_Mastergenedata_chr1fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<- read.delim("New2_Mastergenedata_chr2fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<- read.delim("New2_Mastergenedata_chr3fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<- read.delim("New2_Mastergenedata_chr4fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<- read.delim("New2_Mastergenedata_chr5fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<- read.delim("New2_Mastergenedata_chr6fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<- read.delim("New2_Mastergenedata_chr7fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<- read.delim("New2_Mastergenedata_chr8fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<- read.delim("New2_Mastergenedata_chr9fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<- read.delim("New2_Mastergenedata_chr10fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<- read.delim("New2_Mastergenedata_chr11fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<- read.delim("New2_Mastergenedata_chr12fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<- read.delim("New2_Mastergenedata_chr13fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<- read.delim("New2_Mastergenedata_chr14fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<- read.delim("New2_Mastergenedata_chr15fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<- read.delim("New2_Mastergenedata_chr16fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

e<-c(1:6,10,13,19,20)
genedata_chr1rev <-genedata_chr1rev[,e]
genedata_chr2rev <-genedata_chr2rev[,e]
genedata_chr3rev <-genedata_chr3rev[,e]
genedata_chr4rev <-genedata_chr4rev[,e]
genedata_chr5rev <-genedata_chr5rev[,e]
genedata_chr6rev <-genedata_chr6rev[,e]
genedata_chr7rev <-genedata_chr7rev[,e]
genedata_chr8rev <-genedata_chr8rev[,e]
genedata_chr9rev <-genedata_chr9rev[,e]
genedata_chr10rev <-genedata_chr10rev[,e]
genedata_chr11rev <-genedata_chr11rev[,e]
genedata_chr12rev <-genedata_chr12rev[,e]
genedata_chr13rev <-genedata_chr13rev[,e]
genedata_chr14rev <-genedata_chr14rev[,e]
genedata_chr15rev <-genedata_chr15rev[,e]
genedata_chr16rev <-genedata_chr16rev[,e]

genedata_chr1fw <-genedata_chr1fw[,e]
genedata_chr2fw <-genedata_chr2fw[,e]
genedata_chr3fw <-genedata_chr3fw[,e]
genedata_chr4fw <-genedata_chr4fw[,e]
genedata_chr5fw <-genedata_chr5fw[,e]
genedata_chr6fw <-genedata_chr6fw[,e]
genedata_chr7fw <-genedata_chr7fw[,e]
genedata_chr8fw <-genedata_chr8fw[,e]
genedata_chr9fw <-genedata_chr9fw[,e]
genedata_chr10fw <-genedata_chr10fw[,e]
genedata_chr11fw <-genedata_chr11fw[,e]
genedata_chr12fw <-genedata_chr12fw[,e]
genedata_chr13fw <-genedata_chr13fw[,e]
genedata_chr14fw <-genedata_chr14fw[,e]
genedata_chr15fw <-genedata_chr15fw[,e]
genedata_chr16fw <-genedata_chr16fw[,e]


##old genedatatable##
#genedata_chr1fw<-read.delim("genedata_chr1fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr2fw<-read.delim("genedata_chr2fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr3fw<-read.delim("genedata_chr3fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr4fw<-read.delim("genedata_chr4fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr5fw<-read.delim("genedata_chr5fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr6fw<-read.delim("genedata_chr6fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr7fw<-read.delim("genedata_chr7fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr8fw<-read.delim("genedata_chr8fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr9fw<-read.delim("genedata_chr9fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr10fw<-read.delim("genedata_chr10fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr11fw<-read.delim("genedata_chr11fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr12fw<-read.delim("genedata_chr12fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr13fw<-read.delim("genedata_chr13fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr14fw<-read.delim("genedata_chr14fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr15fw<-read.delim("genedata_chr15fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr16fw<-read.delim("genedata_chr16fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#genedata_chr1rev<-read.delim("genedata_chr1revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr2rev<-read.delim("genedata_chr2revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr3rev<-read.delim("genedata_chr3revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr4rev<-read.delim("genedata_chr4revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr5rev<-read.delim("genedata_chr5revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr6rev<-read.delim("genedata_chr6revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr7rev<-read.delim("genedata_chr7revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr8rev<-read.delim("genedata_chr8revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr9rev<-read.delim("genedata_chr9revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr10rev<-read.delim("genedata_chr10revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr11rev<-read.delim("genedata_chr11revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr12rev<-read.delim("genedata_chr12revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr13rev<-read.delim("genedata_chr13revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr14rev<-read.delim("genedata_chr14revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr15rev<-read.delim("genedata_chr15revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
#genedata_chr16rev<-read.delim("genedata_chr16revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
## old gene table end##


#combine the genedata with norm icLIP reads with genedata that includes the snRNA locations
genedata_chr1fw_CUT <- join(genedata_chr1fw,chr1_CUTf,by="pos")
genedata_chr2fw_CUT <- join(genedata_chr2fw,chr2_CUTf,by="pos")
genedata_chr3fw_CUT <- join(genedata_chr3fw,chr3_CUTf,by="pos")
genedata_chr4fw_CUT <- join(genedata_chr4fw,chr4_CUTf,by="pos")
genedata_chr5fw_CUT <- join(genedata_chr5fw,chr5_CUTf,by="pos")
genedata_chr6fw_CUT <- join(genedata_chr6fw,chr6_CUTf,by="pos")
genedata_chr7fw_CUT <- join(genedata_chr7fw,chr7_CUTf,by="pos")
genedata_chr8fw_CUT <- join(genedata_chr8fw,chr8_CUTf,by="pos")
genedata_chr9fw_CUT <- join(genedata_chr9fw,chr9_CUTf,by="pos")
genedata_chr10fw_CUT <- join(genedata_chr10fw,chr10_CUTf,by="pos")
genedata_chr11fw_CUT <- join(genedata_chr11fw,chr11_CUTf,by="pos")
genedata_chr12fw_CUT <- join(genedata_chr12fw,chr12_CUTf,by="pos")
genedata_chr13fw_CUT <- join(genedata_chr13fw,chr13_CUTf,by="pos")
genedata_chr14fw_CUT <- join(genedata_chr14fw,chr14_CUTf,by="pos")
genedata_chr15fw_CUT <- join(genedata_chr15fw,chr15_CUTf,by="pos")
genedata_chr16fw_CUT <- join(genedata_chr16fw,chr16_CUTf,by="pos")

genedata_chr1rev_CUT <- join(genedata_chr1rev,chr1_CUTr,by="pos")
genedata_chr2rev_CUT <- join(genedata_chr2rev,chr2_CUTr,by="pos")
genedata_chr3rev_CUT <- join(genedata_chr3rev,chr3_CUTr,by="pos")
genedata_chr4rev_CUT <- join(genedata_chr4rev,chr4_CUTr,by="pos")
genedata_chr5rev_CUT <- join(genedata_chr5rev,chr5_CUTr,by="pos")
genedata_chr6rev_CUT <- join(genedata_chr6rev,chr6_CUTr,by="pos")
genedata_chr7rev_CUT <- join(genedata_chr7rev,chr7_CUTr,by="pos")
genedata_chr8rev_CUT <- join(genedata_chr8rev,chr8_CUTr,by="pos")
genedata_chr9rev_CUT <- join(genedata_chr9rev,chr9_CUTr,by="pos")
genedata_chr10rev_CUT <- join(genedata_chr10rev,chr10_CUTr,by="pos")
genedata_chr11rev_CUT <- join(genedata_chr11rev,chr11_CUTr,by="pos")
genedata_chr12rev_CUT <- join(genedata_chr12rev,chr12_CUTr,by="pos")
genedata_chr13rev_CUT <- join(genedata_chr13rev,chr13_CUTr,by="pos")
genedata_chr14rev_CUT <- join(genedata_chr14rev,chr14_CUTr,by="pos")
genedata_chr15rev_CUT <- join(genedata_chr15rev,chr15_CUTr,by="pos")
genedata_chr16rev_CUT <- join(genedata_chr16rev,chr16_CUTr,by="pos")

#take only the columns I need
e<-c(1:14)
SMgenedata_chr1fw_CUT <-genedata_chr1fw_CUT[,e]
SMgenedata_chr2fw_CUT <-genedata_chr2fw_CUT[,e]
SMgenedata_chr3fw_CUT <-genedata_chr3fw_CUT[,e]
SMgenedata_chr4fw_CUT <-genedata_chr4fw_CUT[,e]
SMgenedata_chr5fw_CUT <-genedata_chr5fw_CUT[,e]
SMgenedata_chr6fw_CUT <-genedata_chr6fw_CUT[,e]
SMgenedata_chr7fw_CUT <-genedata_chr7fw_CUT[,e]
SMgenedata_chr8fw_CUT <-genedata_chr8fw_CUT[,e]
SMgenedata_chr9fw_CUT <-genedata_chr9fw_CUT[,e]
SMgenedata_chr10fw_CUT <-genedata_chr10fw_CUT[,e]
SMgenedata_chr11fw_CUT <-genedata_chr11fw_CUT[,e]
SMgenedata_chr12fw_CUT <-genedata_chr12fw_CUT[,e]
SMgenedata_chr13fw_CUT <-genedata_chr13fw_CUT[,e]
SMgenedata_chr14fw_CUT <-genedata_chr14fw_CUT[,e]
SMgenedata_chr15fw_CUT <-genedata_chr15fw_CUT[,e]
SMgenedata_chr16fw_CUT <-genedata_chr16fw_CUT[,e]

SMgenedata_chr1rev_CUT <-genedata_chr1rev_CUT[,e]
SMgenedata_chr2rev_CUT <-genedata_chr2rev_CUT[,e]
SMgenedata_chr3rev_CUT <-genedata_chr3rev_CUT[,e]
SMgenedata_chr4rev_CUT <-genedata_chr4rev_CUT[,e]
SMgenedata_chr5rev_CUT <-genedata_chr5rev_CUT[,e]
SMgenedata_chr6rev_CUT <-genedata_chr6rev_CUT[,e]
SMgenedata_chr7rev_CUT <-genedata_chr7rev_CUT[,e]
SMgenedata_chr8rev_CUT <-genedata_chr8rev_CUT[,e]
SMgenedata_chr9rev_CUT <-genedata_chr9rev_CUT[,e]
SMgenedata_chr10rev_CUT <-genedata_chr10rev_CUT[,e]
SMgenedata_chr11rev_CUT <-genedata_chr11rev_CUT[,e]
SMgenedata_chr12rev_CUT <-genedata_chr12rev_CUT[,e]
SMgenedata_chr13rev_CUT <-genedata_chr13rev_CUT[,e]
SMgenedata_chr14rev_CUT <-genedata_chr14rev_CUT[,e]
SMgenedata_chr15rev_CUT <-genedata_chr15rev_CUT[,e]
SMgenedata_chr16rev_CUT <-genedata_chr16rev_CUT[,e]

#get rid of all unassigned rows.
Annotatedgenedata_chr1fw <- Annotatedgenedata_chr1fw[ which(Annotatedgenedata_chr1fw$gene.1!="unassigned"),]
Annotatedgenedata_chr2fw <- Annotatedgenedata_chr2fw[ which(Annotatedgenedata_chr2fw$gene.1!="unassigned"),]
Annotatedgenedata_chr3fw <- Annotatedgenedata_chr3fw[ which(Annotatedgenedata_chr3fw$gene.1!="unassigned"),]
Annotatedgenedata_chr4fw <- Annotatedgenedata_chr4fw[ which(Annotatedgenedata_chr4fw$gene.1!="unassigned"),]
Annotatedgenedata_chr5fw <- Annotatedgenedata_chr5fw[ which(Annotatedgenedata_chr5fw$gene.1!="unassigned"),]
Annotatedgenedata_chr6fw <- Annotatedgenedata_chr6fw[ which(Annotatedgenedata_chr6fw$gene.1!="unassigned"),]
Annotatedgenedata_chr7fw <- Annotatedgenedata_chr7fw[ which(Annotatedgenedata_chr7fw$gene.1!="unassigned"),]
Annotatedgenedata_chr8fw <- Annotatedgenedata_chr8fw[ which(Annotatedgenedata_chr8fw$gene.1!="unassigned"),]
Annotatedgenedata_chr9fw <- Annotatedgenedata_chr9fw[ which(Annotatedgenedata_chr9fw$gene.1!="unassigned"),]
Annotatedgenedata_chr10fw <- Annotatedgenedata_chr10fw[ which(Annotatedgenedata_chr10fw$gene.1!="unassigned"),]
Annotatedgenedata_chr11fw <- Annotatedgenedata_chr11fw[ which(Annotatedgenedata_chr11fw$gene.1!="unassigned"),]
Annotatedgenedata_chr12fw <- Annotatedgenedata_chr12fw[ which(Annotatedgenedata_chr12fw$gene.1!="unassigned"),]
Annotatedgenedata_chr13fw <- Annotatedgenedata_chr13fw[ which(Annotatedgenedata_chr13fw$gene.1!="unassigned"),]
Annotatedgenedata_chr14fw <- Annotatedgenedata_chr14fw[ which(Annotatedgenedata_chr14fw$gene.1!="unassigned"),]
Annotatedgenedata_chr15fw <- Annotatedgenedata_chr15fw[ which(Annotatedgenedata_chr15fw$gene.1!="unassigned"),]
Annotatedgenedata_chr16fw <- Annotatedgenedata_chr16fw[ which(Annotatedgenedata_chr16fw$gene.1!="unassigned"),]

Annotatedgenedata_chr1rev <- Annotatedgenedata_chr1rev[ which(Annotatedgenedata_chr1rev$gene.1!="unassigned"),]
Annotatedgenedata_chr2rev <- Annotatedgenedata_chr2rev[ which(Annotatedgenedata_chr2rev$gene.1!="unassigned"),]
Annotatedgenedata_chr3rev <- Annotatedgenedata_chr3rev[ which(Annotatedgenedata_chr3rev$gene.1!="unassigned"),]
Annotatedgenedata_chr4rev <- Annotatedgenedata_chr4rev[ which(Annotatedgenedata_chr4rev$gene.1!="unassigned"),]
Annotatedgenedata_chr5rev <- Annotatedgenedata_chr5rev[ which(Annotatedgenedata_chr5rev$gene.1!="unassigned"),]
Annotatedgenedata_chr6rev <- Annotatedgenedata_chr6rev[ which(Annotatedgenedata_chr6rev$gene.1!="unassigned"),]
Annotatedgenedata_chr7rev <- Annotatedgenedata_chr7rev[ which(Annotatedgenedata_chr7rev$gene.1!="unassigned"),]
Annotatedgenedata_chr8rev <- Annotatedgenedata_chr8rev[ which(Annotatedgenedata_chr8rev$gene.1!="unassigned"),]
Annotatedgenedata_chr9rev <- Annotatedgenedata_chr9rev[ which(Annotatedgenedata_chr9rev$gene.1!="unassigned"),]
Annotatedgenedata_chr10rev <- Annotatedgenedata_chr10rev[ which(Annotatedgenedata_chr10rev$gene.1!="unassigned"),]
Annotatedgenedata_chr11rev <- Annotatedgenedata_chr11rev[ which(Annotatedgenedata_chr11rev$gene.1!="unassigned"),]
Annotatedgenedata_chr12rev <- Annotatedgenedata_chr12rev[ which(Annotatedgenedata_chr12rev$gene.1!="unassigned"),]
Annotatedgenedata_chr13rev <- Annotatedgenedata_chr13rev[ which(Annotatedgenedata_chr13rev$gene.1!="unassigned"),]
Annotatedgenedata_chr14rev <- Annotatedgenedata_chr14rev[ which(Annotatedgenedata_chr14rev$gene.1!="unassigned"),]
Annotatedgenedata_chr15rev <- Annotatedgenedata_chr15rev[ which(Annotatedgenedata_chr15rev$gene.1!="unassigned"),]
Annotatedgenedata_chr16rev <- Annotatedgenedata_chr16rev[ which(Annotatedgenedata_chr16rev$gene.1!="unassigned"),]

#join up
Annotatedgenedata_chr1fw <- join(SMgenedata_chr1fw_CUT,chr1fcut, by = "gene")
Annotatedgenedata_chr2fw <- join(SMgenedata_chr2fw_CUT,chr2fcut, by = "gene")
Annotatedgenedata_chr3fw <- join(SMgenedata_chr3fw_CUT,chr3fcut, by = "gene")
Annotatedgenedata_chr4fw <- join(SMgenedata_chr4fw_CUT,chr4fcut, by = "gene")
Annotatedgenedata_chr5fw <- join(SMgenedata_chr5fw_CUT,chr5fcut, by = "gene")
Annotatedgenedata_chr6fw <- join(SMgenedata_chr6fw_CUT,chr6fcut, by = "gene")
Annotatedgenedata_chr7fw <- join(SMgenedata_chr7fw_CUT,chr7fcut, by = "gene")
Annotatedgenedata_chr8fw <- join(SMgenedata_chr8fw_CUT,chr8fcut, by = "gene")
Annotatedgenedata_chr9fw <- join(SMgenedata_chr9fw_CUT,chr9fcut, by = "gene")
Annotatedgenedata_chr10fw <- join(SMgenedata_chr10fw_CUT,chr10fcut, by = "gene")
Annotatedgenedata_chr11fw <- join(SMgenedata_chr11fw_CUT,chr11fcut, by = "gene")
Annotatedgenedata_chr12fw <- join(SMgenedata_chr12fw_CUT,chr12fcut, by = "gene")
Annotatedgenedata_chr13fw <- join(SMgenedata_chr13fw_CUT,chr13fcut, by = "gene")
Annotatedgenedata_chr14fw <- join(SMgenedata_chr14fw_CUT,chr14fcut, by = "gene")
Annotatedgenedata_chr15fw <- join(SMgenedata_chr15fw_CUT,chr15fcut, by = "gene")
Annotatedgenedata_chr16fw <- join(SMgenedata_chr16fw_CUT,chr16fcut, by = "gene")

Annotatedgenedata_chr1rev <- join(SMgenedata_chr1rev_CUT,chr1rcut, by = "gene")
Annotatedgenedata_chr2rev <- join(SMgenedata_chr2rev_CUT,chr2rcut, by = "gene")
Annotatedgenedata_chr3rev <- join(SMgenedata_chr3rev_CUT,chr3rcut, by = "gene")
Annotatedgenedata_chr4rev <- join(SMgenedata_chr4rev_CUT,chr4rcut, by = "gene")
Annotatedgenedata_chr5rev <- join(SMgenedata_chr5rev_CUT,chr5rcut, by = "gene")
Annotatedgenedata_chr6rev <- join(SMgenedata_chr6rev_CUT,chr6rcut, by = "gene")
Annotatedgenedata_chr7rev <- join(SMgenedata_chr7rev_CUT,chr7rcut, by = "gene")
Annotatedgenedata_chr8rev <- join(SMgenedata_chr8rev_CUT,chr8rcut, by = "gene")
Annotatedgenedata_chr9rev <- join(SMgenedata_chr9rev_CUT,chr9rcut, by = "gene")
Annotatedgenedata_chr10rev <- join(SMgenedata_chr10rev_CUT,chr10rcut, by = "gene")
Annotatedgenedata_chr11rev <- join(SMgenedata_chr11rev_CUT,chr11rcut, by = "gene")
Annotatedgenedata_chr12rev <- join(SMgenedata_chr12rev_CUT,chr12rcut, by = "gene")
Annotatedgenedata_chr13rev <- join(SMgenedata_chr13rev_CUT,chr13rcut, by = "gene")
Annotatedgenedata_chr14rev <- join(SMgenedata_chr14rev_CUT,chr14rcut, by = "gene")
Annotatedgenedata_chr15rev <- join(SMgenedata_chr15rev_CUT,chr15rcut, by = "gene")
Annotatedgenedata_chr16rev <- join(SMgenedata_chr16rev_CUT,chr16rcut, by = "gene")


##Normalize rRNA##
z <- c(9,14)
sum_chr12rev<-Annotatedgenedata_chr12rev[,z]

#aggregate
sumtot_chr12rev<-aggregate(.~gene.1, data=sum_chr12rev, FUN=sum)

colnames(sumtot_chr12rev) <- c("gene.1","D2rep_CLIP_tot")
colnames(sumtot_chr12rev) <- c("gene.1","D2_CLIP_tot")


TOTAnnotatedgenedata_chr12rev <- join(TOTAnnotatedgenedata_chr12rev, sumtot_chr12rev, by = "gene.1")

TOTAnnotatedgenedata_chr12rev$D2rep_norm <- TOTAnnotatedgenedata_chr12rev$D2rep_iCLIP/TOTAnnotatedgenedata_chr12rev$D2rep_CLIP_tot
TOTAnnotatedgenedata_chr12rev$D2_norm <- TOTAnnotatedgenedata_chr12rev$D2_iCLIP /TOTAnnotatedgenedata_chr12rev$D2_CLIP_tot

TOTAnnotatedgenedata_chr12rev$D2_average<- (TOTAnnotatedgenedata_chr12rev$D2_norm + TOTAnnotatedgenedata_chr12rev$D2rep_norm) /2


##now that I have a normalized rRNA region I can use modification sites at my reference points to find binding density around the points. ##

#read in sites
setwd("C:/Users/fated/OneDrive/R")

rRNA_mod_sites <-read.delim("rRNA_mod_sites.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

colnames(rRNA_mod_sites)<- c("gene","chromosome","pos","strand")

q<- c(2,3)
rRNA_mod_sites_end<-rRNA_mod_sites[,q]

a<-c(-30:30)
b<- NULL 
b<- rRNA_mod_sites_end$pos

mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]-a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(TOTAnnotatedgenedata_chr12rev$pos, TOTAnnotatedgenedata_chr12rev$D2_average))
colnames(D2clip)=c("pos","Dbp2rep_clip")

D2BindingPeaks_chr12rev<- join(md, D2clip, by = "pos")

write.table(D2BindingPeaks_chr12rev, file = "rRNA_modsite_density_noaverage.txt", sep = "\t",row.names = F,col.names = F, quote=F)


m<-tapply(D2BindingPeaks_chr12rev$Dbp2rep_clip ,list(D2BindingPeaks_chr12rev$Distance), mean,na.rm=T)

write.table(m, file = "D2avg_rRNA_mod_site_surround.txt", sep = "\t",row.names = F,col.names = F, quote=F)

rRNA_modsites_rand<-read.delim("rRNA_mod_randsites3.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
colnames(rRNA_modsites_rand)<- c("id","Distance","pos","Dbp2rep_clip")

m<-tapply(rRNA_modsites_rand$Dbp2rep_clip ,list(rRNA_modsites_rand$Distance), mean,na.rm=T)
write.table(m, file = "rRNA_mod_randsites3_avg.txt", sep = "\t",row.names = F,col.names = F, quote=F)









#distance from start as a percent
Annotatedgenedata_chr1fw$relpos_ORF<- ifelse(Annotatedgenedata_chr1fw$pos>=Annotatedgenedata_chr1fw$start & Annotatedgenedata_chr1fw$pos<Annotatedgenedata_chr1fw$stop, (Annotatedgenedata_chr1fw$pos+1-Annotatedgenedata_chr1fw$start)/Annotatedgenedata_chr1fw$length,NA)
Annotatedgenedata_chr2fw$relpos_ORF<- ifelse(Annotatedgenedata_chr2fw$pos>=Annotatedgenedata_chr2fw$start & Annotatedgenedata_chr2fw$pos<Annotatedgenedata_chr2fw$stop, (Annotatedgenedata_chr2fw$pos+1-Annotatedgenedata_chr2fw$start)/Annotatedgenedata_chr2fw$length,NA)
Annotatedgenedata_chr3fw$relpos_ORF<- ifelse(Annotatedgenedata_chr3fw$pos>=Annotatedgenedata_chr3fw$start & Annotatedgenedata_chr3fw$pos<Annotatedgenedata_chr3fw$stop, (Annotatedgenedata_chr3fw$pos+1-Annotatedgenedata_chr3fw$start)/Annotatedgenedata_chr3fw$length,NA)
Annotatedgenedata_chr4fw$relpos_ORF<- ifelse(Annotatedgenedata_chr4fw$pos>=Annotatedgenedata_chr4fw$start & Annotatedgenedata_chr4fw$pos<Annotatedgenedata_chr4fw$stop, (Annotatedgenedata_chr4fw$pos+1-Annotatedgenedata_chr4fw$start)/Annotatedgenedata_chr4fw$length,NA)
Annotatedgenedata_chr5fw$relpos_ORF<- ifelse(Annotatedgenedata_chr5fw$pos>=Annotatedgenedata_chr5fw$start & Annotatedgenedata_chr5fw$pos<Annotatedgenedata_chr5fw$stop, (Annotatedgenedata_chr5fw$pos+1-Annotatedgenedata_chr5fw$start)/Annotatedgenedata_chr5fw$length,NA)
Annotatedgenedata_chr6fw$relpos_ORF<- ifelse(Annotatedgenedata_chr6fw$pos>=Annotatedgenedata_chr6fw$start & Annotatedgenedata_chr6fw$pos<Annotatedgenedata_chr6fw$stop, (Annotatedgenedata_chr6fw$pos+1-Annotatedgenedata_chr6fw$start)/Annotatedgenedata_chr6fw$length,NA)
Annotatedgenedata_chr7fw$relpos_ORF<- ifelse(Annotatedgenedata_chr7fw$pos>=Annotatedgenedata_chr7fw$start & Annotatedgenedata_chr7fw$pos<Annotatedgenedata_chr7fw$stop, (Annotatedgenedata_chr7fw$pos+1-Annotatedgenedata_chr7fw$start)/Annotatedgenedata_chr7fw$length,NA)
Annotatedgenedata_chr8fw$relpos_ORF<- ifelse(Annotatedgenedata_chr8fw$pos>=Annotatedgenedata_chr8fw$start & Annotatedgenedata_chr8fw$pos<Annotatedgenedata_chr8fw$stop, (Annotatedgenedata_chr8fw$pos+1-Annotatedgenedata_chr8fw$start)/Annotatedgenedata_chr8fw$length,NA)
Annotatedgenedata_chr9fw$relpos_ORF<- ifelse(Annotatedgenedata_chr9fw$pos>=Annotatedgenedata_chr9fw$start & Annotatedgenedata_chr9fw$pos<Annotatedgenedata_chr9fw$stop, (Annotatedgenedata_chr9fw$pos+1-Annotatedgenedata_chr9fw$start)/Annotatedgenedata_chr9fw$length,NA)
Annotatedgenedata_chr10fw$relpos_ORF<- ifelse(Annotatedgenedata_chr10fw$pos>=Annotatedgenedata_chr10fw$start & Annotatedgenedata_chr10fw$pos<Annotatedgenedata_chr10fw$stop, (Annotatedgenedata_chr10fw$pos+1-Annotatedgenedata_chr10fw$start)/Annotatedgenedata_chr10fw$length,NA)
Annotatedgenedata_chr11fw$relpos_ORF<- ifelse(Annotatedgenedata_chr11fw$pos>=Annotatedgenedata_chr11fw$start & Annotatedgenedata_chr11fw$pos<Annotatedgenedata_chr11fw$stop, (Annotatedgenedata_chr11fw$pos+1-Annotatedgenedata_chr11fw$start)/Annotatedgenedata_chr11fw$length,NA)
Annotatedgenedata_chr12fw$relpos_ORF<- ifelse(Annotatedgenedata_chr12fw$pos>=Annotatedgenedata_chr12fw$start & Annotatedgenedata_chr12fw$pos<Annotatedgenedata_chr12fw$stop, (Annotatedgenedata_chr12fw$pos+1-Annotatedgenedata_chr12fw$start)/Annotatedgenedata_chr12fw$length,NA)
Annotatedgenedata_chr13fw$relpos_ORF<- ifelse(Annotatedgenedata_chr13fw$pos>=Annotatedgenedata_chr13fw$start & Annotatedgenedata_chr13fw$pos<Annotatedgenedata_chr13fw$stop, (Annotatedgenedata_chr13fw$pos+1-Annotatedgenedata_chr13fw$start)/Annotatedgenedata_chr13fw$length,NA)
Annotatedgenedata_chr14fw$relpos_ORF<- ifelse(Annotatedgenedata_chr14fw$pos>=Annotatedgenedata_chr14fw$start & Annotatedgenedata_chr14fw$pos<Annotatedgenedata_chr14fw$stop, (Annotatedgenedata_chr14fw$pos+1-Annotatedgenedata_chr14fw$start)/Annotatedgenedata_chr14fw$length,NA)
Annotatedgenedata_chr15fw$relpos_ORF<- ifelse(Annotatedgenedata_chr15fw$pos>=Annotatedgenedata_chr15fw$start & Annotatedgenedata_chr15fw$pos<Annotatedgenedata_chr15fw$stop, (Annotatedgenedata_chr15fw$pos+1-Annotatedgenedata_chr15fw$start)/Annotatedgenedata_chr15fw$length,NA)
Annotatedgenedata_chr16fw$relpos_ORF<- ifelse(Annotatedgenedata_chr16fw$pos>=Annotatedgenedata_chr16fw$start & Annotatedgenedata_chr16fw$pos<Annotatedgenedata_chr16fw$stop, (Annotatedgenedata_chr16fw$pos+1-Annotatedgenedata_chr16fw$start)/Annotatedgenedata_chr16fw$length,NA)

Annotatedgenedata_chr1rev$relpos_ORF<- ifelse(Annotatedgenedata_chr1rev$pos<=Annotatedgenedata_chr1rev$start & Annotatedgenedata_chr1rev$pos>Annotatedgenedata_chr1rev$stop, (Annotatedgenedata_chr1rev$pos+1-Annotatedgenedata_chr1rev$start)/Annotatedgenedata_chr1rev$length,NA)
Annotatedgenedata_chr2rev$relpos_ORF<- ifelse(Annotatedgenedata_chr2rev$pos<=Annotatedgenedata_chr2rev$start & Annotatedgenedata_chr2rev$pos>Annotatedgenedata_chr2rev$stop, (Annotatedgenedata_chr2rev$pos+1-Annotatedgenedata_chr2rev$start)/Annotatedgenedata_chr2rev$length,NA)
Annotatedgenedata_chr3rev$relpos_ORF<- ifelse(Annotatedgenedata_chr3rev$pos<=Annotatedgenedata_chr3rev$start & Annotatedgenedata_chr3rev$pos>Annotatedgenedata_chr3rev$stop, (Annotatedgenedata_chr3rev$pos+1-Annotatedgenedata_chr3rev$start)/Annotatedgenedata_chr3rev$length,NA)
Annotatedgenedata_chr4rev$relpos_ORF<- ifelse(Annotatedgenedata_chr4rev$pos<=Annotatedgenedata_chr4rev$start & Annotatedgenedata_chr4rev$pos>Annotatedgenedata_chr4rev$stop, (Annotatedgenedata_chr4rev$pos+1-Annotatedgenedata_chr4rev$start)/Annotatedgenedata_chr4rev$length,NA)
Annotatedgenedata_chr5rev$relpos_ORF<- ifelse(Annotatedgenedata_chr5rev$pos<=Annotatedgenedata_chr5rev$start & Annotatedgenedata_chr5rev$pos>Annotatedgenedata_chr5rev$stop, (Annotatedgenedata_chr5rev$pos+1-Annotatedgenedata_chr5rev$start)/Annotatedgenedata_chr5rev$length,NA)
Annotatedgenedata_chr6rev$relpos_ORF<- ifelse(Annotatedgenedata_chr6rev$pos<=Annotatedgenedata_chr6rev$start & Annotatedgenedata_chr6rev$pos>Annotatedgenedata_chr6rev$stop, (Annotatedgenedata_chr6rev$pos+1-Annotatedgenedata_chr6rev$start)/Annotatedgenedata_chr6rev$length,NA)
Annotatedgenedata_chr7rev$relpos_ORF<- ifelse(Annotatedgenedata_chr7rev$pos<=Annotatedgenedata_chr7rev$start & Annotatedgenedata_chr7rev$pos>Annotatedgenedata_chr7rev$stop, (Annotatedgenedata_chr7rev$pos+1-Annotatedgenedata_chr7rev$start)/Annotatedgenedata_chr7rev$length,NA)
Annotatedgenedata_chr8rev$relpos_ORF<- ifelse(Annotatedgenedata_chr8rev$pos<=Annotatedgenedata_chr8rev$start & Annotatedgenedata_chr8rev$pos>Annotatedgenedata_chr8rev$stop, (Annotatedgenedata_chr8rev$pos+1-Annotatedgenedata_chr8rev$start)/Annotatedgenedata_chr8rev$length,NA)
Annotatedgenedata_chr9rev$relpos_ORF<- ifelse(Annotatedgenedata_chr9rev$pos<=Annotatedgenedata_chr9rev$start & Annotatedgenedata_chr9rev$pos>Annotatedgenedata_chr9rev$stop, (Annotatedgenedata_chr9rev$pos+1-Annotatedgenedata_chr9rev$start)/Annotatedgenedata_chr9rev$length,NA)
Annotatedgenedata_chr10rev$relpos_ORF<- ifelse(Annotatedgenedata_chr10rev$pos<=Annotatedgenedata_chr10rev$start & Annotatedgenedata_chr10rev$pos>Annotatedgenedata_chr10rev$stop, (Annotatedgenedata_chr10rev$pos+1-Annotatedgenedata_chr10rev$start)/Annotatedgenedata_chr10rev$length,NA)
Annotatedgenedata_chr11rev$relpos_ORF<- ifelse(Annotatedgenedata_chr11rev$pos<=Annotatedgenedata_chr11rev$start & Annotatedgenedata_chr11rev$pos>Annotatedgenedata_chr11rev$stop, (Annotatedgenedata_chr11rev$pos+1-Annotatedgenedata_chr11rev$start)/Annotatedgenedata_chr11rev$length,NA)
Annotatedgenedata_chr12rev$relpos_ORF<- ifelse(Annotatedgenedata_chr12rev$pos<=Annotatedgenedata_chr12rev$start & Annotatedgenedata_chr12rev$pos>Annotatedgenedata_chr12rev$stop, (Annotatedgenedata_chr12rev$pos+1-Annotatedgenedata_chr12rev$start)/Annotatedgenedata_chr12rev$length,NA)
Annotatedgenedata_chr13rev$relpos_ORF<- ifelse(Annotatedgenedata_chr13rev$pos<=Annotatedgenedata_chr13rev$start & Annotatedgenedata_chr13rev$pos>Annotatedgenedata_chr13rev$stop, (Annotatedgenedata_chr13rev$pos+1-Annotatedgenedata_chr13rev$start)/Annotatedgenedata_chr13rev$length,NA)
Annotatedgenedata_chr14rev$relpos_ORF<- ifelse(Annotatedgenedata_chr14rev$pos<=Annotatedgenedata_chr14rev$start & Annotatedgenedata_chr14rev$pos>Annotatedgenedata_chr14rev$stop, (Annotatedgenedata_chr14rev$pos+1-Annotatedgenedata_chr14rev$start)/Annotatedgenedata_chr14rev$length,NA)
Annotatedgenedata_chr15rev$relpos_ORF<- ifelse(Annotatedgenedata_chr15rev$pos<=Annotatedgenedata_chr15rev$start & Annotatedgenedata_chr15rev$pos>Annotatedgenedata_chr15rev$stop, (Annotatedgenedata_chr15rev$pos+1-Annotatedgenedata_chr15rev$start)/Annotatedgenedata_chr15rev$length,NA)
Annotatedgenedata_chr16rev$relpos_ORF<- ifelse(Annotatedgenedata_chr16rev$pos<=Annotatedgenedata_chr16rev$start & Annotatedgenedata_chr16rev$pos>Annotatedgenedata_chr16rev$stop, (Annotatedgenedata_chr16rev$pos+1-Annotatedgenedata_chr16rev$start)/Annotatedgenedata_chr16rev$length,NA)

#binning the ORF
Annotatedgenedata_chr1fw$relbin_ORF <- findInterval(Annotatedgenedata_chr1fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr2fw$relbin_ORF <- findInterval(Annotatedgenedata_chr2fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr3fw$relbin_ORF <- findInterval(Annotatedgenedata_chr3fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr4fw$relbin_ORF <- findInterval(Annotatedgenedata_chr4fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr5fw$relbin_ORF <- findInterval(Annotatedgenedata_chr5fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr6fw$relbin_ORF <- findInterval(Annotatedgenedata_chr6fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr7fw$relbin_ORF <- findInterval(Annotatedgenedata_chr7fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr8fw$relbin_ORF <- findInterval(Annotatedgenedata_chr8fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr9fw$relbin_ORF <- findInterval(Annotatedgenedata_chr9fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr10fw$relbin_ORF <- findInterval(Annotatedgenedata_chr10fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr11fw$relbin_ORF <- findInterval(Annotatedgenedata_chr11fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr12fw$relbin_ORF <- findInterval(Annotatedgenedata_chr12fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr13fw$relbin_ORF <- findInterval(Annotatedgenedata_chr13fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr14fw$relbin_ORF <- findInterval(Annotatedgenedata_chr14fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr15fw$relbin_ORF <- findInterval(Annotatedgenedata_chr15fw$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr16fw$relbin_ORF <- findInterval(Annotatedgenedata_chr16fw$relpos_ORF, seq(0.05, 1, by=0.05))

Annotatedgenedata_chr1rev$relbin_ORF <- findInterval(Annotatedgenedata_chr1rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr2rev$relbin_ORF <- findInterval(Annotatedgenedata_chr2rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr3rev$relbin_ORF <- findInterval(Annotatedgenedata_chr3rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr4rev$relbin_ORF <- findInterval(Annotatedgenedata_chr4rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr5rev$relbin_ORF <- findInterval(Annotatedgenedata_chr5rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr6rev$relbin_ORF <- findInterval(Annotatedgenedata_chr6rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr7rev$relbin_ORF <- findInterval(Annotatedgenedata_chr7rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr8rev$relbin_ORF <- findInterval(Annotatedgenedata_chr8rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr9rev$relbin_ORF <- findInterval(Annotatedgenedata_chr9rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr10rev$relbin_ORF <- findInterval(Annotatedgenedata_chr10rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr11rev$relbin_ORF <- findInterval(Annotatedgenedata_chr11rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr12rev$relbin_ORF <- findInterval(Annotatedgenedata_chr12rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr13rev$relbin_ORF <- findInterval(Annotatedgenedata_chr13rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr14rev$relbin_ORF <- findInterval(Annotatedgenedata_chr14rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr15rev$relbin_ORF <- findInterval(Annotatedgenedata_chr15rev$relpos_ORF, seq(0.05, 1, by=0.05))
Annotatedgenedata_chr16rev$relbin_ORF <- findInterval(Annotatedgenedata_chr16rev$relpos_ORF, seq(0.05, 1, by=0.05))

#adding the end positions to bin 19
Annotatedgenedata_chr1fw$relbin_ORF[Annotatedgenedata_chr1fw$relbin_ORF==20]<-19
Annotatedgenedata_chr2fw$relbin_ORF[Annotatedgenedata_chr2fw$relbin_ORF==20]<-19
Annotatedgenedata_chr3fw$relbin_ORF[Annotatedgenedata_chr3fw$relbin_ORF==20]<-19
Annotatedgenedata_chr4fw$relbin_ORF[Annotatedgenedata_chr4fw$relbin_ORF==20]<-19
Annotatedgenedata_chr5fw$relbin_ORF[Annotatedgenedata_chr5fw$relbin_ORF==20]<-19
Annotatedgenedata_chr6fw$relbin_ORF[Annotatedgenedata_chr6fw$relbin_ORF==20]<-19
Annotatedgenedata_chr7fw$relbin_ORF[Annotatedgenedata_chr7fw$relbin_ORF==20]<-19
Annotatedgenedata_chr8fw$relbin_ORF[Annotatedgenedata_chr8fw$relbin_ORF==20]<-19
Annotatedgenedata_chr9fw$relbin_ORF[Annotatedgenedata_chr9fw$relbin_ORF==20]<-19
Annotatedgenedata_chr10fw$relbin_ORF[Annotatedgenedata_chr10fw$relbin_ORF==20]<-19
Annotatedgenedata_chr11fw$relbin_ORF[Annotatedgenedata_chr11fw$relbin_ORF==20]<-19
Annotatedgenedata_chr12fw$relbin_ORF[Annotatedgenedata_chr12fw$relbin_ORF==20]<-19
Annotatedgenedata_chr13fw$relbin_ORF[Annotatedgenedata_chr13fw$relbin_ORF==20]<-19
Annotatedgenedata_chr14fw$relbin_ORF[Annotatedgenedata_chr14fw$relbin_ORF==20]<-19
Annotatedgenedata_chr15fw$relbin_ORF[Annotatedgenedata_chr15fw$relbin_ORF==20]<-19
Annotatedgenedata_chr16fw$relbin_ORF[Annotatedgenedata_chr16fw$relbin_ORF==20]<-19

Annotatedgenedata_chr1rev$relbin_ORF[Annotatedgenedata_chr1rev$relbin_ORF==20]<-19
Annotatedgenedata_chr2rev$relbin_ORF[Annotatedgenedata_chr2rev$relbin_ORF==20]<-19
Annotatedgenedata_chr3rev$relbin_ORF[Annotatedgenedata_chr3rev$relbin_ORF==20]<-19
Annotatedgenedata_chr4rev$relbin_ORF[Annotatedgenedata_chr4rev$relbin_ORF==20]<-19
Annotatedgenedata_chr5rev$relbin_ORF[Annotatedgenedata_chr5rev$relbin_ORF==20]<-19
Annotatedgenedata_chr6rev$relbin_ORF[Annotatedgenedata_chr6rev$relbin_ORF==20]<-19
Annotatedgenedata_chr7rev$relbin_ORF[Annotatedgenedata_chr7rev$relbin_ORF==20]<-19
Annotatedgenedata_chr8rev$relbin_ORF[Annotatedgenedata_chr8rev$relbin_ORF==20]<-19
Annotatedgenedata_chr9rev$relbin_ORF[Annotatedgenedata_chr9rev$relbin_ORF==20]<-19
Annotatedgenedata_chr10rev$relbin_ORF[Annotatedgenedata_chr10rev$relbin_ORF==20]<-19
Annotatedgenedata_chr11rev$relbin_ORF[Annotatedgenedata_chr11rev$relbin_ORF==20]<-19
Annotatedgenedata_chr12rev$relbin_ORF[Annotatedgenedata_chr12rev$relbin_ORF==20]<-19
Annotatedgenedata_chr13rev$relbin_ORF[Annotatedgenedata_chr13rev$relbin_ORF==20]<-19
Annotatedgenedata_chr14rev$relbin_ORF[Annotatedgenedata_chr14rev$relbin_ORF==20]<-19
Annotatedgenedata_chr15rev$relbin_ORF[Annotatedgenedata_chr15rev$relbin_ORF==20]<-19
Annotatedgenedata_chr16rev$relbin_ORF[Annotatedgenedata_chr16rev$relbin_ORF==20]<-19

l<- c(6,13)
MetageneNorm_chr1fw <- Annotatedgenedata_chr1fw[,l]
MetageneNorm_chr2fw <- Annotatedgenedata_chr2fw[,l]
MetageneNorm_chr3fw <- Annotatedgenedata_chr3fw[,l]
MetageneNorm_chr4fw <- Annotatedgenedata_chr4fw[,l]
MetageneNorm_chr5fw <- Annotatedgenedata_chr5fw[,l]
MetageneNorm_chr6fw <- Annotatedgenedata_chr6fw[,l]
MetageneNorm_chr7fw <- Annotatedgenedata_chr7fw[,l]
MetageneNorm_chr8fw <- Annotatedgenedata_chr8fw[,l]
MetageneNorm_chr9fw <- Annotatedgenedata_chr9fw[,l]
MetageneNorm_chr10fw <- Annotatedgenedata_chr10fw[,l]
MetageneNorm_chr11fw <- Annotatedgenedata_chr11fw[,l]
MetageneNorm_chr12fw <- Annotatedgenedata_chr12fw[,l]
MetageneNorm_chr13fw <- Annotatedgenedata_chr13fw[,l]
MetageneNorm_chr14fw <- Annotatedgenedata_chr14fw[,l]
MetageneNorm_chr15fw <- Annotatedgenedata_chr15fw[,l]
MetageneNorm_chr16fw <- Annotatedgenedata_chr16fw[,l]

MetageneNorm_chr1rev <- Annotatedgenedata_chr1rev[,l]
MetageneNorm_chr2rev <- Annotatedgenedata_chr2rev[,l]
MetageneNorm_chr3rev <- Annotatedgenedata_chr3rev[,l]
MetageneNorm_chr4rev <- Annotatedgenedata_chr4rev[,l]
MetageneNorm_chr5rev <- Annotatedgenedata_chr5rev[,l]
MetageneNorm_chr6rev <- Annotatedgenedata_chr6rev[,l]
MetageneNorm_chr7rev <- Annotatedgenedata_chr7rev[,l]
MetageneNorm_chr8rev <- Annotatedgenedata_chr8rev[,l]
MetageneNorm_chr9rev <- Annotatedgenedata_chr9rev[,l]
MetageneNorm_chr10rev <- Annotatedgenedata_chr10rev[,l]
MetageneNorm_chr11rev <- Annotatedgenedata_chr11rev[,l]
MetageneNorm_chr12rev <- Annotatedgenedata_chr12rev[,l]
MetageneNorm_chr13rev <- Annotatedgenedata_chr13rev[,l]
MetageneNorm_chr14rev <- Annotatedgenedata_chr14rev[,l]
MetageneNorm_chr15rev <- Annotatedgenedata_chr15rev[,l]
MetageneNorm_chr16rev <- Annotatedgenedata_chr16rev[,l]

#-----------------------------------------------------------------making one file------------------
frames_MetageneNorm<- list (MetageneNorm_chr1fw, MetageneNorm_chr2fw, MetageneNorm_chr3fw, MetageneNorm_chr4fw, MetageneNorm_chr5fw, MetageneNorm_chr6fw, MetageneNorm_chr7fw, MetageneNorm_chr8fw, MetageneNorm_chr9fw,MetageneNorm_chr10fw, MetageneNorm_chr11fw, MetageneNorm_chr12fw, MetageneNorm_chr13fw, MetageneNorm_chr14fw, MetageneNorm_chr15fw, MetageneNorm_chr16fw, MetageneNorm_chr1rev, MetageneNorm_chr2rev, MetageneNorm_chr3rev, MetageneNorm_chr4rev, MetageneNorm_chr5rev, MetageneNorm_chr6rev, MetageneNorm_chr7rev, MetageneNorm_chr8rev, MetageneNorm_chr9rev,MetageneNorm_chr10rev, MetageneNorm_chr11rev, MetageneNorm_chr12rev, MetageneNorm_chr13rev, MetageneNorm_chr14rev, MetageneNorm_chr15rev, MetageneNorm_chr16rev)
Saccer3_MetageneNorm<-do.call(rbind.fill, frames_MetageneNorm)

#dealing with infinite and zero values
Saccer3_MetageneNorm[,1][is.na(Saccer3_MetageneNorm[,1])]<-0
Saccer3_MetageneNorm[,1][Saccer3_MetageneNorm[,1]==Inf]<-NA
Saccer3_MetageneNorm[,1][Saccer3_MetageneNorm[,1]==-Inf]<-NA
#---------------------------------------------------------------------------------------------------
write.table(Saccer3_MetageneNorm,file="Saccer3_MetageneNorm_rRNA.txt",sep="\t",row.names = F,col.names = T, quote=F)

Saccer3_MetageneNorm<- read.delim("Saccer3_MetageneNorm_rRNA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#calculating the binned mean+sd on the ORF(tRNA)
Metagene_ORF_mean<-NULL

Metagene_ORF_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_ORF), FUN=mean, na.rm=T)
colnames(Metagene_ORF_mean) <- c("bin","Dbp2_iCLIPnorm")

xrange <- c(0.025 , 0.075 , 0.125 , 0.175 , 0.225 , 0.275 , 0.325 , 0.375 , 0.425 , 0.475 , 0.525 , 0.575 , 0.625 , 0.675 , 0.725 , 0.775 , 0.825 , 0.875 , 0.925 , 0.975)
z <- c(1.025 , 1.075 , 1.125 , 1.175 , 1.225 , 1.275 , 1.325 , 1.375 , 1.425 , 1.475 , 1.525 , 1.575 , 1.625 , 1.675 , 1.725 , 1.775 , 1.825 , 1.875 , 1.925 , 1.975)
q <- c(2.025 , 2.075 , 2.125 , 2.175 , 2.225 , 2.275 , 2.325 , 2.375 , 2.425 , 2.475 , 2.525 , 2.575 , 2.625 , 2.675 , 2.725 , 2.775 , 2.825 , 2.875 , 2.925 , 2.975)

yrange <- c(Metagene_ORF_mean$Dbp2_iCLIP)

# set up the plot
plot(xrange, yrange, type="n", xlim=c(0,1), ylim=c(0,.0005), xlab="feature length",
     ylab="Dbp2 binding density (norm)" )

# add lines

lines(xrange, Metagene_ORF_mean$Dbp2_iCLIP, type="b", lwd=1.5,
      pch=19,col="black")
lines(xrange, Metagene_ORF_meanCD$Dbp2_iCLIP, type="b", lwd=1.5,
      pch=19,col="green")

# add a title and subtitle
title("Metagene profile of Dbp2 binding to mRNAs")

legend("topleft", c("C/D Box", "H/ACA Box"), lty=c(1,1), lwd=c(1,1), col=c("green", "black"), xjust=1.2, bty= "n", text.font=1, pch=19, pt.cex = 1, cex=0.6)
