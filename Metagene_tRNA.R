#Make tRNA Metagene plots

#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R")
library(plyr)
#tRNA annotation like bed format
tRNA_annotation<-read.delim("non_Spliced_tRNA_annotation_good.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

colnames(tRNA_annotation) <- c("gene","chr", "start", "stop","strand")

#split by chromosome number

tRNA_annotation$chr <- as.character(tRNA_annotation$chr)

chr1t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr1"),]
chr2t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr2"),]
chr3t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr3"),]
chr4t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr4"),]
chr5t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr5"),]
chr6t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr6"),]
chr7t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr7"),]
chr8t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr8"),]
chr9t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr9"),]
chr10t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr10"),]
chr11t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr11"),]
chr12t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr12"),]
chr13t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr13"),]
chr14t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr14"),]
chr15t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr15"),]
chr16t <-tRNA_annotation[which(tRNA_annotation[,2] =="chr16"),]

#separate by strand
chr1fwt <-chr1t[which(chr1t[,5] ==1),]
chr2fwt <-chr2t[which(chr2t[,5] ==1),]
chr3fwt <-chr3t[which(chr3t[,5] ==1),]
chr4fwt <-chr4t[which(chr4t[,5] ==1),]
chr5fwt <-chr5t[which(chr5t[,5] ==1),]
chr6fwt <-chr6t[which(chr6t[,5] ==1),]
chr7fwt <-chr7t[which(chr7t[,5] ==1),]
chr8fwt <-chr8t[which(chr8t[,5] ==1),]
chr9fwt <-chr9t[which(chr9t[,5] ==1),]
chr10fwt <-chr10t[which(chr10t[,5] ==1),]
chr11fwt <-chr11t[which(chr11t[,5] ==1),]
chr12fwt <-chr12t[which(chr12t[,5] ==1),]
chr13fwt <-chr13t[which(chr13t[,5] ==1),]
chr14fwt <-chr14t[which(chr14t[,5] ==1),]
chr15fwt <-chr15t[which(chr15t[,5] ==1),]
chr16fwt <-chr16t[which(chr16t[,5] ==1),]

chr1revt <-chr1t[which(chr1t[,5] ==-1),]
chr2revt <-chr2t[which(chr2t[,5] ==-1),]
chr3revt <-chr3t[which(chr3t[,5] ==-1),]
chr4revt <-chr4t[which(chr4t[,5] ==-1),]
chr5revt <-chr5t[which(chr5t[,5] ==-1),]
chr6revt <-chr6t[which(chr6t[,5] ==-1),]
chr7revt <-chr7t[which(chr7t[,5] ==-1),]
chr8revt <-chr8t[which(chr8t[,5] ==-1),]
chr9revt <-chr9t[which(chr9t[,5] ==-1),]
chr10revt <-chr10t[which(chr10t[,5] ==-1),]
chr11revt <-chr11t[which(chr11t[,5] ==-1),]
chr12revt <-chr12t[which(chr12t[,5] ==-1),]
chr13revt <-chr13t[which(chr13t[,5] ==-1),]
chr14revt <-chr14t[which(chr14t[,5] ==-1),]
chr15revt <-chr15t[which(chr15t[,5] ==-1),]
chr16revt <-chr16t[which(chr16t[,5] ==-1),]

#find tRNA length
chr1fwt$length <- chr1fwt$stop-chr1fwt$start+1
chr2fwt$length <- chr2fwt$stop-chr2fwt$start+1
chr3fwt$length <- chr3fwt$stop-chr3fwt$start+1
chr4fwt$length <- chr4fwt$stop-chr4fwt$start+1
chr5fwt$length <- chr5fwt$stop-chr5fwt$start+1
chr6fwt$length <- chr6fwt$stop-chr6fwt$start+1
chr7fwt$length <- chr7fwt$stop-chr7fwt$start+1
chr8fwt$length <- chr8fwt$stop-chr8fwt$start+1
chr9fwt$length <- chr9fwt$stop-chr9fwt$start+1
chr10fwt$length <- chr10fwt$stop-chr10fwt$start+1
chr11fwt$length <- chr11fwt$stop-chr11fwt$start+1
chr12fwt$length <- chr12fwt$stop-chr12fwt$start+1
chr13fwt$length <- chr13fwt$stop-chr13fwt$start+1
chr14fwt$length <- chr14fwt$stop-chr14fwt$start+1
chr15fwt$length <- chr15fwt$stop-chr15fwt$start+1
chr16fwt$length <- chr16fwt$stop-chr16fwt$start+1

chr1revt$length <- chr1revt$stop-chr1revt$start+1
chr2revt$length <- chr2revt$stop-chr2revt$start+1
chr3revt$length <- chr3revt$stop-chr3revt$start+1
chr4revt$length <- chr4revt$stop-chr4revt$start+1
chr5revt$length <- chr5revt$stop-chr5revt$start+1
chr6revt$length <- chr6revt$stop-chr6revt$start+1
chr7revt$length <- chr7revt$stop-chr7revt$start+1
chr8revt$length <- chr8revt$stop-chr8revt$start+1
chr9revt$length <- chr9revt$stop-chr9revt$start+1
chr10revt$length <- chr10revt$stop-chr10revt$start+1
chr11revt$length <- chr11revt$stop-chr11revt$start+1
chr12revt$length <- chr12revt$stop-chr12revt$start+1
chr13revt$length <- chr13revt$stop-chr13revt$start+1
chr14revt$length <- chr14revt$stop-chr14revt$start+1
chr15revt$length <- chr15revt$stop-chr15revt$start+1
chr16revt$length <- chr16revt$stop-chr16revt$start+1





#tRNA 1 hit annotation
tRNA_annotation <- read.delim("allyeast_tRNA_1hit_out1.txt", sep="\t",header = F, quote="\"", stringsAsFactors=F)

chr1_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr1"),]
chr2_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr2"),]
chr3_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr3"),]
chr4_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr4"),]
chr5_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr5"),]
chr6_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr6"),]
chr7_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr7"),]
chr8_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr8"),]
chr9_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr9"),]
chr10_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr10"),]
chr11_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr11"),]
chr12_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr12"),]
chr13_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr13"),]
chr14_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr14"),]
chr15_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr15"),]
chr16_tRNA <-tRNA_annotation[which(tRNA_annotation[,1] =="chr16"),]


#split by strand
chr1_tRNAf <-chr1_tRNA[which(chr1_tRNA[,3] =="F"),]
chr2_tRNAf <-chr2_tRNA[which(chr2_tRNA[,3] =="F"),]
chr3_tRNAf <-chr3_tRNA[which(chr3_tRNA[,3] =="F"),]
chr4_tRNAf <-chr4_tRNA[which(chr4_tRNA[,3] =="F"),]
chr5_tRNAf <-chr5_tRNA[which(chr5_tRNA[,3] =="F"),]
chr6_tRNAf <-chr6_tRNA[which(chr6_tRNA[,3] =="F"),]
chr7_tRNAf <-chr7_tRNA[which(chr7_tRNA[,3] =="F"),]
chr8_tRNAf <-chr8_tRNA[which(chr8_tRNA[,3] =="F"),]
chr9_tRNAf <-chr9_tRNA[which(chr9_tRNA[,3] =="F"),]
chr10_tRNAf <-chr10_tRNA[which(chr10_tRNA[,3] =="F"),]
chr11_tRNAf <-chr11_tRNA[which(chr11_tRNA[,3] =="F"),]
chr12_tRNAf <-chr12_tRNA[which(chr12_tRNA[,3] =="F"),]
chr13_tRNAf <-chr13_tRNA[which(chr13_tRNA[,3] =="F"),]
chr14_tRNAf <-chr14_tRNA[which(chr14_tRNA[,3] =="F"),]
chr15_tRNAf <-chr15_tRNA[which(chr15_tRNA[,3] =="F"),]
chr16_tRNAf <-chr16_tRNA[which(chr16_tRNA[,3] =="F"),]

chr1_tRNAr <-chr1_tRNA[which(chr1_tRNA[,3] =="R"),]
chr2_tRNAr <-chr2_tRNA[which(chr2_tRNA[,3] =="R"),]
chr3_tRNAr <-chr3_tRNA[which(chr3_tRNA[,3] =="R"),]
chr4_tRNAr <-chr4_tRNA[which(chr4_tRNA[,3] =="R"),]
chr5_tRNAr <-chr5_tRNA[which(chr5_tRNA[,3] =="R"),]
chr6_tRNAr <-chr6_tRNA[which(chr6_tRNA[,3] =="R"),]
chr7_tRNAr <-chr7_tRNA[which(chr7_tRNA[,3] =="R"),]
chr8_tRNAr <-chr8_tRNA[which(chr8_tRNA[,3] =="R"),]
chr9_tRNAr <-chr9_tRNA[which(chr9_tRNA[,3] =="R"),]
chr10_tRNAr <-chr10_tRNA[which(chr10_tRNA[,3] =="R"),]
chr11_tRNAr <-chr11_tRNA[which(chr11_tRNA[,3] =="R"),]
chr12_tRNAr <-chr12_tRNA[which(chr12_tRNA[,3] =="R"),]
chr13_tRNAr <-chr13_tRNA[which(chr13_tRNA[,3] =="R"),]
chr14_tRNAr <-chr14_tRNA[which(chr14_tRNA[,3] =="R"),]
chr15_tRNAr <-chr15_tRNA[which(chr15_tRNA[,3] =="R"),]
chr16_tRNAr <-chr16_tRNA[which(chr16_tRNA[,3] =="R"),]

colnames(chr1_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr2_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr3_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr4_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr5_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr6_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr7_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr8_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr9_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr10_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr11_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr12_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr13_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr14_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr15_tRNAf) <- c("chr","pos","strand","feature","gene")
colnames(chr16_tRNAf) <- c("chr","pos","strand","feature","gene")

colnames(chr1_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr2_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr3_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr4_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr5_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr6_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr7_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr8_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr9_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr10_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr11_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr12_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr13_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr14_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr15_tRNAr) <- c("chr","pos","strand","feature","gene")
colnames(chr16_tRNAr) <- c("chr","pos","strand","feature","gene")

#make genedata table with tRNA
setwd("C:/Users/fated/OneDrive/R")

genedata_chr1fw<-read.delim("genedata_chr1fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("genedata_chr2fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("genedata_chr3fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("genedata_chr4fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("genedata_chr5fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("genedata_chr6fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("genedata_chr7fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("genedata_chr8fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("genedata_chr9fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("genedata_chr10fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("genedata_chr11fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("genedata_chr12fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("genedata_chr13fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("genedata_chr14fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("genedata_chr15fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("genedata_chr16fwDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1rev<-read.delim("genedata_chr1revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("genedata_chr2revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("genedata_chr3revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("genedata_chr4revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("genedata_chr5revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("genedata_chr6revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("genedata_chr7revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("genedata_chr8revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("genedata_chr9revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("genedata_chr10revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("genedata_chr11revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("genedata_chr12revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("genedata_chr13revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("genedata_chr14revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("genedata_chr15revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("genedata_chr16revDbp2_NormUN.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#combine the genedata with norm icLIP reads with genedata that includes the snRNA locations
genedata_chr1fw_tRNA <- join(genedata_chr1fw_Yra1,chr1_tRNAf,by="pos")
genedata_chr2fw_tRNA <- join(genedata_chr2fw_Yra1,chr2_tRNAf,by="pos")
genedata_chr3fw_tRNA <- join(genedata_chr3fw_Yra1,chr3_tRNAf,by="pos")
genedata_chr4fw_tRNA <- join(genedata_chr4fw_Yra1,chr4_tRNAf,by="pos")
genedata_chr5fw_tRNA <- join(genedata_chr5fw_Yra1,chr5_tRNAf,by="pos")
genedata_chr6fw_tRNA <- join(genedata_chr6fw_Yra1,chr6_tRNAf,by="pos")
genedata_chr7fw_tRNA <- join(genedata_chr7fw_Yra1,chr7_tRNAf,by="pos")
genedata_chr8fw_tRNA <- join(genedata_chr8fw_Yra1,chr8_tRNAf,by="pos")
genedata_chr9fw_tRNA <- join(genedata_chr9fw_Yra1,chr9_tRNAf,by="pos")
genedata_chr10fw_tRNA <- join(genedata_chr10fw_Yra1,chr10_tRNAf,by="pos")
genedata_chr11fw_tRNA <- join(genedata_chr11fw_Yra1,chr11_tRNAf,by="pos")
genedata_chr12fw_tRNA <- join(genedata_chr12fw_Yra1,chr12_tRNAf,by="pos")
genedata_chr13fw_tRNA <- join(genedata_chr13fw_Yra1,chr13_tRNAf,by="pos")
genedata_chr14fw_tRNA <- join(genedata_chr14fw_Yra1,chr14_tRNAf,by="pos")
genedata_chr15fw_tRNA <- join(genedata_chr15fw_Yra1,chr15_tRNAf,by="pos")
genedata_chr16fw_tRNA <- join(genedata_chr16fw_Yra1,chr16_tRNAf,by="pos")

genedata_chr1rev_tRNA <- join(genedata_chr1rev_Yra1,chr1_tRNAr,by="pos")
genedata_chr2rev_tRNA <- join(genedata_chr2rev_Yra1,chr2_tRNAr,by="pos")
genedata_chr3rev_tRNA <- join(genedata_chr3rev_Yra1,chr3_tRNAr,by="pos")
genedata_chr4rev_tRNA <- join(genedata_chr4rev_Yra1,chr4_tRNAr,by="pos")
genedata_chr5rev_tRNA <- join(genedata_chr5rev_Yra1,chr5_tRNAr,by="pos")
genedata_chr6rev_tRNA <- join(genedata_chr6rev_Yra1,chr6_tRNAr,by="pos")
genedata_chr7rev_tRNA <- join(genedata_chr7rev_Yra1,chr7_tRNAr,by="pos")
genedata_chr8rev_tRNA <- join(genedata_chr8rev_Yra1,chr8_tRNAr,by="pos")
genedata_chr9rev_tRNA <- join(genedata_chr9rev_Yra1,chr9_tRNAr,by="pos")
genedata_chr10rev_tRNA <- join(genedata_chr10rev_Yra1,chr10_tRNAr,by="pos")
genedata_chr11rev_tRNA <- join(genedata_chr11rev_Yra1,chr11_tRNAr,by="pos")
genedata_chr12rev_tRNA <- join(genedata_chr12rev_Yra1,chr12_tRNAr,by="pos")
genedata_chr13rev_tRNA <- join(genedata_chr13rev_Yra1,chr13_tRNAr,by="pos")
genedata_chr14rev_tRNA <- join(genedata_chr14rev_Yra1,chr14_tRNAr,by="pos")
genedata_chr15rev_tRNA <- join(genedata_chr15rev_Yra1,chr15_tRNAr,by="pos")
genedata_chr16rev_tRNA <- join(genedata_chr16rev_Yra1,chr16_tRNAr,by="pos")

s<- c(1:3,7,10,11)
genedata_chr1fw_tRNA<- genedata_chr1fw_tRNA[,s]
genedata_chr2fw_tRNA<- genedata_chr2fw_tRNA[,s]
genedata_chr3fw_tRNA<- genedata_chr3fw_tRNA[,s]
genedata_chr4fw_tRNA<- genedata_chr4fw_tRNA[,s]
genedata_chr5fw_tRNA<- genedata_chr5fw_tRNA[,s]
genedata_chr6fw_tRNA<- genedata_chr6fw_tRNA[,s]
genedata_chr7fw_tRNA<- genedata_chr7fw_tRNA[,s]
genedata_chr8fw_tRNA<- genedata_chr8fw_tRNA[,s]
genedata_chr9fw_tRNA<- genedata_chr9fw_tRNA[,s]
genedata_chr10fw_tRNA<- genedata_chr10fw_tRNA[,s]
genedata_chr11fw_tRNA<- genedata_chr11fw_tRNA[,s]
genedata_chr12fw_tRNA<- genedata_chr12fw_tRNA[,s]
genedata_chr13fw_tRNA<- genedata_chr13fw_tRNA[,s]
genedata_chr14fw_tRNA<- genedata_chr14fw_tRNA[,s]
genedata_chr15fw_tRNA<- genedata_chr15fw_tRNA[,s]
genedata_chr16fw_tRNA<- genedata_chr16fw_tRNA[,s]

genedata_chr1rev_tRNA<- genedata_chr1rev_tRNA[,s]
genedata_chr2rev_tRNA<- genedata_chr2rev_tRNA[,s]
genedata_chr3rev_tRNA<- genedata_chr3rev_tRNA[,s]
genedata_chr4rev_tRNA<- genedata_chr4rev_tRNA[,s]
genedata_chr5rev_tRNA<- genedata_chr5rev_tRNA[,s]
genedata_chr6rev_tRNA<- genedata_chr6rev_tRNA[,s]
genedata_chr7rev_tRNA<- genedata_chr7rev_tRNA[,s]
genedata_chr8rev_tRNA<- genedata_chr8rev_tRNA[,s]
genedata_chr9rev_tRNA<- genedata_chr9rev_tRNA[,s]
genedata_chr10rev_tRNA<- genedata_chr10rev_tRNA[,s]
genedata_chr11rev_tRNA<- genedata_chr11rev_tRNA[,s]
genedata_chr12rev_tRNA<- genedata_chr12rev_tRNA[,s]
genedata_chr13rev_tRNA<- genedata_chr13rev_tRNA[,s]
genedata_chr14rev_tRNA<- genedata_chr14rev_tRNA[,s]
genedata_chr15rev_tRNA<- genedata_chr15rev_tRNA[,s]
genedata_chr16rev_tRNA<- genedata_chr16rev_tRNA[,s]

########Join genedata that has tRNA features and the total hits per tRNA so I can normalize#######
GD_chr1fw_tRNA<- join(genedata_chr1fw_tRNA,totalhitspergene_chr1fw_tRNA, by="gene")
GD_chr2fw_tRNA<- join(genedata_chr2fw_tRNA,totalhitspergene_chr2fw_tRNA, by="gene")
GD_chr3fw_tRNA<- join(genedata_chr3fw_tRNA,totalhitspergene_chr3fw_tRNA, by="gene")
GD_chr4fw_tRNA<- join(genedata_chr4fw_tRNA,totalhitspergene_chr4fw_tRNA, by="gene")
GD_chr5fw_tRNA<- join(genedata_chr5fw_tRNA,totalhitspergene_chr5fw_tRNA, by="gene")
GD_chr6fw_tRNA<- join(genedata_chr6fw_tRNA,totalhitspergene_chr6fw_tRNA, by="gene")
GD_chr7fw_tRNA<- join(genedata_chr7fw_tRNA,totalhitspergene_chr7fw_tRNA, by="gene")
GD_chr8fw_tRNA<- join(genedata_chr8fw_tRNA,totalhitspergene_chr8fw_tRNA, by="gene")
GD_chr9fw_tRNA<- join(genedata_chr9fw_tRNA,totalhitspergene_chr9fw_tRNA, by="gene")
GD_chr10fw_tRNA<- join(genedata_chr10fw_tRNA,totalhitspergene_chr10fw_tRNA, by="gene")
GD_chr11fw_tRNA<- join(genedata_chr11fw_tRNA,totalhitspergene_chr11fw_tRNA, by="gene")
GD_chr12fw_tRNA<- join(genedata_chr12fw_tRNA,totalhitspergene_chr12fw_tRNA, by="gene")
GD_chr13fw_tRNA<- join(genedata_chr13fw_tRNA,totalhitspergene_chr13fw_tRNA, by="gene")
GD_chr14fw_tRNA<- join(genedata_chr14fw_tRNA,totalhitspergene_chr14fw_tRNA, by="gene")
GD_chr15fw_tRNA<- join(genedata_chr15fw_tRNA,totalhitspergene_chr15fw_tRNA, by="gene")
GD_chr16fw_tRNA<- join(genedata_chr16fw_tRNA,totalhitspergene_chr16fw_tRNA, by="gene")

GD_chr1rev_tRNA<- join(genedata_chr1rev_tRNA,totalhitspergene_chr1rev_tRNA, by="gene")
GD_chr2rev_tRNA<- join(genedata_chr2rev_tRNA,totalhitspergene_chr2rev_tRNA, by="gene")
GD_chr3rev_tRNA<- join(genedata_chr3rev_tRNA,totalhitspergene_chr3rev_tRNA, by="gene")
GD_chr4rev_tRNA<- join(genedata_chr4rev_tRNA,totalhitspergene_chr4rev_tRNA, by="gene")
GD_chr5rev_tRNA<- join(genedata_chr5rev_tRNA,totalhitspergene_chr5rev_tRNA, by="gene")
GD_chr6rev_tRNA<- join(genedata_chr6rev_tRNA,totalhitspergene_chr6rev_tRNA, by="gene")
GD_chr7rev_tRNA<- join(genedata_chr7rev_tRNA,totalhitspergene_chr7rev_tRNA, by="gene")
GD_chr8rev_tRNA<- join(genedata_chr8rev_tRNA,totalhitspergene_chr8rev_tRNA, by="gene")
GD_chr9rev_tRNA<- join(genedata_chr9rev_tRNA,totalhitspergene_chr9rev_tRNA, by="gene")
GD_chr10rev_tRNA<- join(genedata_chr10rev_tRNA,totalhitspergene_chr10rev_tRNA, by="gene")
GD_chr11rev_tRNA<- join(genedata_chr11rev_tRNA,totalhitspergene_chr11rev_tRNA, by="gene")
GD_chr12rev_tRNA<- join(genedata_chr12rev_tRNA,totalhitspergene_chr12rev_tRNA, by="gene")
GD_chr13rev_tRNA<- join(genedata_chr13rev_tRNA,totalhitspergene_chr13rev_tRNA, by="gene")
GD_chr14rev_tRNA<- join(genedata_chr14rev_tRNA,totalhitspergene_chr14rev_tRNA, by="gene")
GD_chr15rev_tRNA<- join(genedata_chr15rev_tRNA,totalhitspergene_chr15rev_tRNA, by="gene")
GD_chr16rev_tRNA<- join(genedata_chr16rev_tRNA,totalhitspergene_chr16rev_tRNA, by="gene")

x<- c(1:4,9,15,16,17)
GD_chr1fw_tRNA<- GD_chr1fw_tRNA[,x]
GD_chr2fw_tRNA<- GD_chr2fw_tRNA[,x]
GD_chr3fw_tRNA<- GD_chr3fw_tRNA[,x]
GD_chr4fw_tRNA<- GD_chr4fw_tRNA[,x]
GD_chr5fw_tRNA<- GD_chr5fw_tRNA[,x]
GD_chr6fw_tRNA<- GD_chr6fw_tRNA[,x]
GD_chr7fw_tRNA<- GD_chr7fw_tRNA[,x]
GD_chr8fw_tRNA<- GD_chr8fw_tRNA[,x]
GD_chr9fw_tRNA<- GD_chr9fw_tRNA[,x]
GD_chr10fw_tRNA<- GD_chr10fw_tRNA[,x]
GD_chr11fw_tRNA<- GD_chr11fw_tRNA[,x]
GD_chr12fw_tRNA<- GD_chr12fw_tRNA[,x]
GD_chr13fw_tRNA<- GD_chr13fw_tRNA[,x]
GD_chr14fw_tRNA<- GD_chr14fw_tRNA[,x]
GD_chr15fw_tRNA<- GD_chr15fw_tRNA[,x]
GD_chr16fw_tRNA<- GD_chr16fw_tRNA[,x]

GD_chr1rev_tRNA<- GD_chr1rev_tRNA[,x]
GD_chr2rev_tRNA<- GD_chr2rev_tRNA[,x]
GD_chr3rev_tRNA<- GD_chr3rev_tRNA[,x]
GD_chr4rev_tRNA<- GD_chr4rev_tRNA[,x]
GD_chr5rev_tRNA<- GD_chr5rev_tRNA[,x]
GD_chr6rev_tRNA<- GD_chr6rev_tRNA[,x]
GD_chr7rev_tRNA<- GD_chr7rev_tRNA[,x]
GD_chr8rev_tRNA<- GD_chr8rev_tRNA[,x]
GD_chr9rev_tRNA<- GD_chr9rev_tRNA[,x]
GD_chr10rev_tRNA<- GD_chr10rev_tRNA[,x]
GD_chr11rev_tRNA<- GD_chr11rev_tRNA[,x]
GD_chr12rev_tRNA<- GD_chr12rev_tRNA[,x]
GD_chr13rev_tRNA<- GD_chr13rev_tRNA[,x]
GD_chr14rev_tRNA<- GD_chr14rev_tRNA[,x]
GD_chr15rev_tRNA<- GD_chr15rev_tRNA[,x]
GD_chr16rev_tRNA<- GD_chr16rev_tRNA[,x]

genedata_chr1fw_tRNA_noUN <- genedata_chr1fw_tRNA[ which(genedata_chr1fw_tRNA$gene!="unassigned"),]
genedata_chr2fw_tRNA_noUN <- genedata_chr2fw_tRNA[ which(genedata_chr2fw_tRNA$gene!="unassigned"),]
genedata_chr3fw_tRNA_noUN <- genedata_chr3fw_tRNA[ which(genedata_chr3fw_tRNA$gene!="unassigned"),]
genedata_chr4fw_tRNA_noUN <- genedata_chr4fw_tRNA[ which(genedata_chr4fw_tRNA$gene!="unassigned"),]
genedata_chr5fw_tRNA_noUN <- genedata_chr5fw_tRNA[ which(genedata_chr5fw_tRNA$gene!="unassigned"),]
genedata_chr6fw_tRNA_noUN <- genedata_chr6fw_tRNA[ which(genedata_chr6fw_tRNA$gene!="unassigned"),]
genedata_chr7fw_tRNA_noUN <- genedata_chr7fw_tRNA[ which(genedata_chr7fw_tRNA$gene!="unassigned"),]
genedata_chr8fw_tRNA_noUN <- genedata_chr8fw_tRNA[ which(genedata_chr8fw_tRNA$gene!="unassigned"),]
genedata_chr9fw_tRNA_noUN <- genedata_chr9fw_tRNA[ which(genedata_chr9fw_tRNA$gene!="unassigned"),]
genedata_chr10fw_tRNA_noUN <- genedata_chr10fw_tRNA[ which(genedata_chr10fw_tRNA$gene!="unassigned"),]
genedata_chr11fw_tRNA_noUN <- genedata_chr11fw_tRNA[ which(genedata_chr11fw_tRNA$gene!="unassigned"),]
genedata_chr12fw_tRNA_noUN <- genedata_chr12fw_tRNA[ which(genedata_chr12fw_tRNA$gene!="unassigned"),]
genedata_chr13fw_tRNA_noUN <- genedata_chr13fw_tRNA[ which(genedata_chr13fw_tRNA$gene!="unassigned"),]
genedata_chr14fw_tRNA_noUN <- genedata_chr14fw_tRNA[ which(genedata_chr14fw_tRNA$gene!="unassigned"),]
genedata_chr15fw_tRNA_noUN <- genedata_chr15fw_tRNA[ which(genedata_chr15fw_tRNA$gene!="unassigned"),]
genedata_chr16fw_tRNA_noUN <- genedata_chr16fw_tRNA[ which(genedata_chr16fw_tRNA$gene!="unassigned"),]

genedata_chr1rev_tRNA_noUN <- genedata_chr1rev_tRNA[ which(genedata_chr1rev_tRNA$gene!="unassigned"),]
genedata_chr2rev_tRNA_noUN <- genedata_chr2rev_tRNA[ which(genedata_chr2rev_tRNA$gene!="unassigned"),]
genedata_chr3rev_tRNA_noUN <- genedata_chr3rev_tRNA[ which(genedata_chr3rev_tRNA$gene!="unassigned"),]
genedata_chr4rev_tRNA_noUN <- genedata_chr4rev_tRNA[ which(genedata_chr4rev_tRNA$gene!="unassigned"),]
genedata_chr5rev_tRNA_noUN <- genedata_chr5rev_tRNA[ which(genedata_chr5rev_tRNA$gene!="unassigned"),]
genedata_chr6rev_tRNA_noUN <- genedata_chr6rev_tRNA[ which(genedata_chr6rev_tRNA$gene!="unassigned"),]
genedata_chr7rev_tRNA_noUN <- genedata_chr7rev_tRNA[ which(genedata_chr7rev_tRNA$gene!="unassigned"),]
genedata_chr8rev_tRNA_noUN <- genedata_chr8rev_tRNA[ which(genedata_chr8rev_tRNA$gene!="unassigned"),]
genedata_chr9rev_tRNA_noUN <- genedata_chr9rev_tRNA[ which(genedata_chr9rev_tRNA$gene!="unassigned"),]
genedata_chr10rev_tRNA_noUN <- genedata_chr10rev_tRNA[ which(genedata_chr10rev_tRNA$gene!="unassigned"),]
genedata_chr11rev_tRNA_noUN <- genedata_chr11rev_tRNA[ which(genedata_chr11rev_tRNA$gene!="unassigned"),]
genedata_chr12rev_tRNA_noUN <- genedata_chr12rev_tRNA[ which(genedata_chr12rev_tRNA$gene!="unassigned"),]
genedata_chr13rev_tRNA_noUN <- genedata_chr13rev_tRNA[ which(genedata_chr13rev_tRNA$gene!="unassigned"),]
genedata_chr14rev_tRNA_noUN <- genedata_chr14rev_tRNA[ which(genedata_chr14rev_tRNA$gene!="unassigned"),]
genedata_chr15rev_tRNA_noUN <- genedata_chr15rev_tRNA[ which(genedata_chr15rev_tRNA$gene!="unassigned"),]
genedata_chr16rev_tRNA_noUN <- genedata_chr16rev_tRNA[ which(genedata_chr16rev_tRNA$gene!="unassigned"),]








#Find sum for each tRNA for abundance
#first change gene from factors into numbers
z<- c(4,5)
genedata_chr1fw_tRNA<- genedata_chr1fw_tRNA_noUN[,z]
genedata_chr2fw_tRNA<- genedata_chr2fw_tRNA_noUN[,z]
genedata_chr3fw_tRNA<- genedata_chr3fw_tRNA_noUN[,z]
genedata_chr4fw_tRNA<- genedata_chr4fw_tRNA_noUN[,z]
genedata_chr5fw_tRNA<- genedata_chr5fw_tRNA_noUN[,z]
genedata_chr6fw_tRNA<- genedata_chr6fw_tRNA_noUN[,z]
genedata_chr7fw_tRNA<- genedata_chr7fw_tRNA_noUN[,z]
genedata_chr8fw_tRNA<- genedata_chr8fw_tRNA_noUN[,z]
genedata_chr9fw_tRNA<- genedata_chr9fw_tRNA_noUN[,z]
genedata_chr10fw_tRNA<- genedata_chr10fw_tRNA_noUN[,z]
genedata_chr11fw_tRNA<- genedata_chr11fw_tRNA_noUN[,z]
genedata_chr12fw_tRNA<- genedata_chr12fw_tRNA_noUN[,z]
genedata_chr13fw_tRNA<- genedata_chr13fw_tRNA_noUN[,z]
genedata_chr14fw_tRNA<- genedata_chr14fw_tRNA_noUN[,z]
genedata_chr15fw_tRNA<- genedata_chr15fw_tRNA_noUN[,z]
genedata_chr16fw_tRNA<- genedata_chr16fw_tRNA_noUN[,z]

genedata_chr1rev_tRNA<- genedata_chr1rev_tRNA_noUN[,z]
genedata_chr2rev_tRNA<- genedata_chr2rev_tRNA_noUN[,z]
genedata_chr3rev_tRNA<- genedata_chr3rev_tRNA_noUN[,z]
genedata_chr4rev_tRNA<- genedata_chr4rev_tRNA_noUN[,z]
genedata_chr5rev_tRNA<- genedata_chr5rev_tRNA_noUN[,z]
genedata_chr6rev_tRNA<- genedata_chr6rev_tRNA_noUN[,z]
genedata_chr7rev_tRNA<- genedata_chr7rev_tRNA_noUN[,z]
genedata_chr8rev_tRNA<- genedata_chr8rev_tRNA_noUN[,z]
genedata_chr9rev_tRNA<- genedata_chr9rev_tRNA_noUN[,z]
genedata_chr10rev_tRNA<- genedata_chr10rev_tRNA_noUN[,z]
genedata_chr11rev_tRNA<- genedata_chr11rev_tRNA_noUN[,z]
genedata_chr12rev_tRNA<- genedata_chr12rev_tRNA_noUN[,z]
genedata_chr13rev_tRNA<- genedata_chr13rev_tRNA_noUN[,z]
genedata_chr14rev_tRNA<- genedata_chr14rev_tRNA_noUN[,z]
genedata_chr15rev_tRNA<- genedata_chr15rev_tRNA_noUN[,z]
genedata_chr16rev_tRNA<- genedata_chr16rev_tRNA_noUN[,z]

genedata_chr1fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr1fw_tRNA$Dbp2_iCLIP)
genedata_chr2fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr2fw_tRNA$Dbp2_iCLIP)
genedata_chr3fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr3fw_tRNA$Dbp2_iCLIP)
genedata_chr4fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr4fw_tRNA$Dbp2_iCLIP)
genedata_chr5fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr5fw_tRNA$Dbp2_iCLIP)
genedata_chr6fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr6fw_tRNA$Dbp2_iCLIP)
genedata_chr7fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr7fw_tRNA$Dbp2_iCLIP)
genedata_chr8fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr8fw_tRNA$Dbp2_iCLIP)
genedata_chr9fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr9fw_tRNA$Dbp2_iCLIP)
genedata_chr10fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr10fw_tRNA$Dbp2_iCLIP)
genedata_chr11fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr11fw_tRNA$Dbp2_iCLIP)
genedata_chr12fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr12fw_tRNA$Dbp2_iCLIP)
genedata_chr13fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr13fw_tRNA$Dbp2_iCLIP)
genedata_chr14fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr14fw_tRNA$Dbp2_iCLIP)
genedata_chr15fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr15fw_tRNA$Dbp2_iCLIP)
genedata_chr16fw_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr16fw_tRNA$Dbp2_iCLIP)

genedata_chr1rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr1rev_tRNA$Dbp2_iCLIP)
genedata_chr2rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr2rev_tRNA$Dbp2_iCLIP)
genedata_chr3rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr3rev_tRNA$Dbp2_iCLIP)
genedata_chr4rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr4rev_tRNA$Dbp2_iCLIP)
genedata_chr5rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr5rev_tRNA$Dbp2_iCLIP)
genedata_chr6rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr6rev_tRNA$Dbp2_iCLIP)
genedata_chr7rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr7rev_tRNA$Dbp2_iCLIP)
genedata_chr8rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr8rev_tRNA$Dbp2_iCLIP)
genedata_chr9rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr9rev_tRNA$Dbp2_iCLIP)
genedata_chr10rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr10rev_tRNA$Dbp2_iCLIP)
genedata_chr11rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr11rev_tRNA$Dbp2_iCLIP)
genedata_chr12rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr12rev_tRNA$Dbp2_iCLIP)
genedata_chr13rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr13rev_tRNA$Dbp2_iCLIP)
genedata_chr14rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr14rev_tRNA$Dbp2_iCLIP)
genedata_chr15rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr15rev_tRNA$Dbp2_iCLIP)
genedata_chr16rev_tRNA$Dbp2_iCLIP<- as.numeric(genedata_chr16rev_tRNA$Dbp2_iCLIP)

#calculating the sum for each gene
totalhitspergene_chr1rev_tRNA<-aggregate(.~gene, data=genedata_chr1rev_tRNA, FUN=sum)
totalhitspergene_chr2rev_tRNA<-aggregate(.~gene, data=genedata_chr2rev_tRNA, FUN=sum)
totalhitspergene_chr3rev_tRNA<-aggregate(.~gene, data=genedata_chr3rev_tRNA, FUN=sum)
totalhitspergene_chr4rev_tRNA<-aggregate(.~gene, data=genedata_chr4rev_tRNA, FUN=sum)
totalhitspergene_chr5rev_tRNA<-aggregate(.~gene, data=genedata_chr5rev_tRNA, FUN=sum)
totalhitspergene_chr6rev_tRNA<-aggregate(.~gene, data=genedata_chr6rev_tRNA, FUN=sum)
totalhitspergene_chr7rev_tRNA<-aggregate(.~gene, data=genedata_chr7rev_tRNA, FUN=sum)
totalhitspergene_chr8rev_tRNA<-aggregate(.~gene, data=genedata_chr8rev_tRNA, FUN=sum)
totalhitspergene_chr9rev_tRNA<-aggregate(.~gene, data=genedata_chr9rev_tRNA, FUN=sum)
totalhitspergene_chr10rev_tRNA<-aggregate(.~gene, data=genedata_chr10rev_tRNA, FUN=sum)
totalhitspergene_chr11rev_tRNA<-aggregate(.~gene, data=genedata_chr11rev_tRNA, FUN=sum)
totalhitspergene_chr12rev_tRNA<-aggregate(.~gene, data=genedata_chr12rev_tRNA, FUN=sum)
totalhitspergene_chr13rev_tRNA<-aggregate(.~gene, data=genedata_chr13rev_tRNA, FUN=sum)
totalhitspergene_chr14rev_tRNA<-aggregate(.~gene, data=genedata_chr14rev_tRNA, FUN=sum)
totalhitspergene_chr15rev_tRNA<-aggregate(.~gene, data=genedata_chr15rev_tRNA, FUN=sum)
totalhitspergene_chr16rev_tRNA<-aggregate(.~gene, data=genedata_chr16rev_tRNA, FUN=sum)

totalhitspergene_chr1fw_tRNA<-aggregate(.~gene, data=genedata_chr1fw_tRNA, FUN=sum)
totalhitspergene_chr2fw_tRNA<-aggregate(.~gene, data=genedata_chr2fw_tRNA, FUN=sum)
totalhitspergene_chr3fw_tRNA<-aggregate(.~gene, data=genedata_chr3fw_tRNA, FUN=sum)
totalhitspergene_chr4fw_tRNA<-aggregate(.~gene, data=genedata_chr4fw_tRNA, FUN=sum)
totalhitspergene_chr5fw_tRNA<-aggregate(.~gene, data=genedata_chr5fw_tRNA, FUN=sum)
totalhitspergene_chr6fw_tRNA<-aggregate(.~gene, data=genedata_chr6fw_tRNA, FUN=sum)
totalhitspergene_chr7fw_tRNA<-aggregate(.~gene, data=genedata_chr7fw_tRNA, FUN=sum)
totalhitspergene_chr8fw_tRNA<-aggregate(.~gene, data=genedata_chr8fw_tRNA, FUN=sum)
totalhitspergene_chr9fw_tRNA<-aggregate(.~gene, data=genedata_chr9fw_tRNA, FUN=sum)
totalhitspergene_chr10fw_tRNA<-aggregate(.~gene, data=genedata_chr10fw_tRNA, FUN=sum)
totalhitspergene_chr11fw_tRNA<-aggregate(.~gene, data=genedata_chr11fw_tRNA, FUN=sum)
totalhitspergene_chr12fw_tRNA<-aggregate(.~gene, data=genedata_chr12fw_tRNA, FUN=sum)
totalhitspergene_chr13fw_tRNA<-aggregate(.~gene, data=genedata_chr13fw_tRNA, FUN=sum)
totalhitspergene_chr14fw_tRNA<-aggregate(.~gene, data=genedata_chr14fw_tRNA, FUN=sum)
totalhitspergene_chr15fw_tRNA<-aggregate(.~gene, data=genedata_chr15fw_tRNA, FUN=sum)
totalhitspergene_chr16fw_tRNA<-aggregate(.~gene, data=genedata_chr16fw_tRNA, FUN=sum)

totalhitspergene_chr1fw_tRNA <- totalhitspergene_chr1fw_tRNA[ which(totalhitspergene_chr1fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr2fw_tRNA <- totalhitspergene_chr2fw_tRNA[ which(totalhitspergene_chr2fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr3fw_tRNA <- totalhitspergene_chr3fw_tRNA[ which(totalhitspergene_chr3fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr4fw_tRNA <- totalhitspergene_chr4fw_tRNA[ which(totalhitspergene_chr4fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr5fw_tRNA <- totalhitspergene_chr5fw_tRNA[ which(totalhitspergene_chr5fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr6fw_tRNA <- totalhitspergene_chr6fw_tRNA[ which(totalhitspergene_chr6fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr7fw_tRNA <- totalhitspergene_chr7fw_tRNA[ which(totalhitspergene_chr7fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr8fw_tRNA <- totalhitspergene_chr8fw_tRNA[ which(totalhitspergene_chr8fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr9fw_tRNA <- totalhitspergene_chr9fw_tRNA[ which(totalhitspergene_chr9fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr10fw_tRNA <- totalhitspergene_chr10fw_tRNA[ which(totalhitspergene_chr10fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr11fw_tRNA <- totalhitspergene_chr11fw_tRNA[ which(totalhitspergene_chr11fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr12fw_tRNA <- totalhitspergene_chr12fw_tRNA[ which(totalhitspergene_chr12fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr13fw_tRNA <- totalhitspergene_chr13fw_tRNA[ which(totalhitspergene_chr13fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr14fw_tRNA <- totalhitspergene_chr14fw_tRNA[ which(totalhitspergene_chr14fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr15fw_tRNA <- totalhitspergene_chr15fw_tRNA[ which(totalhitspergene_chr15fw_tRNA$gene!="unassigned"),]
totalhitspergene_chr16fw_tRNA <- totalhitspergene_chr16fw_tRNA[ which(totalhitspergene_chr16fw_tRNA$gene!="unassigned"),]

totalhitspergene_chr1rev_tRNA <- totalhitspergene_chr1rev_tRNA[ which(totalhitspergene_chr1rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr2rev_tRNA <- totalhitspergene_chr2rev_tRNA[ which(totalhitspergene_chr2rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr3rev_tRNA <- totalhitspergene_chr3rev_tRNA[ which(totalhitspergene_chr3rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr4rev_tRNA <- totalhitspergene_chr4rev_tRNA[ which(totalhitspergene_chr4rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr5rev_tRNA <- totalhitspergene_chr5rev_tRNA[ which(totalhitspergene_chr5rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr6rev_tRNA <- totalhitspergene_chr6rev_tRNA[ which(totalhitspergene_chr6rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr7rev_tRNA <- totalhitspergene_chr7rev_tRNA[ which(totalhitspergene_chr7rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr8rev_tRNA <- totalhitspergene_chr8rev_tRNA[ which(totalhitspergene_chr8rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr9rev_tRNA <- totalhitspergene_chr9rev_tRNA[ which(totalhitspergene_chr9rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr10rev_tRNA <- totalhitspergene_chr10rev_tRNA[ which(totalhitspergene_chr10rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr11rev_tRNA <- totalhitspergene_chr11rev_tRNA[ which(totalhitspergene_chr11rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr12rev_tRNA <- totalhitspergene_chr12rev_tRNA[ which(totalhitspergene_chr12rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr13rev_tRNA <- totalhitspergene_chr13rev_tRNA[ which(totalhitspergene_chr13rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr14rev_tRNA <- totalhitspergene_chr14rev_tRNA[ which(totalhitspergene_chr14rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr15rev_tRNA <- totalhitspergene_chr15rev_tRNA[ which(totalhitspergene_chr15rev_tRNA$gene!="unassigned"),]
totalhitspergene_chr16rev_tRNA <- totalhitspergene_chr16rev_tRNA[ which(totalhitspergene_chr16rev_tRNA$gene!="unassigned"),]

Totalreadsper_tRNA<- rbind(totalhitspergene_chr1fw_tRNA,totalhitspergene_chr2fw_tRNA,totalhitspergene_chr3fw_tRNA,totalhitspergene_chr4fw_tRNA,totalhitspergene_chr5fw_tRNA,
                           totalhitspergene_chr6fw_tRNA,totalhitspergene_chr7fw_tRNA,totalhitspergene_chr8fw_tRNA,totalhitspergene_chr9fw_tRNA,totalhitspergene_chr10fw_tRNA,
                           totalhitspergene_chr11fw_tRNA,totalhitspergene_chr12fw_tRNA,totalhitspergene_chr13fw_tRNA,totalhitspergene_chr14fw_tRNA,totalhitspergene_chr15fw_tRNA,
                           totalhitspergene_chr16rev_tRNA,totalhitspergene_chr1rev_tRNA,totalhitspergene_chr2rev_tRNA,totalhitspergene_chr3rev_tRNA,totalhitspergene_chr4rev_tRNA,
                           totalhitspergene_chr5rev_tRNA,totalhitspergene_chr6rev_tRNA,totalhitspergene_chr7rev_tRNA,totalhitspergene_chr8rev_tRNA,totalhitspergene_chr9rev_tRNA,
                           totalhitspergene_chr10rev_tRNA,totalhitspergene_chr11rev_tRNA,totalhitspergene_chr12rev_tRNA,totalhitspergene_chr13rev_tRNA,totalhitspergene_chr14rev_tRNA,
                           totalhitspergene_chr15rev_tRNA,totalhitspergene_chr16rev_tRNA)

write.table(Totalreadsper_tRNA,file="totalreadsper_tRNA.txt",sep="\t",row.names = F,col.names = T, quote=T)


#take only the columns I need
e<-c(1:3,11,12,15,16,21,22)
SMgenedata_chr1fw_tRNA <-genedata_chr1fw_tRNA[,e]
SMgenedata_chr2fw_tRNA <-genedata_chr2fw_tRNA[,e]
SMgenedata_chr3fw_tRNA <-genedata_chr3fw_tRNA[,e]
SMgenedata_chr4fw_tRNA <-genedata_chr4fw_tRNA[,e]
SMgenedata_chr5fw_tRNA <-genedata_chr5fw_tRNA[,e]
SMgenedata_chr6fw_tRNA <-genedata_chr6fw_tRNA[,e]
SMgenedata_chr7fw_tRNA <-genedata_chr7fw_tRNA[,e]
SMgenedata_chr8fw_tRNA <-genedata_chr8fw_tRNA[,e]
SMgenedata_chr9fw_tRNA <-genedata_chr9fw_tRNA[,e]
SMgenedata_chr10fw_tRNA <-genedata_chr10fw_tRNA[,e]
SMgenedata_chr11fw_tRNA <-genedata_chr11fw_tRNA[,e]
SMgenedata_chr12fw_tRNA <-genedata_chr12fw_tRNA[,e]
SMgenedata_chr13fw_tRNA <-genedata_chr13fw_tRNA[,e]
SMgenedata_chr14fw_tRNA <-genedata_chr14fw_tRNA[,e]
SMgenedata_chr15fw_tRNA <-genedata_chr15fw_tRNA[,e]
SMgenedata_chr16fw_tRNA <-genedata_chr16fw_tRNA[,e]

SMgenedata_chr1rev_tRNA <-genedata_chr1rev_tRNA[,e]
SMgenedata_chr2rev_tRNA <-genedata_chr2rev_tRNA[,e]
SMgenedata_chr3rev_tRNA <-genedata_chr3rev_tRNA[,e]
SMgenedata_chr4rev_tRNA <-genedata_chr4rev_tRNA[,e]
SMgenedata_chr5rev_tRNA <-genedata_chr5rev_tRNA[,e]
SMgenedata_chr6rev_tRNA <-genedata_chr6rev_tRNA[,e]
SMgenedata_chr7rev_tRNA <-genedata_chr7rev_tRNA[,e]
SMgenedata_chr8rev_tRNA <-genedata_chr8rev_tRNA[,e]
SMgenedata_chr9rev_tRNA <-genedata_chr9rev_tRNA[,e]
SMgenedata_chr10rev_tRNA <-genedata_chr10rev_tRNA[,e]
SMgenedata_chr11rev_tRNA <-genedata_chr11rev_tRNA[,e]
SMgenedata_chr12rev_tRNA <-genedata_chr12rev_tRNA[,e]
SMgenedata_chr13rev_tRNA <-genedata_chr13rev_tRNA[,e]
SMgenedata_chr14rev_tRNA <-genedata_chr14rev_tRNA[,e]
SMgenedata_chr15rev_tRNA <-genedata_chr15rev_tRNA[,e]
SMgenedata_chr16rev_tRNA <-genedata_chr16rev_tRNA[,e]

#get rid of all unassigned rows.
Annotatedgenedata_chr1fw <- genedata_chr1fw_tRNA[ which(genedata_chr1fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr2fw <- genedata_chr2fw_tRNA[ which(genedata_chr2fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr3fw <- genedata_chr3fw_tRNA[ which(genedata_chr3fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr4fw <- genedata_chr4fw_tRNA[ which(genedata_chr4fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr5fw <- genedata_chr5fw_tRNA[ which(genedata_chr5fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr6fw <- genedata_chr6fw_tRNA[ which(genedata_chr6fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr7fw <- genedata_chr7fw_tRNA[ which(genedata_chr7fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr8fw <- genedata_chr8fw_tRNA[ which(genedata_chr8fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr9fw <- genedata_chr9fw_tRNA[ which(genedata_chr9fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr10fw <- genedata_chr10fw_tRNA[ which(genedata_chr10fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr11fw <- genedata_chr11fw_tRNA[ which(genedata_chr11fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr12fw <- genedata_chr12fw_tRNA[ which(genedata_chr12fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr13fw <- genedata_chr13fw_tRNA[ which(genedata_chr13fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr14fw <- genedata_chr14fw_tRNA[ which(genedata_chr14fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr15fw <- genedata_chr15fw_tRNA[ which(genedata_chr15fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr16fw <- genedata_chr16fw_tRNA[ which(genedata_chr16fw_tRNA$feature!="unassigned"),]

Annotatedgenedata_chr1rev <- genedata_chr1rev_tRNA[ which(genedata_chr1rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr2rev <- genedata_chr2rev_tRNA[ which(genedata_chr2rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr3rev <- genedata_chr3rev_tRNA[ which(genedata_chr3rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr4rev <- genedata_chr4rev_tRNA[ which(genedata_chr4rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr5rev <- genedata_chr5rev_tRNA[ which(genedata_chr5rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr6rev <- genedata_chr6rev_tRNA[ which(genedata_chr6rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr7rev <- genedata_chr7rev_tRNA[ which(genedata_chr7rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr8rev <- genedata_chr8rev_tRNA[ which(genedata_chr8rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr9rev <- genedata_chr9rev_tRNA[ which(genedata_chr9rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr10rev <- genedata_chr10rev_tRNA[ which(genedata_chr10rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr11rev <- genedata_chr11rev_tRNA[ which(genedata_chr11rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr12rev <- genedata_chr12rev_tRNA[ which(genedata_chr12rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr13rev <- genedata_chr13rev_tRNA[ which(genedata_chr13rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr14rev <- genedata_chr14rev_tRNA[ which(genedata_chr14rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr15rev <- genedata_chr15rev_tRNA[ which(genedata_chr15rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr16rev <- genedata_chr16rev_tRNA[ which(genedata_chr16rev_tRNA$feature!="unassigned"),]

#join up
Annotatedgenedata_chr1fw <- join(Annotatedgenedata_chr1fw,chr1fwt, by = "gene")
Annotatedgenedata_chr2fw <- join(Annotatedgenedata_chr2fw,chr2fwt, by = "gene")
Annotatedgenedata_chr3fw <- join(Annotatedgenedata_chr3fw,chr3fwt, by = "gene")
Annotatedgenedata_chr4fw <- join(Annotatedgenedata_chr4fw,chr4fwt, by = "gene")
Annotatedgenedata_chr5fw <- join(Annotatedgenedata_chr5fw,chr5fwt, by = "gene")
Annotatedgenedata_chr6fw <- join(Annotatedgenedata_chr6fw,chr6fwt, by = "gene")
Annotatedgenedata_chr7fw <- join(Annotatedgenedata_chr7fw,chr7fwt, by = "gene")
Annotatedgenedata_chr8fw <- join(Annotatedgenedata_chr8fw,chr8fwt, by = "gene")
Annotatedgenedata_chr9fw <- join(Annotatedgenedata_chr9fw,chr9fwt, by = "gene")
Annotatedgenedata_chr10fw <- join(Annotatedgenedata_chr10fw,chr10fwt, by = "gene")
Annotatedgenedata_chr11fw <- join(Annotatedgenedata_chr11fw,chr11fwt, by = "gene")
Annotatedgenedata_chr12fw <- join(Annotatedgenedata_chr12fw,chr12fwt, by = "gene")
Annotatedgenedata_chr13fw <- join(Annotatedgenedata_chr13fw,chr13fwt, by = "gene")
Annotatedgenedata_chr14fw <- join(Annotatedgenedata_chr14fw,chr14fwt, by = "gene")
Annotatedgenedata_chr15fw <- join(Annotatedgenedata_chr15fw,chr15fwt, by = "gene")
Annotatedgenedata_chr16fw <- join(Annotatedgenedata_chr16fw,chr16fwt, by = "gene")

Annotatedgenedata_chr1rev <- join(Annotatedgenedata_chr1rev,chr1revt, by = "gene")
Annotatedgenedata_chr2rev <- join(Annotatedgenedata_chr2rev,chr2revt, by = "gene")
Annotatedgenedata_chr3rev <- join(Annotatedgenedata_chr3rev,chr3revt, by = "gene")
Annotatedgenedata_chr4rev <- join(Annotatedgenedata_chr4rev,chr4revt, by = "gene")
Annotatedgenedata_chr5rev <- join(Annotatedgenedata_chr5rev,chr5revt, by = "gene")
Annotatedgenedata_chr6rev <- join(Annotatedgenedata_chr6rev,chr6revt, by = "gene")
Annotatedgenedata_chr7rev <- join(Annotatedgenedata_chr7rev,chr7revt, by = "gene")
Annotatedgenedata_chr8rev <- join(Annotatedgenedata_chr8rev,chr8revt, by = "gene")
Annotatedgenedata_chr9rev <- join(Annotatedgenedata_chr9rev,chr9revt, by = "gene")
Annotatedgenedata_chr10rev <- join(Annotatedgenedata_chr10rev,chr10revt, by = "gene")
Annotatedgenedata_chr11rev <- join(Annotatedgenedata_chr11rev,chr11revt, by = "gene")
Annotatedgenedata_chr12rev <- join(Annotatedgenedata_chr12rev,chr12revt, by = "gene")
Annotatedgenedata_chr13rev <- join(Annotatedgenedata_chr13rev,chr13revt, by = "gene")
Annotatedgenedata_chr14rev <- join(Annotatedgenedata_chr14rev,chr14revt, by = "gene")
Annotatedgenedata_chr15rev <- join(Annotatedgenedata_chr15rev,chr15revt, by = "gene")
Annotatedgenedata_chr16rev <- join(Annotatedgenedata_chr16rev,chr16revt, by = "gene")

colnames(Annotatedgenedata_chr1rev)[8] <- "start"
colnames(Annotatedgenedata_chr2rev)[8] <- "start"
colnames(Annotatedgenedata_chr3rev)[8] <- "start"
colnames(Annotatedgenedata_chr4rev)[8] <- "start"
colnames(Annotatedgenedata_chr5rev)[8] <- "start"
colnames(Annotatedgenedata_chr6rev)[8] <- "start"
colnames(Annotatedgenedata_chr7rev)[8] <- "start"
colnames(Annotatedgenedata_chr8rev)[8] <- "start"
colnames(Annotatedgenedata_chr9rev)[8] <- "start"
colnames(Annotatedgenedata_chr10rev)[8] <- "start"
colnames(Annotatedgenedata_chr11rev)[8] <- "start"
colnames(Annotatedgenedata_chr12rev)[8] <- "start"
colnames(Annotatedgenedata_chr13rev)[8] <- "start"
colnames(Annotatedgenedata_chr14rev)[8] <- "start"
colnames(Annotatedgenedata_chr15rev)[8] <- "start"
colnames(Annotatedgenedata_chr16rev)[8] <- "start"

colnames(Annotatedgenedata_chr1rev)[9] <- "stop"
colnames(Annotatedgenedata_chr2rev)[9] <- "stop"
colnames(Annotatedgenedata_chr3rev)[9] <- "stop"
colnames(Annotatedgenedata_chr4rev)[9] <- "stop"
colnames(Annotatedgenedata_chr5rev)[9] <- "stop"
colnames(Annotatedgenedata_chr6rev)[9] <- "stop"
colnames(Annotatedgenedata_chr7rev)[9] <- "stop"
colnames(Annotatedgenedata_chr8rev)[9] <- "stop"
colnames(Annotatedgenedata_chr9rev)[9] <- "stop"
colnames(Annotatedgenedata_chr10rev)[9] <- "stop"
colnames(Annotatedgenedata_chr11rev)[9] <- "stop"
colnames(Annotatedgenedata_chr12rev)[9] <- "stop"
colnames(Annotatedgenedata_chr13rev)[9] <- "stop"
colnames(Annotatedgenedata_chr14rev)[9] <- "stop"
colnames(Annotatedgenedata_chr15rev)[9] <- "stop"
colnames(Annotatedgenedata_chr16rev)[9] <- "stop"

################################### Still need to calculate start/stop and bin and all that. so have to go back

#for corelation with abundance
write.table(Annotatedgenedata_chr1fw,file="AnnotatedNorm_chr1fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr2fw,file="AnnotatedNorm_chr2fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr3fw,file="AnnotatedNorm_chr3fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr4fw,file="AnnotatedNorm_chr4fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr5fw,file="AnnotatedNorm_chr5fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr6fw,file="AnnotatedNorm_chr6fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr7fw,file="AnnotatedNorm_chr7fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr8fw,file="AnnotatedNorm_chr8fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr9fw,file="AnnotatedNorm_chr9fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr10fw,file="AnnotatedNorm_chr10fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr11fw,file="AnnotatedNorm_chr11fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr12fw,file="AnnotatedNorm_chr12fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr13fw,file="AnnotatedNorm_chr13fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr14fw,file="AnnotatedNorm_chr14fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr15fw,file="AnnotatedNorm_chr15fw",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr16fw,file="AnnotatedNorm_chr16fw",sep="\t",row.names = F,col.names = T, quote=T)

write.table(Annotatedgenedata_chr1rev,file="AnnotatedNorm_chr1rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr2rev,file="AnnotatedNorm_chr2rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr3rev,file="AnnotatedNorm_chr3rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr4rev,file="AnnotatedNorm_chr4rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr5rev,file="AnnotatedNorm_chr5rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr6rev,file="AnnotatedNorm_chr6rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr7rev,file="AnnotatedNorm_chr7rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr8rev,file="AnnotatedNorm_chr8rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr9rev,file="AnnotatedNorm_chr9rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr10rev,file="AnnotatedNorm_chr10rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr11rev,file="AnnotatedNorm_chr11rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr12rev,file="AnnotatedNorm_chr12rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr13rev,file="AnnotatedNorm_chr13rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr14rev,file="AnnotatedNorm_chr14rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr15rev,file="AnnotatedNorm_chr15rev",sep="\t",row.names = F,col.names = T, quote=T)
write.table(Annotatedgenedata_chr16rev,file="AnnotatedNorm_chr16rev",sep="\t",row.names = F,col.names = T, quote=T)

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

Annotatedgenedata_chr1rev$relpos_ORF<- ifelse(Annotatedgenedata_chr1rev$pos<=Annotatedgenedata_chr1rev$start & Annotatedgenedata_chr1rev$pos>Annotatedgenedata_chr1rev$stop, (Annotatedgenedata_chr1rev$start-Annotatedgenedata_chr1rev$pos+1)/Annotatedgenedata_chr1rev$length,NA)
Annotatedgenedata_chr2rev$relpos_ORF<- ifelse(Annotatedgenedata_chr2rev$pos<=Annotatedgenedata_chr2rev$start & Annotatedgenedata_chr2rev$pos>Annotatedgenedata_chr2rev$stop, (Annotatedgenedata_chr2rev$start-Annotatedgenedata_chr2rev$pos+1)/Annotatedgenedata_chr2rev$length,NA)
Annotatedgenedata_chr3rev$relpos_ORF<- ifelse(Annotatedgenedata_chr3rev$pos<=Annotatedgenedata_chr3rev$start & Annotatedgenedata_chr3rev$pos>Annotatedgenedata_chr3rev$stop, (Annotatedgenedata_chr3rev$start-Annotatedgenedata_chr3rev$pos+1)/Annotatedgenedata_chr3rev$length,NA)
Annotatedgenedata_chr4rev$relpos_ORF<- ifelse(Annotatedgenedata_chr4rev$pos<=Annotatedgenedata_chr4rev$start & Annotatedgenedata_chr4rev$pos>Annotatedgenedata_chr4rev$stop, (Annotatedgenedata_chr4rev$start-Annotatedgenedata_chr4rev$pos+1)/Annotatedgenedata_chr4rev$length,NA)
Annotatedgenedata_chr5rev$relpos_ORF<- ifelse(Annotatedgenedata_chr5rev$pos<=Annotatedgenedata_chr5rev$start & Annotatedgenedata_chr5rev$pos>Annotatedgenedata_chr5rev$stop, (Annotatedgenedata_chr5rev$start-Annotatedgenedata_chr5rev$pos+1)/Annotatedgenedata_chr5rev$length,NA)
Annotatedgenedata_chr6rev$relpos_ORF<- ifelse(Annotatedgenedata_chr6rev$pos<=Annotatedgenedata_chr6rev$start & Annotatedgenedata_chr6rev$pos>Annotatedgenedata_chr6rev$stop, (Annotatedgenedata_chr6rev$start-Annotatedgenedata_chr6rev$pos+1)/Annotatedgenedata_chr6rev$length,NA)
Annotatedgenedata_chr7rev$relpos_ORF<- ifelse(Annotatedgenedata_chr7rev$pos<=Annotatedgenedata_chr7rev$start & Annotatedgenedata_chr7rev$pos>Annotatedgenedata_chr7rev$stop, (Annotatedgenedata_chr7rev$start-Annotatedgenedata_chr7rev$pos+1)/Annotatedgenedata_chr7rev$length,NA)
Annotatedgenedata_chr8rev$relpos_ORF<- ifelse(Annotatedgenedata_chr8rev$pos<=Annotatedgenedata_chr8rev$start & Annotatedgenedata_chr8rev$pos>Annotatedgenedata_chr8rev$stop, (Annotatedgenedata_chr8rev$start-Annotatedgenedata_chr8rev$pos+1)/Annotatedgenedata_chr8rev$length,NA)
Annotatedgenedata_chr9rev$relpos_ORF<- ifelse(Annotatedgenedata_chr9rev$pos<=Annotatedgenedata_chr9rev$start & Annotatedgenedata_chr9rev$pos>Annotatedgenedata_chr9rev$stop, (Annotatedgenedata_chr9rev$start-Annotatedgenedata_chr9rev$pos+1)/Annotatedgenedata_chr9rev$length,NA)
Annotatedgenedata_chr10rev$relpos_ORF<- ifelse(Annotatedgenedata_chr10rev$pos<=Annotatedgenedata_chr10rev$start & Annotatedgenedata_chr10rev$pos>Annotatedgenedata_chr10rev$stop, (Annotatedgenedata_chr10rev$start-Annotatedgenedata_chr10rev$pos+1)/Annotatedgenedata_chr10rev$length,NA)
Annotatedgenedata_chr11rev$relpos_ORF<- ifelse(Annotatedgenedata_chr11rev$pos<=Annotatedgenedata_chr11rev$start & Annotatedgenedata_chr11rev$pos>Annotatedgenedata_chr11rev$stop, (Annotatedgenedata_chr11rev$start-Annotatedgenedata_chr11rev$pos+1)/Annotatedgenedata_chr11rev$length,NA)
Annotatedgenedata_chr12rev$relpos_ORF<- ifelse(Annotatedgenedata_chr12rev$pos<=Annotatedgenedata_chr12rev$start & Annotatedgenedata_chr12rev$pos>Annotatedgenedata_chr12rev$stop, (Annotatedgenedata_chr12rev$start-Annotatedgenedata_chr12rev$pos+1)/Annotatedgenedata_chr12rev$length,NA)
Annotatedgenedata_chr13rev$relpos_ORF<- ifelse(Annotatedgenedata_chr13rev$pos<=Annotatedgenedata_chr13rev$start & Annotatedgenedata_chr13rev$pos>Annotatedgenedata_chr13rev$stop, (Annotatedgenedata_chr13rev$start-Annotatedgenedata_chr13rev$pos+1)/Annotatedgenedata_chr13rev$length,NA)
Annotatedgenedata_chr14rev$relpos_ORF<- ifelse(Annotatedgenedata_chr14rev$pos<=Annotatedgenedata_chr14rev$start & Annotatedgenedata_chr14rev$pos>Annotatedgenedata_chr14rev$stop, (Annotatedgenedata_chr14rev$start-Annotatedgenedata_chr14rev$pos+1)/Annotatedgenedata_chr14rev$length,NA)
Annotatedgenedata_chr15rev$relpos_ORF<- ifelse(Annotatedgenedata_chr15rev$pos<=Annotatedgenedata_chr15rev$start & Annotatedgenedata_chr15rev$pos>Annotatedgenedata_chr15rev$stop, (Annotatedgenedata_chr15rev$start-Annotatedgenedata_chr15rev$pos+1)/Annotatedgenedata_chr15rev$length,NA)
Annotatedgenedata_chr16rev$relpos_ORF<- ifelse(Annotatedgenedata_chr16rev$pos<=Annotatedgenedata_chr16rev$start & Annotatedgenedata_chr16rev$pos>Annotatedgenedata_chr16rev$stop, (Annotatedgenedata_chr16rev$start-Annotatedgenedata_chr16rev$pos+1)/Annotatedgenedata_chr16rev$length,NA)

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

l<- c(4,13)
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
write.table(Saccer3_MetageneNorm,file="Saccer3_MetageneNorm_tRNA.txt",sep="\t",row.names = F,col.names = T, quote=F)

Saccer3_MetageneNorm<- read.delim("Saccer3_MetageneNorm_tRNA.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#calculating the binned mean+sd on the ORF(tRNA)
Metagene_ORF_mean<-NULL

Metagene_ORF_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_ORF), FUN=mean, na.rm=T)
colnames(Metagene_ORF_mean) <- c("bin","Dbp2_iCLIPnorm")

xrange <- c(0.025 , 0.075 , 0.125 , 0.175 , 0.225 , 0.275 , 0.325 , 0.375 , 0.425 , 0.475 , 0.525 , 0.575 , 0.625 , 0.675 , 0.725 , 0.775 , 0.825 , 0.875 , 0.925 , 0.975)
z <- c(1.025 , 1.075 , 1.125 , 1.175 , 1.225 , 1.275 , 1.325 , 1.375 , 1.425 , 1.475 , 1.525 , 1.575 , 1.625 , 1.675 , 1.725 , 1.775 , 1.825 , 1.875 , 1.925 , 1.975)
q <- c(2.025 , 2.075 , 2.125 , 2.175 , 2.225 , 2.275 , 2.325 , 2.375 , 2.425 , 2.475 , 2.525 , 2.575 , 2.625 , 2.675 , 2.725 , 2.775 , 2.825 , 2.875 , 2.925 , 2.975)

yrange <- c(Metagene_ORF_mean$Dbp2_iCLIP)

# set up the plot
plot(xrange, yrange, type="n", xlim=c(0,1), ylim=c(0,.08), xlab="feature length",
     ylab="Dbp2 average binding density (norm)" )

# add lines

lines(xrange, Metagene_ORF_mean$Dbp2_iCLIPnorm, type="b", lwd=1.5,
      pch=19,col="black")
lines(xrange, Metagene_ORF_meanCD$Dbp2_iCLIP, type="b", lwd=1.5,
      pch=19,col="green")

# add a title and subtitle
title("Metagene profile of Dbp2 binding to mRNAs")

legend("topleft", c("C/D Box", "H/ACA Box"), lty=c(1,1), lwd=c(1,1), col=c("green", "black"), xjust=1.2, bty= "n", text.font=1, pch=19, pt.cex = 1, cex=0.6)
