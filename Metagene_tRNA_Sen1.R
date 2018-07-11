#Make tRNA Metagene plots

#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R")
library(plyr)
#tRNA annotation like bed format
tRNA_annotation<-read.delim("Spliced_tRNA_annotation_good.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)

colnames(tRNA_annotation) <- c("tRNA_gene","chr", "start", "stop","strand")

#split by chromosome number

tRNA_annotation$chr <- as.character(tRNA_annotation$chr)
##use this for spliced
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
##use this for non-spliced
chr1t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrI"),]
chr2t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrII"),]
chr3t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrIII"),]
chr4t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrIV"),]
chr5t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrV"),]
chr6t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrVI"),]
chr7t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrVII"),]
chr8t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrVIII"),]
chr9t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrIX"),]
chr10t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrX"),]
chr11t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXI"),]
chr12t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXII"),]
chr13t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXIII"),]
chr14t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXIV"),]
chr15t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXV"),]
chr16t <-tRNA_annotation[which(tRNA_annotation[,2] =="chrXVI"),]


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

colnames(chr1_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr2_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr3_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr4_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr5_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr6_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr7_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr8_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr9_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr10_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr11_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr12_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr13_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr14_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr15_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr16_tRNAf) <- c("chrom","pos","strand","feature","tRNA_gene")

colnames(chr1_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr2_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr3_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr4_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr5_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr6_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr7_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr8_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr9_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr10_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr11_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr12_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr13_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr14_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr15_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")
colnames(chr16_tRNAr) <- c("chrom","pos","strand","feature","tRNA_gene")

#make genedata table with tRNA
setwd("C:/Users/fated/OneDrive/R")

genedata_chr1fw<-read.delim("New_MasterGeneData_chr1fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("New_MasterGeneData_chr2fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("New_MasterGeneData_chr3fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("New_MasterGeneData_chr4fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("New_MasterGeneData_chr5fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("New_MasterGeneData_chr6fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("New_MasterGeneData_chr7fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("New_MasterGeneData_chr8fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("New_MasterGeneData_chr9fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("New_MasterGeneData_chr10fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("New_MasterGeneData_chr11fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("New_MasterGeneData_chr12fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("New_MasterGeneData_chr13fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("New_MasterGeneData_chr14fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("New_MasterGeneData_chr15fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("New_MasterGeneData_chr16fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1rev<-read.delim("New_MasterGeneData_chr1rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("New_MasterGeneData_chr2rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("New_MasterGeneData_chr3rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("New_MasterGeneData_chr4rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("New_MasterGeneData_chr5rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("New_MasterGeneData_chr6rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("New_MasterGeneData_chr7rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("New_MasterGeneData_chr8rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("New_MasterGeneData_chr9rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("New_MasterGeneData_chr10rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("New_MasterGeneData_chr11rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("New_MasterGeneData_chr12rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("New_MasterGeneData_chr13rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("New_MasterGeneData_chr14rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("New_MasterGeneData_chr15rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("New_MasterGeneData_chr16rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

#combine the genedata with norm icLIP reads with genedata that includes the snRNA locations
genedata_chr1fw_tRNA <- join(genedata_chr1fw,chr1_tRNAf,by="pos")
genedata_chr2fw_tRNA <- join(genedata_chr2fw,chr2_tRNAf,by="pos")
genedata_chr3fw_tRNA <- join(genedata_chr3fw,chr3_tRNAf,by="pos")
genedata_chr4fw_tRNA <- join(genedata_chr4fw,chr4_tRNAf,by="pos")
genedata_chr5fw_tRNA <- join(genedata_chr5fw,chr5_tRNAf,by="pos")
genedata_chr6fw_tRNA <- join(genedata_chr6fw,chr6_tRNAf,by="pos")
genedata_chr7fw_tRNA <- join(genedata_chr7fw,chr7_tRNAf,by="pos")
genedata_chr8fw_tRNA <- join(genedata_chr8fw,chr8_tRNAf,by="pos")
genedata_chr9fw_tRNA <- join(genedata_chr9fw,chr9_tRNAf,by="pos")
genedata_chr10fw_tRNA <- join(genedata_chr10fw,chr10_tRNAf,by="pos")
genedata_chr11fw_tRNA <- join(genedata_chr11fw,chr11_tRNAf,by="pos")
genedata_chr12fw_tRNA <- join(genedata_chr12fw,chr12_tRNAf,by="pos")
genedata_chr13fw_tRNA <- join(genedata_chr13fw,chr13_tRNAf,by="pos")
genedata_chr14fw_tRNA <- join(genedata_chr14fw,chr14_tRNAf,by="pos")
genedata_chr15fw_tRNA <- join(genedata_chr15fw,chr15_tRNAf,by="pos")
genedata_chr16fw_tRNA <- join(genedata_chr16fw,chr16_tRNAf,by="pos")

genedata_chr1rev_tRNA <- join(genedata_chr1rev,chr1_tRNAr,by="pos")
genedata_chr2rev_tRNA <- join(genedata_chr2rev,chr2_tRNAr,by="pos")
genedata_chr3rev_tRNA <- join(genedata_chr3rev,chr3_tRNAr,by="pos")
genedata_chr4rev_tRNA <- join(genedata_chr4rev,chr4_tRNAr,by="pos")
genedata_chr5rev_tRNA <- join(genedata_chr5rev,chr5_tRNAr,by="pos")
genedata_chr6rev_tRNA <- join(genedata_chr6rev,chr6_tRNAr,by="pos")
genedata_chr7rev_tRNA <- join(genedata_chr7rev,chr7_tRNAr,by="pos")
genedata_chr8rev_tRNA <- join(genedata_chr8rev,chr8_tRNAr,by="pos")
genedata_chr9rev_tRNA <- join(genedata_chr9rev,chr9_tRNAr,by="pos")
genedata_chr10rev_tRNA <- join(genedata_chr10rev,chr10_tRNAr,by="pos")
genedata_chr11rev_tRNA <- join(genedata_chr11rev,chr11_tRNAr,by="pos")
genedata_chr12rev_tRNA <- join(genedata_chr12rev,chr12_tRNAr,by="pos")
genedata_chr13rev_tRNA <- join(genedata_chr13rev,chr13_tRNAr,by="pos")
genedata_chr14rev_tRNA <- join(genedata_chr14rev,chr14_tRNAr,by="pos")
genedata_chr15rev_tRNA <- join(genedata_chr15rev,chr15_tRNAr,by="pos")
genedata_chr16rev_tRNA <- join(genedata_chr16rev,chr16_tRNAr,by="pos")

#Find sum for each tRNA for abundance
#first change gene from factors into numbers
z<- c(1,2,3,4,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32)
genedata_chr1fw_tRNA<- genedata_chr1fw_tRNA[,z]
genedata_chr2fw_tRNA<- genedata_chr2fw_tRNA[,z]
genedata_chr3fw_tRNA<- genedata_chr3fw_tRNA[,z]
genedata_chr4fw_tRNA<- genedata_chr4fw_tRNA[,z]
genedata_chr5fw_tRNA<- genedata_chr5fw_tRNA[,z]
genedata_chr6fw_tRNA<- genedata_chr6fw_tRNA[,z]
genedata_chr7fw_tRNA<- genedata_chr7fw_tRNA[,z]
genedata_chr8fw_tRNA<- genedata_chr8fw_tRNA[,z]
genedata_chr9fw_tRNA<- genedata_chr9fw_tRNA[,z]
genedata_chr10fw_tRNA<- genedata_chr10fw_tRNA[,z]
genedata_chr11fw_tRNA<- genedata_chr11fw_tRNA[,z]
genedata_chr12fw_tRNA<- genedata_chr12fw_tRNA[,z]
genedata_chr13fw_tRNA<- genedata_chr13fw_tRNA[,z]
genedata_chr14fw_tRNA<- genedata_chr14fw_tRNA[,z]
genedata_chr15fw_tRNA<- genedata_chr15fw_tRNA[,z]
genedata_chr16fw_tRNA<- genedata_chr16fw_tRNA[,z]

genedata_chr1rev_tRNA<- genedata_chr1rev_tRNA[,z]
genedata_chr2rev_tRNA<- genedata_chr2rev_tRNA[,z]
genedata_chr3rev_tRNA<- genedata_chr3rev_tRNA[,z]
genedata_chr4rev_tRNA<- genedata_chr4rev_tRNA[,z]
genedata_chr5rev_tRNA<- genedata_chr5rev_tRNA[,z]
genedata_chr6rev_tRNA<- genedata_chr6rev_tRNA[,z]
genedata_chr7rev_tRNA<- genedata_chr7rev_tRNA[,z]
genedata_chr8rev_tRNA<- genedata_chr8rev_tRNA[,z]
genedata_chr9rev_tRNA<- genedata_chr9rev_tRNA[,z]
genedata_chr10rev_tRNA<- genedata_chr10rev_tRNA[,z]
genedata_chr11rev_tRNA<- genedata_chr11rev_tRNA[,z]
genedata_chr12rev_tRNA<- genedata_chr12rev_tRNA[,z]
genedata_chr13rev_tRNA<- genedata_chr13rev_tRNA[,z]
genedata_chr14rev_tRNA<- genedata_chr14rev_tRNA[,z]
genedata_chr15rev_tRNA<- genedata_chr15rev_tRNA[,z]
genedata_chr16rev_tRNA<- genedata_chr16rev_tRNA[,z]
#####tRNA Normalization########
z<- c(12,29)
genedata_chr1fw_tRNA_total<- genedata_chr1fw[,z]
genedata_chr2fw_tRNA_total<- genedata_chr2fw[,z]
genedata_chr3fw_tRNA_total<- genedata_chr3fw[,z]
genedata_chr4fw_tRNA_total<- genedata_chr4fw[,z]
genedata_chr5fw_tRNA_total<- genedata_chr5fw[,z]
genedata_chr6fw_tRNA_total<- genedata_chr6fw[,z]
genedata_chr7fw_tRNA_total<- genedata_chr7fw[,z]
genedata_chr8fw_tRNA_total<- genedata_chr8fw[,z]
genedata_chr9fw_tRNA_total<- genedata_chr9fw[,z]
genedata_chr10fw_tRNA_total<- genedata_chr10fw[,z]
genedata_chr11fw_tRNA_total<- genedata_chr11fw[,z]
genedata_chr12fw_tRNA_total<- genedata_chr12fw[,z]
genedata_chr13fw_tRNA_total<- genedata_chr13fw[,z]
genedata_chr14fw_tRNA_total<- genedata_chr14fw[,z]
genedata_chr15fw_tRNA_total<- genedata_chr15fw[,z]
genedata_chr16fw_tRNA_total<- genedata_chr16fw[,z]

genedata_chr1rev_tRNA_total<- genedata_chr1rev[,z]
genedata_chr2rev_tRNA_total<- genedata_chr2rev[,z]
genedata_chr3rev_tRNA_total<- genedata_chr3rev[,z]
genedata_chr4rev_tRNA_total<- genedata_chr4rev[,z]
genedata_chr5rev_tRNA_total<- genedata_chr5rev[,z]
genedata_chr6rev_tRNA_total<- genedata_chr6rev[,z]
genedata_chr7rev_tRNA_total<- genedata_chr7rev[,z]
genedata_chr8rev_tRNA_total<- genedata_chr8rev[,z]
genedata_chr9rev_tRNA_total<- genedata_chr9rev[,z]
genedata_chr10rev_tRNA_total<- genedata_chr10rev[,z]
genedata_chr11rev_tRNA_total<- genedata_chr11rev[,z]
genedata_chr12rev_tRNA_total<- genedata_chr12rev[,z]
genedata_chr13rev_tRNA_total<- genedata_chr13rev[,z]
genedata_chr14rev_tRNA_total<- genedata_chr14rev[,z]
genedata_chr15rev_tRNA_total<- genedata_chr15rev[,z]
genedata_chr16rev_tRNA_total<- genedata_chr16rev[,z]


genedata_chr1fw_tRNA$Sen1_clip<- as.numeric(genedata_chr1fw_tRNA$Sen1_clip)
genedata_chr2fw_tRNA$Sen1_clip<- as.numeric(genedata_chr2fw_tRNA$Sen1_clip)
genedata_chr3fw_tRNA$Sen1_clip<- as.numeric(genedata_chr3fw_tRNA$Sen1_clip)
genedata_chr4fw_tRNA$Sen1_clip<- as.numeric(genedata_chr4fw_tRNA$Sen1_clip)
genedata_chr5fw_tRNA$Sen1_clip<- as.numeric(genedata_chr5fw_tRNA$Sen1_clip)
genedata_chr6fw_tRNA$Sen1_clip<- as.numeric(genedata_chr6fw_tRNA$Sen1_clip)
genedata_chr7fw_tRNA$Sen1_clip<- as.numeric(genedata_chr7fw_tRNA$Sen1_clip)
genedata_chr8fw_tRNA$Sen1_clip<- as.numeric(genedata_chr8fw_tRNA$Sen1_clip)
genedata_chr9fw_tRNA$Sen1_clip<- as.numeric(genedata_chr9fw_tRNA$Sen1_clip)
genedata_chr10fw_tRNA$Sen1_clip<- as.numeric(genedata_chr10fw_tRNA$Sen1_clip)
genedata_chr11fw_tRNA$Sen1_clip<- as.numeric(genedata_chr11fw_tRNA$Sen1_clip)
genedata_chr12fw_tRNA$Sen1_clip<- as.numeric(genedata_chr12fw_tRNA$Sen1_clip)
genedata_chr13fw_tRNA$Sen1_clip<- as.numeric(genedata_chr13fw_tRNA$Sen1_clip)
genedata_chr14fw_tRNA$Sen1_clip<- as.numeric(genedata_chr14fw_tRNA$Sen1_clip)
genedata_chr15fw_tRNA$Sen1_clip<- as.numeric(genedata_chr15fw_tRNA$Sen1_clip)
genedata_chr16fw_tRNA$Sen1_clip<- as.numeric(genedata_chr16fw_tRNA$Sen1_clip)

genedata_chr1rev_tRNA$Sen1_clip<- as.numeric(genedata_chr1rev_tRNA$Sen1_clip)
genedata_chr2rev_tRNA$Sen1_clip<- as.numeric(genedata_chr2rev_tRNA$Sen1_clip)
genedata_chr3rev_tRNA$Sen1_clip<- as.numeric(genedata_chr3rev_tRNA$Sen1_clip)
genedata_chr4rev_tRNA$Sen1_clip<- as.numeric(genedata_chr4rev_tRNA$Sen1_clip)
genedata_chr5rev_tRNA$Sen1_clip<- as.numeric(genedata_chr5rev_tRNA$Sen1_clip)
genedata_chr6rev_tRNA$Sen1_clip<- as.numeric(genedata_chr6rev_tRNA$Sen1_clip)
genedata_chr7rev_tRNA$Sen1_clip<- as.numeric(genedata_chr7rev_tRNA$Sen1_clip)
genedata_chr8rev_tRNA$Sen1_clip<- as.numeric(genedata_chr8rev_tRNA$Sen1_clip)
genedata_chr9rev_tRNA$Sen1_clip<- as.numeric(genedata_chr9rev_tRNA$Sen1_clip)
genedata_chr10rev_tRNA$Sen1_clip<- as.numeric(genedata_chr10rev_tRNA$Sen1_clip)
genedata_chr11rev_tRNA$Sen1_clip<- as.numeric(genedata_chr11rev_tRNA$Sen1_clip)
genedata_chr12rev_tRNA$Sen1_clip<- as.numeric(genedata_chr12rev_tRNA$Sen1_clip)
genedata_chr13rev_tRNA$Sen1_clip<- as.numeric(genedata_chr13rev_tRNA$Sen1_clip)
genedata_chr14rev_tRNA$Sen1_clip<- as.numeric(genedata_chr14rev_tRNA$Sen1_clip)
genedata_chr15rev_tRNA$Sen1_clip<- as.numeric(genedata_chr15rev_tRNA$Sen1_clip)
genedata_chr16rev_tRNA$Sen1_clip<- as.numeric(genedata_chr16rev_tRNA$Sen1_clip)

#calculating the sum for each gene
genedata_chr1rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr1rev_tRNA_total, FUN=sum)
genedata_chr2rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr2rev_tRNA_total, FUN=sum)
genedata_chr3rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr3rev_tRNA_total, FUN=sum)
genedata_chr4rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr4rev_tRNA_total, FUN=sum)
genedata_chr5rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr5rev_tRNA_total, FUN=sum)
genedata_chr6rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr6rev_tRNA_total, FUN=sum)
genedata_chr7rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr7rev_tRNA_total, FUN=sum)
genedata_chr8rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr8rev_tRNA_total, FUN=sum)
genedata_chr9rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr9rev_tRNA_total, FUN=sum)
genedata_chr10rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr10rev_tRNA_total, FUN=sum)
genedata_chr11rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr11rev_tRNA_total, FUN=sum)
genedata_chr12rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr12rev_tRNA_total, FUN=sum)
genedata_chr13rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr13rev_tRNA_total, FUN=sum)
genedata_chr14rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr14rev_tRNA_total, FUN=sum)
genedata_chr15rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr15rev_tRNA_total, FUN=sum)
genedata_chr16rev_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr16rev_tRNA_total, FUN=sum)

genedata_chr1fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr1fw_tRNA_total, FUN=sum)
genedata_chr2fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr2fw_tRNA_total, FUN=sum)
genedata_chr3fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr3fw_tRNA_total, FUN=sum)
genedata_chr4fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr4fw_tRNA_total, FUN=sum)
genedata_chr5fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr5fw_tRNA_total, FUN=sum)
genedata_chr6fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr6fw_tRNA_total, FUN=sum)
genedata_chr7fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr7fw_tRNA_total, FUN=sum)
genedata_chr8fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr8fw_tRNA_total, FUN=sum)
genedata_chr9fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr9fw_tRNA_total, FUN=sum)
genedata_chr10fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr10fw_tRNA_total, FUN=sum)
genedata_chr11fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr11fw_tRNA_total, FUN=sum)
genedata_chr12fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr12fw_tRNA_total, FUN=sum)
genedata_chr13fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr13fw_tRNA_total, FUN=sum)
genedata_chr14fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr14fw_tRNA_total, FUN=sum)
genedata_chr15fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr15fw_tRNA_total, FUN=sum)
genedata_chr16fw_tRNA_total<-aggregate(.~tRNA_gene, data=genedata_chr16fw_tRNA_total, FUN=sum)

colnames(genedata_chr1fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr2fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr3fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr4fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr5fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr6fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr7fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr8fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr9fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr10fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr11fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr12fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr13fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr14fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr15fw_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr16fw_tRNA_total)[2] <- "Sen1_tRNA_total"

colnames(genedata_chr1rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr2rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr3rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr4rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr5rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr6rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr7rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr8rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr9rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr10rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr11rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr12rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr13rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr14rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr15rev_tRNA_total)[2] <- "Sen1_tRNA_total"
colnames(genedata_chr16rev_tRNA_total)[2] <- "Sen1_tRNA_total"

genedata_chr1fw <- join(genedata_chr1fw,genedata_chr1fw_tRNA_total, by = "tRNA_gene")
genedata_chr2fw <- join(genedata_chr2fw,genedata_chr2fw_tRNA_total, by = "tRNA_gene")
genedata_chr3fw <- join(genedata_chr3fw,genedata_chr3fw_tRNA_total, by = "tRNA_gene")
genedata_chr4fw <- join(genedata_chr4fw,genedata_chr4fw_tRNA_total, by = "tRNA_gene")
genedata_chr5fw <- join(genedata_chr5fw,genedata_chr5fw_tRNA_total, by = "tRNA_gene")
genedata_chr6fw <- join(genedata_chr6fw,genedata_chr6fw_tRNA_total, by = "tRNA_gene")
genedata_chr7fw <- join(genedata_chr7fw,genedata_chr7fw_tRNA_total, by = "tRNA_gene")
genedata_chr8fw <- join(genedata_chr8fw,genedata_chr8fw_tRNA_total, by = "tRNA_gene")
genedata_chr9fw <- join(genedata_chr9fw,genedata_chr9fw_tRNA_total, by = "tRNA_gene")
genedata_chr10fw <- join(genedata_chr10fw,genedata_chr10fw_tRNA_total, by = "tRNA_gene")
genedata_chr11fw <- join(genedata_chr11fw,genedata_chr11fw_tRNA_total, by = "tRNA_gene")
genedata_chr12fw <- join(genedata_chr12fw,genedata_chr12fw_tRNA_total, by = "tRNA_gene")
genedata_chr13fw <- join(genedata_chr13fw,genedata_chr13fw_tRNA_total, by = "tRNA_gene")
genedata_chr14fw <- join(genedata_chr14fw,genedata_chr14fw_tRNA_total, by = "tRNA_gene")
genedata_chr15fw <- join(genedata_chr15fw,genedata_chr15fw_tRNA_total, by = "tRNA_gene")
genedata_chr16fw <- join(genedata_chr16fw,genedata_chr16fw_tRNA_total, by = "tRNA_gene")

genedata_chr1rev <- join(genedata_chr1rev,genedata_chr1rev_tRNA_total, by = "tRNA_gene")
genedata_chr2rev <- join(genedata_chr2rev,genedata_chr2rev_tRNA_total, by = "tRNA_gene")
genedata_chr3rev <- join(genedata_chr3rev,genedata_chr3rev_tRNA_total, by = "tRNA_gene")
genedata_chr4rev <- join(genedata_chr4rev,genedata_chr4rev_tRNA_total, by = "tRNA_gene")
genedata_chr5rev <- join(genedata_chr5rev,genedata_chr5rev_tRNA_total, by = "tRNA_gene")
genedata_chr6rev <- join(genedata_chr6rev,genedata_chr6rev_tRNA_total, by = "tRNA_gene")
genedata_chr7rev <- join(genedata_chr7rev,genedata_chr7rev_tRNA_total, by = "tRNA_gene")
genedata_chr8rev <- join(genedata_chr8rev,genedata_chr8rev_tRNA_total, by = "tRNA_gene")
genedata_chr9rev <- join(genedata_chr9rev,genedata_chr9rev_tRNA_total, by = "tRNA_gene")
genedata_chr10rev <- join(genedata_chr10rev,genedata_chr10rev_tRNA_total, by = "tRNA_gene")
genedata_chr11rev <- join(genedata_chr11rev,genedata_chr11rev_tRNA_total, by = "tRNA_gene")
genedata_chr12rev <- join(genedata_chr12rev,genedata_chr12rev_tRNA_total, by = "tRNA_gene")
genedata_chr13rev <- join(genedata_chr13rev,genedata_chr13rev_tRNA_total, by = "tRNA_gene")
genedata_chr14rev <- join(genedata_chr14rev,genedata_chr14rev_tRNA_total, by = "tRNA_gene")
genedata_chr15rev <- join(genedata_chr15rev,genedata_chr15rev_tRNA_total, by = "tRNA_gene")
genedata_chr16rev <- join(genedata_chr16rev,genedata_chr16rev_tRNA_total, by = "tRNA_gene")

genedata_chr1fw$Sen1_tRNa_Norm <- genedata_chr1fw$Sen1_clip/genedata_chr1fw$Sen1_tRNA_total
genedata_chr2fw$Sen1_tRNa_Norm <- genedata_chr2fw$Sen1_clip/genedata_chr2fw$Sen1_tRNA_total
genedata_chr3fw$Sen1_tRNa_Norm <- genedata_chr3fw$Sen1_clip/genedata_chr3fw$Sen1_tRNA_total
genedata_chr4fw$Sen1_tRNa_Norm <- genedata_chr4fw$Sen1_clip/genedata_chr4fw$Sen1_tRNA_total
genedata_chr5fw$Sen1_tRNa_Norm <- genedata_chr5fw$Sen1_clip/genedata_chr5fw$Sen1_tRNA_total
genedata_chr6fw$Sen1_tRNa_Norm <- genedata_chr6fw$Sen1_clip/genedata_chr6fw$Sen1_tRNA_total
genedata_chr7fw$Sen1_tRNa_Norm <- genedata_chr7fw$Sen1_clip/genedata_chr7fw$Sen1_tRNA_total
genedata_chr8fw$Sen1_tRNa_Norm <- genedata_chr8fw$Sen1_clip/genedata_chr8fw$Sen1_tRNA_total
genedata_chr9fw$Sen1_tRNa_Norm <- genedata_chr9fw$Sen1_clip/genedata_chr9fw$Sen1_tRNA_total
genedata_chr10fw$Sen1_tRNa_Norm <- genedata_chr10fw$Sen1_clip/genedata_chr10fw$Sen1_tRNA_total
genedata_chr11fw$Sen1_tRNa_Norm <- genedata_chr11fw$Sen1_clip/genedata_chr11fw$Sen1_tRNA_total
genedata_chr12fw$Sen1_tRNa_Norm <- genedata_chr12fw$Sen1_clip/genedata_chr12fw$Sen1_tRNA_total
genedata_chr13fw$Sen1_tRNa_Norm <- genedata_chr13fw$Sen1_clip/genedata_chr13fw$Sen1_tRNA_total
genedata_chr14fw$Sen1_tRNa_Norm <- genedata_chr14fw$Sen1_clip/genedata_chr14fw$Sen1_tRNA_total
genedata_chr15fw$Sen1_tRNa_Norm <- genedata_chr15fw$Sen1_clip/genedata_chr15fw$Sen1_tRNA_total
genedata_chr16fw$Sen1_tRNa_Norm <- genedata_chr16fw$Sen1_clip/genedata_chr16fw$Sen1_tRNA_total

genedata_chr1rev$Sen1_tRNa_Norm <- genedata_chr1rev$Sen1_clip/genedata_chr1rev$Sen1_tRNA_total
genedata_chr2rev$Sen1_tRNa_Norm <- genedata_chr2rev$Sen1_clip/genedata_chr2rev$Sen1_tRNA_total
genedata_chr3rev$Sen1_tRNa_Norm <- genedata_chr3rev$Sen1_clip/genedata_chr3rev$Sen1_tRNA_total
genedata_chr4rev$Sen1_tRNa_Norm <- genedata_chr4rev$Sen1_clip/genedata_chr4rev$Sen1_tRNA_total
genedata_chr5rev$Sen1_tRNa_Norm <- genedata_chr5rev$Sen1_clip/genedata_chr5rev$Sen1_tRNA_total
genedata_chr6rev$Sen1_tRNa_Norm <- genedata_chr6rev$Sen1_clip/genedata_chr6rev$Sen1_tRNA_total
genedata_chr7rev$Sen1_tRNa_Norm <- genedata_chr7rev$Sen1_clip/genedata_chr7rev$Sen1_tRNA_total
genedata_chr8rev$Sen1_tRNa_Norm <- genedata_chr8rev$Sen1_clip/genedata_chr8rev$Sen1_tRNA_total
genedata_chr9rev$Sen1_tRNa_Norm <- genedata_chr9rev$Sen1_clip/genedata_chr9rev$Sen1_tRNA_total
genedata_chr10rev$Sen1_tRNa_Norm <- genedata_chr10rev$Sen1_clip/genedata_chr10rev$Sen1_tRNA_total
genedata_chr11rev$Sen1_tRNa_Norm <- genedata_chr11rev$Sen1_clip/genedata_chr11rev$Sen1_tRNA_total
genedata_chr12rev$Sen1_tRNa_Norm <- genedata_chr12rev$Sen1_clip/genedata_chr12rev$Sen1_tRNA_total
genedata_chr13rev$Sen1_tRNa_Norm <- genedata_chr13rev$Sen1_clip/genedata_chr13rev$Sen1_tRNA_total
genedata_chr14rev$Sen1_tRNa_Norm <- genedata_chr14rev$Sen1_clip/genedata_chr14rev$Sen1_tRNA_total
genedata_chr15rev$Sen1_tRNa_Norm <- genedata_chr15rev$Sen1_clip/genedata_chr15rev$Sen1_tRNA_total
genedata_chr16rev$Sen1_tRNa_Norm <- genedata_chr16rev$Sen1_clip/genedata_chr16rev$Sen1_tRNA_total

genedata_chr1fw$D2avg_tRNA_Norm <- (genedata_chr1fw$D2_tRNa_Norm + genedata_chr1fw$D2rep_tRNa_Norm)/2
genedata_chr2fw$D2avg_tRNA_Norm <- (genedata_chr2fw$D2_tRNa_Norm + genedata_chr2fw$D2rep_tRNa_Norm)/2
genedata_chr3fw$D2avg_tRNA_Norm <- (genedata_chr3fw$D2_tRNa_Norm + genedata_chr3fw$D2rep_tRNa_Norm)/2
genedata_chr4fw$D2avg_tRNA_Norm <- (genedata_chr4fw$D2_tRNa_Norm + genedata_chr4fw$D2rep_tRNa_Norm)/2
genedata_chr5fw$D2avg_tRNA_Norm <- (genedata_chr5fw$D2_tRNa_Norm + genedata_chr5fw$D2rep_tRNa_Norm)/2
genedata_chr6fw$D2avg_tRNA_Norm <- (genedata_chr6fw$D2_tRNa_Norm + genedata_chr6fw$D2rep_tRNa_Norm)/2
genedata_chr7fw$D2avg_tRNA_Norm <- (genedata_chr7fw$D2_tRNa_Norm + genedata_chr7fw$D2rep_tRNa_Norm)/2
genedata_chr8fw$D2avg_tRNA_Norm <- (genedata_chr8fw$D2_tRNa_Norm + genedata_chr8fw$D2rep_tRNa_Norm)/2
genedata_chr9fw$D2avg_tRNA_Norm <- (genedata_chr9fw$D2_tRNa_Norm + genedata_chr9fw$D2rep_tRNa_Norm)/2
genedata_chr10fw$D2avg_tRNA_Norm <- (genedata_chr10fw$D2_tRNa_Norm + genedata_chr10fw$D2rep_tRNa_Norm)/2
genedata_chr11fw$D2avg_tRNA_Norm <- (genedata_chr11fw$D2_tRNa_Norm + genedata_chr11fw$D2rep_tRNa_Norm)/2
genedata_chr12fw$D2avg_tRNA_Norm <- (genedata_chr12fw$D2_tRNa_Norm + genedata_chr12fw$D2rep_tRNa_Norm)/2
genedata_chr13fw$D2avg_tRNA_Norm <- (genedata_chr13fw$D2_tRNa_Norm + genedata_chr13fw$D2rep_tRNa_Norm)/2
genedata_chr14fw$D2avg_tRNA_Norm <- (genedata_chr14fw$D2_tRNa_Norm + genedata_chr14fw$D2rep_tRNa_Norm)/2
genedata_chr15fw$D2avg_tRNA_Norm <- (genedata_chr15fw$D2_tRNa_Norm + genedata_chr15fw$D2rep_tRNa_Norm)/2
genedata_chr16fw$D2avg_tRNA_Norm <- (genedata_chr16fw$D2_tRNa_Norm + genedata_chr16fw$D2rep_tRNa_Norm)/2

genedata_chr1rev$D2avg_tRNA_Norm <- (genedata_chr1rev$D2_tRNa_Norm + genedata_chr1rev$D2rep_tRNa_Norm)/2
genedata_chr2rev$D2avg_tRNA_Norm <- (genedata_chr2rev$D2_tRNa_Norm + genedata_chr2rev$D2rep_tRNa_Norm)/2
genedata_chr3rev$D2avg_tRNA_Norm <- (genedata_chr3rev$D2_tRNa_Norm + genedata_chr3rev$D2rep_tRNa_Norm)/2
genedata_chr4rev$D2avg_tRNA_Norm <- (genedata_chr4rev$D2_tRNa_Norm + genedata_chr4rev$D2rep_tRNa_Norm)/2
genedata_chr5rev$D2avg_tRNA_Norm <- (genedata_chr5rev$D2_tRNa_Norm + genedata_chr5rev$D2rep_tRNa_Norm)/2
genedata_chr6rev$D2avg_tRNA_Norm <- (genedata_chr6rev$D2_tRNa_Norm + genedata_chr6rev$D2rep_tRNa_Norm)/2
genedata_chr7rev$D2avg_tRNA_Norm <- (genedata_chr7rev$D2_tRNa_Norm + genedata_chr7rev$D2rep_tRNa_Norm)/2
genedata_chr8rev$D2avg_tRNA_Norm <- (genedata_chr8rev$D2_tRNa_Norm + genedata_chr8rev$D2rep_tRNa_Norm)/2
genedata_chr9rev$D2avg_tRNA_Norm <- (genedata_chr9rev$D2_tRNa_Norm + genedata_chr9rev$D2rep_tRNa_Norm)/2
genedata_chr10rev$D2avg_tRNA_Norm <- (genedata_chr10rev$D2_tRNa_Norm + genedata_chr10rev$D2rep_tRNa_Norm)/2
genedata_chr11rev$D2avg_tRNA_Norm <- (genedata_chr11rev$D2_tRNa_Norm + genedata_chr11rev$D2rep_tRNa_Norm)/2
genedata_chr12rev$D2avg_tRNA_Norm <- (genedata_chr12rev$D2_tRNa_Norm + genedata_chr12rev$D2rep_tRNa_Norm)/2
genedata_chr13rev$D2avg_tRNA_Norm <- (genedata_chr13rev$D2_tRNa_Norm + genedata_chr13rev$D2rep_tRNa_Norm)/2
genedata_chr14rev$D2avg_tRNA_Norm <- (genedata_chr14rev$D2_tRNa_Norm + genedata_chr14rev$D2rep_tRNa_Norm)/2
genedata_chr15rev$D2avg_tRNA_Norm <- (genedata_chr15rev$D2_tRNa_Norm + genedata_chr15rev$D2rep_tRNa_Norm)/2
genedata_chr16rev$D2avg_tRNA_Norm <- (genedata_chr16rev$D2_tRNa_Norm + genedata_chr16rev$D2rep_tRNa_Norm)/2


genedata_chr1fw<-genedata_chr1fw[which(genedata_chr1fw$tRNA_gene!="unassigned"),]
genedata_chr2fw<-genedata_chr2fw[which(genedata_chr2fw$tRNA_gene!="unassigned"),]
genedata_chr3fw<-genedata_chr3fw[which(genedata_chr3fw$tRNA_gene!="unassigned"),]
genedata_chr4fw<-genedata_chr4fw[which(genedata_chr4fw$tRNA_gene!="unassigned"),]
genedata_chr5fw<-genedata_chr5fw[which(genedata_chr5fw$tRNA_gene!="unassigned"),]
genedata_chr6fw<-genedata_chr6fw[which(genedata_chr6fw$tRNA_gene!="unassigned"),]
genedata_chr7fw<-genedata_chr7fw[which(genedata_chr7fw$tRNA_gene!="unassigned"),]
genedata_chr8fw<-genedata_chr8fw[which(genedata_chr8fw$tRNA_gene!="unassigned"),]
genedata_chr9fw<-genedata_chr9fw[which(genedata_chr9fw$tRNA_gene!="unassigned"),]
genedata_chr10fw<-genedata_chr10fw[which(genedata_chr10fw$tRNA_gene!="unassigned"),]
genedata_chr11fw<-genedata_chr11fw[which(genedata_chr11fw$tRNA_gene!="unassigned"),]
genedata_chr12fw<-genedata_chr12fw[which(genedata_chr12fw$tRNA_gene!="unassigned"),]
genedata_chr13fw<-genedata_chr13fw[which(genedata_chr13fw$tRNA_gene!="unassigned"),]
genedata_chr14fw<-genedata_chr14fw[which(genedata_chr14fw$tRNA_gene!="unassigned"),]
genedata_chr15fw<-genedata_chr15fw[which(genedata_chr15fw$tRNA_gene!="unassigned"),]
genedata_chr16fw<-genedata_chr16fw[which(genedata_chr16fw$tRNA_gene!="unassigned"),]

genedata_chr1rev<-genedata_chr1rev[which(genedata_chr1rev$tRNA_gene!="unassigned"),]
genedata_chr2rev<-genedata_chr2rev[which(genedata_chr2rev$tRNA_gene!="unassigned"),]
genedata_chr3rev<-genedata_chr3rev[which(genedata_chr3rev$tRNA_gene!="unassigned"),]
genedata_chr4rev<-genedata_chr4rev[which(genedata_chr4rev$tRNA_gene!="unassigned"),]
genedata_chr5rev<-genedata_chr5rev[which(genedata_chr5rev$tRNA_gene!="unassigned"),]
genedata_chr6rev<-genedata_chr6rev[which(genedata_chr6rev$tRNA_gene!="unassigned"),]
genedata_chr7rev<-genedata_chr7rev[which(genedata_chr7rev$tRNA_gene!="unassigned"),]
genedata_chr8rev<-genedata_chr8rev[which(genedata_chr8rev$tRNA_gene!="unassigned"),]
genedata_chr9rev<-genedata_chr9rev[which(genedata_chr9rev$tRNA_gene!="unassigned"),]
genedata_chr10rev<-genedata_chr10rev[which(genedata_chr10rev$tRNA_gene!="unassigned"),]
genedata_chr11rev<-genedata_chr11rev[which(genedata_chr11rev$tRNA_gene!="unassigned"),]
genedata_chr12rev<-genedata_chr12rev[which(genedata_chr12rev$tRNA_gene!="unassigned"),]
genedata_chr13rev<-genedata_chr13rev[which(genedata_chr13rev$tRNA_gene!="unassigned"),]
genedata_chr14rev<-genedata_chr14rev[which(genedata_chr14rev$tRNA_gene!="unassigned"),]
genedata_chr15rev<-genedata_chr15rev[which(genedata_chr15rev$tRNA_gene!="unassigned"),]
genedata_chr16rev<-genedata_chr16rev[which(genedata_chr16rev$tRNA_gene!="unassigned"),]
###tRNA Normalization End#####

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
e<-c(1:3,15:19)
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
Annotatedgenedata_chr1fw <- SMgenedata_chr1fw_tRNA[ which(SMgenedata_chr1fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr2fw <- SMgenedata_chr2fw_tRNA[ which(SMgenedata_chr2fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr3fw <- SMgenedata_chr3fw_tRNA[ which(SMgenedata_chr3fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr4fw <- SMgenedata_chr4fw_tRNA[ which(SMgenedata_chr4fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr5fw <- SMgenedata_chr5fw_tRNA[ which(SMgenedata_chr5fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr6fw <- SMgenedata_chr6fw_tRNA[ which(SMgenedata_chr6fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr7fw <- SMgenedata_chr7fw_tRNA[ which(SMgenedata_chr7fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr8fw <- SMgenedata_chr8fw_tRNA[ which(SMgenedata_chr8fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr9fw <- SMgenedata_chr9fw_tRNA[ which(SMgenedata_chr9fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr10fw <- SMgenedata_chr10fw_tRNA[ which(SMgenedata_chr10fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr11fw <- SMgenedata_chr11fw_tRNA[ which(SMgenedata_chr11fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr12fw <- SMgenedata_chr12fw_tRNA[ which(SMgenedata_chr12fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr13fw <- SMgenedata_chr13fw_tRNA[ which(SMgenedata_chr13fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr14fw <- SMgenedata_chr14fw_tRNA[ which(SMgenedata_chr14fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr15fw <- SMgenedata_chr15fw_tRNA[ which(SMgenedata_chr15fw_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr16fw <- SMgenedata_chr16fw_tRNA[ which(SMgenedata_chr16fw_tRNA$feature!="unassigned"),]

Annotatedgenedata_chr1rev <- SMgenedata_chr1rev_tRNA[ which(SMgenedata_chr1rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr2rev <- SMgenedata_chr2rev_tRNA[ which(SMgenedata_chr2rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr3rev <- SMgenedata_chr3rev_tRNA[ which(SMgenedata_chr3rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr4rev <- SMgenedata_chr4rev_tRNA[ which(SMgenedata_chr4rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr5rev <- SMgenedata_chr5rev_tRNA[ which(SMgenedata_chr5rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr6rev <- SMgenedata_chr6rev_tRNA[ which(SMgenedata_chr6rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr7rev <- SMgenedata_chr7rev_tRNA[ which(SMgenedata_chr7rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr8rev <- SMgenedata_chr8rev_tRNA[ which(SMgenedata_chr8rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr9rev <- SMgenedata_chr9rev_tRNA[ which(SMgenedata_chr9rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr10rev <- SMgenedata_chr10rev_tRNA[ which(SMgenedata_chr10rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr11rev <- SMgenedata_chr11rev_tRNA[ which(SMgenedata_chr11rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr12rev <- SMgenedata_chr12rev_tRNA[ which(SMgenedata_chr12rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr13rev <- SMgenedata_chr13rev_tRNA[ which(SMgenedata_chr13rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr14rev <- SMgenedata_chr14rev_tRNA[ which(SMgenedata_chr14rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr15rev <- SMgenedata_chr15rev_tRNA[ which(SMgenedata_chr15rev_tRNA$feature!="unassigned"),]
Annotatedgenedata_chr16rev <- SMgenedata_chr16rev_tRNA[ which(SMgenedata_chr16rev_tRNA$feature!="unassigned"),]

#join up
genedata_chr1fw <- join(genedata_chr1fw,chr1fwt, by = "tRNA_gene")
genedata_chr2fw <- join(genedata_chr2fw,chr2fwt, by = "tRNA_gene")
genedata_chr3fw <- join(genedata_chr3fw,chr3fwt, by = "tRNA_gene")
genedata_chr4fw <- join(genedata_chr4fw,chr4fwt, by = "tRNA_gene")
genedata_chr5fw <- join(genedata_chr5fw,chr5fwt, by = "tRNA_gene")
genedata_chr6fw <- join(genedata_chr6fw,chr6fwt, by = "tRNA_gene")
genedata_chr7fw <- join(genedata_chr7fw,chr7fwt, by = "tRNA_gene")
genedata_chr8fw <- join(genedata_chr8fw,chr8fwt, by = "tRNA_gene")
genedata_chr9fw <- join(genedata_chr9fw,chr9fwt, by = "tRNA_gene")
genedata_chr10fw <- join(genedata_chr10fw,chr10fwt, by = "tRNA_gene")
genedata_chr11fw <- join(genedata_chr11fw,chr11fwt, by = "tRNA_gene")
genedata_chr12fw <- join(genedata_chr12fw,chr12fwt, by = "tRNA_gene")
genedata_chr13fw <- join(genedata_chr13fw,chr13fwt, by = "tRNA_gene")
genedata_chr14fw <- join(genedata_chr14fw,chr14fwt, by = "tRNA_gene")
genedata_chr15fw <- join(genedata_chr15fw,chr15fwt, by = "tRNA_gene")
genedata_chr16fw <- join(genedata_chr16fw,chr16fwt, by = "tRNA_gene")

genedata_chr1rev <- join(genedata_chr1rev,chr1revt, by = "tRNA_gene")
genedata_chr2rev <- join(genedata_chr2rev,chr2revt, by = "tRNA_gene")
genedata_chr3rev <- join(genedata_chr3rev,chr3revt, by = "tRNA_gene")
genedata_chr4rev <- join(genedata_chr4rev,chr4revt, by = "tRNA_gene")
genedata_chr5rev <- join(genedata_chr5rev,chr5revt, by = "tRNA_gene")
genedata_chr6rev <- join(genedata_chr6rev,chr6revt, by = "tRNA_gene")
genedata_chr7rev <- join(genedata_chr7rev,chr7revt, by = "tRNA_gene")
genedata_chr8rev <- join(genedata_chr8rev,chr8revt, by = "tRNA_gene")
genedata_chr9rev <- join(genedata_chr9rev,chr9revt, by = "tRNA_gene")
genedata_chr10rev <- join(genedata_chr10rev,chr10revt, by = "tRNA_gene")
genedata_chr11rev <- join(genedata_chr11rev,chr11revt, by = "tRNA_gene")
genedata_chr12rev <- join(genedata_chr12rev,chr12revt, by = "tRNA_gene")
genedata_chr13rev <- join(genedata_chr13rev,chr13revt, by = "tRNA_gene")
genedata_chr14rev <- join(genedata_chr14rev,chr14revt, by = "tRNA_gene")
genedata_chr15rev <- join(genedata_chr15rev,chr15revt, by = "tRNA_gene")
genedata_chr16rev <- join(genedata_chr16rev,chr16revt, by = "tRNA_gene")

genedata_chr1fw <- genedata_chr1fw[ which(genedata_chr1fw$tRNA_gene!="unassigned"),]
genedata_chr2fw <- genedata_chr2fw[ which(genedata_chr2fw$tRNA_gene!="unassigned"),]
genedata_chr3fw <- genedata_chr3fw[ which(genedata_chr3fw$tRNA_gene!="unassigned"),]
genedata_chr4fw <- genedata_chr4fw[ which(genedata_chr4fw$tRNA_gene!="unassigned"),]
genedata_chr5fw <- genedata_chr5fw[ which(genedata_chr5fw$tRNA_gene!="unassigned"),]
genedata_chr6fw <- genedata_chr6fw[ which(genedata_chr6fw$tRNA_gene!="unassigned"),]
genedata_chr7fw <- genedata_chr7fw[ which(genedata_chr7fw$tRNA_gene!="unassigned"),]
genedata_chr8fw <- genedata_chr8fw[ which(genedata_chr8fw$tRNA_gene!="unassigned"),]
genedata_chr9fw <- genedata_chr9fw[ which(genedata_chr9fw$tRNA_gene!="unassigned"),]
genedata_chr10fw <- genedata_chr10fw[ which(genedata_chr10fw$tRNA_gene!="unassigned"),]
genedata_chr11fw <- genedata_chr11fw[ which(genedata_chr11fw$tRNA_gene!="unassigned"),]
genedata_chr12fw <- genedata_chr12fw[ which(genedata_chr12fw$tRNA_gene!="unassigned"),]
genedata_chr13fw <- genedata_chr13fw[ which(genedata_chr13fw$tRNA_gene!="unassigned"),]
genedata_chr14fw <- genedata_chr14fw[ which(genedata_chr14fw$tRNA_gene!="unassigned"),]
genedata_chr15fw <- genedata_chr15fw[ which(genedata_chr15fw$tRNA_gene!="unassigned"),]
genedata_chr16fw <- genedata_chr16fw[ which(genedata_chr16fw$tRNA_gene!="unassigned"),]

genedata_chr1rev <- genedata_chr1rev[ which(genedata_chr1rev$tRNA_gene!="unassigned"),]
genedata_chr2rev <- genedata_chr2rev[ which(genedata_chr2rev$tRNA_gene!="unassigned"),]
genedata_chr3rev <- genedata_chr3rev[ which(genedata_chr3rev$tRNA_gene!="unassigned"),]
genedata_chr4rev <- genedata_chr4rev[ which(genedata_chr4rev$tRNA_gene!="unassigned"),]
genedata_chr5rev <- genedata_chr5rev[ which(genedata_chr5rev$tRNA_gene!="unassigned"),]
genedata_chr6rev <- genedata_chr6rev[ which(genedata_chr6rev$tRNA_gene!="unassigned"),]
genedata_chr7rev <- genedata_chr7rev[ which(genedata_chr7rev$tRNA_gene!="unassigned"),]
genedata_chr8rev <- genedata_chr8rev[ which(genedata_chr8rev$tRNA_gene!="unassigned"),]
genedata_chr9rev <- genedata_chr9rev[ which(genedata_chr9rev$tRNA_gene!="unassigned"),]
genedata_chr10rev <- genedata_chr10rev[ which(genedata_chr10rev$tRNA_gene!="unassigned"),]
genedata_chr11rev <- genedata_chr11rev[ which(genedata_chr11rev$tRNA_gene!="unassigned"),]
genedata_chr12rev <- genedata_chr12rev[ which(genedata_chr12rev$tRNA_gene!="unassigned"),]
genedata_chr13rev <- genedata_chr13rev[ which(genedata_chr13rev$tRNA_gene!="unassigned"),]
genedata_chr14rev <- genedata_chr14rev[ which(genedata_chr14rev$tRNA_gene!="unassigned"),]
genedata_chr15rev <- genedata_chr15rev[ which(genedata_chr15rev$tRNA_gene!="unassigned"),]
genedata_chr16rev <- genedata_chr16rev[ which(genedata_chr16rev$tRNA_gene!="unassigned"),]


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

##length correction from neg to positive
genedata_chr1rev$length<- genedata_chr1rev$length * -1
genedata_chr2rev$length<- genedata_chr2rev$length * -1
genedata_chr3rev$length<- genedata_chr3rev$length * -1
genedata_chr4rev$length<- genedata_chr4rev$length * -1
genedata_chr5rev$length<- genedata_chr5rev$length * -1
genedata_chr6rev$length<- genedata_chr6rev$length * -1
genedata_chr7rev$length<- genedata_chr7rev$length * -1
genedata_chr8rev$length<- genedata_chr8rev$length * -1
genedata_chr9rev$length<- genedata_chr9rev$length * -1
genedata_chr10rev$length<- genedata_chr10rev$length * -1
genedata_chr11rev$length<- genedata_chr11rev$length * -1
genedata_chr12rev$length<- genedata_chr12rev$length * -1
genedata_chr13rev$length<- genedata_chr13rev$length * -1
genedata_chr14rev$length<- genedata_chr14rev$length * -1
genedata_chr15rev$length<- genedata_chr15rev$length * -1
genedata_chr16rev$length<- genedata_chr16rev$length * -1




z<- c(2,21,33,34,36)
genedata_chr2fw<- genedata_chr2fw[,z]
#distance from start as a percent
genedata_chr1fw$relpos_ORF<- ifelse(genedata_chr1fw$pos>=genedata_chr1fw$start & genedata_chr1fw$pos<genedata_chr1fw$stop, (genedata_chr1fw$pos+1-genedata_chr1fw$start)/genedata_chr1fw$length,NA)
genedata_chr2fw$relpos_ORF<- ifelse(genedata_chr2fw$pos>=genedata_chr2fw$start & genedata_chr2fw$pos<genedata_chr2fw$stop, (genedata_chr2fw$pos+1-genedata_chr2fw$start)/genedata_chr2fw$length,NA)
genedata_chr3fw$relpos_ORF<- ifelse(genedata_chr3fw$pos>=genedata_chr3fw$start & genedata_chr3fw$pos<genedata_chr3fw$stop, (genedata_chr3fw$pos+1-genedata_chr3fw$start)/genedata_chr3fw$length,NA)
genedata_chr4fw$relpos_ORF<- ifelse(genedata_chr4fw$pos>=genedata_chr4fw$start & genedata_chr4fw$pos<genedata_chr4fw$stop, (genedata_chr4fw$pos+1-genedata_chr4fw$start)/genedata_chr4fw$length,NA)
genedata_chr5fw$relpos_ORF<- ifelse(genedata_chr5fw$pos>=genedata_chr5fw$start & genedata_chr5fw$pos<genedata_chr5fw$stop, (genedata_chr5fw$pos+1-genedata_chr5fw$start)/genedata_chr5fw$length,NA)
genedata_chr6fw$relpos_ORF<- ifelse(genedata_chr6fw$pos>=genedata_chr6fw$start & genedata_chr6fw$pos<genedata_chr6fw$stop, (genedata_chr6fw$pos+1-genedata_chr6fw$start)/genedata_chr6fw$length,NA)
genedata_chr7fw$relpos_ORF<- ifelse(genedata_chr7fw$pos>=genedata_chr7fw$start & genedata_chr7fw$pos<genedata_chr7fw$stop, (genedata_chr7fw$pos+1-genedata_chr7fw$start)/genedata_chr7fw$length,NA)
genedata_chr8fw$relpos_ORF<- ifelse(genedata_chr8fw$pos>=genedata_chr8fw$start & genedata_chr8fw$pos<genedata_chr8fw$stop, (genedata_chr8fw$pos+1-genedata_chr8fw$start)/genedata_chr8fw$length,NA)
genedata_chr9fw$relpos_ORF<- ifelse(genedata_chr9fw$pos>=genedata_chr9fw$start & genedata_chr9fw$pos<genedata_chr9fw$stop, (genedata_chr9fw$pos+1-genedata_chr9fw$start)/genedata_chr9fw$length,NA)
genedata_chr10fw$relpos_ORF<- ifelse(genedata_chr10fw$pos>=genedata_chr10fw$start & genedata_chr10fw$pos<genedata_chr10fw$stop, (genedata_chr10fw$pos+1-genedata_chr10fw$start)/genedata_chr10fw$length,NA)
genedata_chr11fw$relpos_ORF<- ifelse(genedata_chr11fw$pos>=genedata_chr11fw$start & genedata_chr11fw$pos<genedata_chr11fw$stop, (genedata_chr11fw$pos+1-genedata_chr11fw$start)/genedata_chr11fw$length,NA)
genedata_chr12fw$relpos_ORF<- ifelse(genedata_chr12fw$pos>=genedata_chr12fw$start & genedata_chr12fw$pos<genedata_chr12fw$stop, (genedata_chr12fw$pos+1-genedata_chr12fw$start)/genedata_chr12fw$length,NA)
genedata_chr13fw$relpos_ORF<- ifelse(genedata_chr13fw$pos>=genedata_chr13fw$start & genedata_chr13fw$pos<genedata_chr13fw$stop, (genedata_chr13fw$pos+1-genedata_chr13fw$start)/genedata_chr13fw$length,NA)
genedata_chr14fw$relpos_ORF<- ifelse(genedata_chr14fw$pos>=genedata_chr14fw$start & genedata_chr14fw$pos<genedata_chr14fw$stop, (genedata_chr14fw$pos+1-genedata_chr14fw$start)/genedata_chr14fw$length,NA)
genedata_chr15fw$relpos_ORF<- ifelse(genedata_chr15fw$pos>=genedata_chr15fw$start & genedata_chr15fw$pos<genedata_chr15fw$stop, (genedata_chr15fw$pos+1-genedata_chr15fw$start)/genedata_chr15fw$length,NA)
genedata_chr16fw$relpos_ORF<- ifelse(genedata_chr16fw$pos>=genedata_chr16fw$start & genedata_chr16fw$pos<genedata_chr16fw$stop, (genedata_chr16fw$pos+1-genedata_chr16fw$start)/genedata_chr16fw$length,NA)

genedata_chr1rev$relpos_ORF<- ifelse(genedata_chr1rev$pos<=genedata_chr1rev$start & genedata_chr1rev$pos>genedata_chr1rev$stop, (genedata_chr1rev$pos+1-genedata_chr1rev$stop)/genedata_chr1rev$length,NA)
genedata_chr2rev$relpos_ORF<- ifelse(genedata_chr2rev$pos<=genedata_chr2rev$start & genedata_chr2rev$pos>genedata_chr2rev$stop, (genedata_chr2rev$pos+1-genedata_chr2rev$stop)/genedata_chr2rev$length,NA)
genedata_chr3rev$relpos_ORF<- ifelse(genedata_chr3rev$pos<=genedata_chr3rev$start & genedata_chr3rev$pos>genedata_chr3rev$stop, (genedata_chr3rev$pos+1-genedata_chr3rev$stop)/genedata_chr3rev$length,NA)
genedata_chr4rev$relpos_ORF<- ifelse(genedata_chr4rev$pos<=genedata_chr4rev$start & genedata_chr4rev$pos>genedata_chr4rev$stop, (genedata_chr4rev$pos+1-genedata_chr4rev$stop)/genedata_chr4rev$length,NA)
genedata_chr5rev$relpos_ORF<- ifelse(genedata_chr5rev$pos<=genedata_chr5rev$start & genedata_chr5rev$pos>genedata_chr5rev$stop, (genedata_chr5rev$pos+1-genedata_chr5rev$stop)/genedata_chr5rev$length,NA)
genedata_chr6rev$relpos_ORF<- ifelse(genedata_chr6rev$pos<=genedata_chr6rev$start & genedata_chr6rev$pos>genedata_chr6rev$stop, (genedata_chr6rev$pos+1-genedata_chr6rev$stop)/genedata_chr6rev$length,NA)
genedata_chr7rev$relpos_ORF<- ifelse(genedata_chr7rev$pos<=genedata_chr7rev$start & genedata_chr7rev$pos>genedata_chr7rev$stop, (genedata_chr7rev$pos+1-genedata_chr7rev$stop)/genedata_chr7rev$length,NA)
genedata_chr8rev$relpos_ORF<- ifelse(genedata_chr8rev$pos<=genedata_chr8rev$start & genedata_chr8rev$pos>genedata_chr8rev$stop, (genedata_chr8rev$pos+1-genedata_chr8rev$stop)/genedata_chr8rev$length,NA)
genedata_chr9rev$relpos_ORF<- ifelse(genedata_chr9rev$pos<=genedata_chr9rev$start & genedata_chr9rev$pos>genedata_chr9rev$stop, (genedata_chr9rev$pos+1-genedata_chr9rev$stop)/genedata_chr9rev$length,NA)
genedata_chr10rev$relpos_ORF<- ifelse(genedata_chr10rev$pos<=genedata_chr10rev$start & genedata_chr10rev$pos>genedata_chr10rev$stop, (genedata_chr10rev$pos+1-genedata_chr10rev$stop)/genedata_chr10rev$length,NA)
genedata_chr11rev$relpos_ORF<- ifelse(genedata_chr11rev$pos<=genedata_chr11rev$start & genedata_chr11rev$pos>genedata_chr11rev$stop, (genedata_chr11rev$pos+1-genedata_chr11rev$stop)/genedata_chr11rev$length,NA)
genedata_chr12rev$relpos_ORF<- ifelse(genedata_chr12rev$pos<=genedata_chr12rev$start & genedata_chr12rev$pos>genedata_chr12rev$stop, (genedata_chr12rev$pos+1-genedata_chr12rev$stop)/genedata_chr12rev$length,NA)
genedata_chr13rev$relpos_ORF<- ifelse(genedata_chr13rev$pos<=genedata_chr13rev$start & genedata_chr13rev$pos>genedata_chr13rev$stop, (genedata_chr13rev$pos+1-genedata_chr13rev$stop)/genedata_chr13rev$length,NA)
genedata_chr14rev$relpos_ORF<- ifelse(genedata_chr14rev$pos<=genedata_chr14rev$start & genedata_chr14rev$pos>genedata_chr14rev$stop, (genedata_chr14rev$pos+1-genedata_chr14rev$stop)/genedata_chr14rev$length,NA)
genedata_chr15rev$relpos_ORF<- ifelse(genedata_chr15rev$pos<=genedata_chr15rev$start & genedata_chr15rev$pos>genedata_chr15rev$stop, (genedata_chr15rev$pos+1-genedata_chr15rev$stop)/genedata_chr15rev$length,NA)
genedata_chr16rev$relpos_ORF<- ifelse(genedata_chr16rev$pos<=genedata_chr16rev$start & genedata_chr16rev$pos>genedata_chr16rev$stop, (genedata_chr16rev$pos+1-genedata_chr16rev$stop)/genedata_chr16rev$length,NA)

######USE THIS BIN SCHEME FOR SPLICED TRNAs########

genedata_chr1fw$relbin_ORF <- findInterval(genedata_chr1fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr2fw$relbin_ORF <- findInterval(genedata_chr2fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr3fw$relbin_ORF <- findInterval(genedata_chr3fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr4fw$relbin_ORF <- findInterval(genedata_chr4fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr5fw$relbin_ORF <- findInterval(genedata_chr5fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr6fw$relbin_ORF <- findInterval(genedata_chr6fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr7fw$relbin_ORF <- findInterval(genedata_chr7fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr8fw$relbin_ORF <- findInterval(genedata_chr8fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr9fw$relbin_ORF <- findInterval(genedata_chr9fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr10fw$relbin_ORF <- findInterval(genedata_chr10fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr11fw$relbin_ORF <- findInterval(genedata_chr11fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr12fw$relbin_ORF <- findInterval(genedata_chr12fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr13fw$relbin_ORF <- findInterval(genedata_chr13fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr14fw$relbin_ORF <- findInterval(genedata_chr14fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr15fw$relbin_ORF <- findInterval(genedata_chr15fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr16fw$relbin_ORF <- findInterval(genedata_chr16fw$relpos_ORF, seq(0.03571429, 1, by=0.03571429))

genedata_chr1rev$relbin_ORF <- findInterval(genedata_chr1rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr2rev$relbin_ORF <- findInterval(genedata_chr2rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr3rev$relbin_ORF <- findInterval(genedata_chr3rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr4rev$relbin_ORF <- findInterval(genedata_chr4rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr5rev$relbin_ORF <- findInterval(genedata_chr5rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr6rev$relbin_ORF <- findInterval(genedata_chr6rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr7rev$relbin_ORF <- findInterval(genedata_chr7rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr8rev$relbin_ORF <- findInterval(genedata_chr8rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr9rev$relbin_ORF <- findInterval(genedata_chr9rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr10rev$relbin_ORF <- findInterval(genedata_chr10rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr11rev$relbin_ORF <- findInterval(genedata_chr11rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr12rev$relbin_ORF <- findInterval(genedata_chr12rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr13rev$relbin_ORF <- findInterval(genedata_chr13rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr14rev$relbin_ORF <- findInterval(genedata_chr14rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr15rev$relbin_ORF <- findInterval(genedata_chr15rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))
genedata_chr16rev$relbin_ORF <- findInterval(genedata_chr16rev$relpos_ORF, seq(0.03571429, 1, by=0.03571429))

#adding the end positions to bin 19
genedata_chr1fw$relbin_ORF[genedata_chr1fw$relbin_ORF==29]<-28
genedata_chr2fw$relbin_ORF[genedata_chr2fw$relbin_ORF==29]<-28
genedata_chr3fw$relbin_ORF[genedata_chr3fw$relbin_ORF==29]<-28
genedata_chr4fw$relbin_ORF[genedata_chr4fw$relbin_ORF==29]<-28
genedata_chr5fw$relbin_ORF[genedata_chr5fw$relbin_ORF==29]<-28
genedata_chr6fw$relbin_ORF[genedata_chr6fw$relbin_ORF==29]<-28
genedata_chr7fw$relbin_ORF[genedata_chr7fw$relbin_ORF==29]<-28
genedata_chr8fw$relbin_ORF[genedata_chr8fw$relbin_ORF==29]<-28
genedata_chr9fw$relbin_ORF[genedata_chr9fw$relbin_ORF==29]<-28
genedata_chr10fw$relbin_ORF[genedata_chr10fw$relbin_ORF==29]<-28
genedata_chr11fw$relbin_ORF[genedata_chr11fw$relbin_ORF==29]<-28
genedata_chr12fw$relbin_ORF[genedata_chr12fw$relbin_ORF==29]<-28
genedata_chr13fw$relbin_ORF[genedata_chr13fw$relbin_ORF==29]<-28
genedata_chr14fw$relbin_ORF[genedata_chr14fw$relbin_ORF==29]<-28
genedata_chr15fw$relbin_ORF[genedata_chr15fw$relbin_ORF==29]<-28
genedata_chr16fw$relbin_ORF[genedata_chr16fw$relbin_ORF==29]<-28

genedata_chr1rev$relbin_ORF[genedata_chr1rev$relbin_ORF==29]<-28
genedata_chr2rev$relbin_ORF[genedata_chr2rev$relbin_ORF==29]<-28
genedata_chr3rev$relbin_ORF[genedata_chr3rev$relbin_ORF==29]<-28
genedata_chr4rev$relbin_ORF[genedata_chr4rev$relbin_ORF==29]<-28
genedata_chr5rev$relbin_ORF[genedata_chr5rev$relbin_ORF==29]<-28
genedata_chr6rev$relbin_ORF[genedata_chr6rev$relbin_ORF==29]<-28
genedata_chr7rev$relbin_ORF[genedata_chr7rev$relbin_ORF==29]<-28
genedata_chr8rev$relbin_ORF[genedata_chr8rev$relbin_ORF==29]<-28
genedata_chr9rev$relbin_ORF[genedata_chr9rev$relbin_ORF==29]<-28
genedata_chr10rev$relbin_ORF[genedata_chr10rev$relbin_ORF==29]<-28
genedata_chr11rev$relbin_ORF[genedata_chr11rev$relbin_ORF==29]<-28
genedata_chr12rev$relbin_ORF[genedata_chr12rev$relbin_ORF==29]<-28
genedata_chr13rev$relbin_ORF[genedata_chr13rev$relbin_ORF==29]<-28
genedata_chr14rev$relbin_ORF[genedata_chr14rev$relbin_ORF==29]<-28
genedata_chr15rev$relbin_ORF[genedata_chr15rev$relbin_ORF==29]<-28
genedata_chr16rev$relbin_ORF[genedata_chr16rev$relbin_ORF==29]<-28
#####END##############

#binning the ORF
genedata_chr1fw$relbin_ORF <- findInterval(genedata_chr1fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr2fw$relbin_ORF <- findInterval(genedata_chr2fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr3fw$relbin_ORF <- findInterval(genedata_chr3fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr4fw$relbin_ORF <- findInterval(genedata_chr4fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr5fw$relbin_ORF <- findInterval(genedata_chr5fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr6fw$relbin_ORF <- findInterval(genedata_chr6fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr7fw$relbin_ORF <- findInterval(genedata_chr7fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr8fw$relbin_ORF <- findInterval(genedata_chr8fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr9fw$relbin_ORF <- findInterval(genedata_chr9fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr10fw$relbin_ORF <- findInterval(genedata_chr10fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr11fw$relbin_ORF <- findInterval(genedata_chr11fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr12fw$relbin_ORF <- findInterval(genedata_chr12fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr13fw$relbin_ORF <- findInterval(genedata_chr13fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr14fw$relbin_ORF <- findInterval(genedata_chr14fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr15fw$relbin_ORF <- findInterval(genedata_chr15fw$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr16fw$relbin_ORF <- findInterval(genedata_chr16fw$relpos_ORF, seq(0.05, 1, by=0.05))

genedata_chr1rev$relbin_ORF <- findInterval(genedata_chr1rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr2rev$relbin_ORF <- findInterval(genedata_chr2rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr3rev$relbin_ORF <- findInterval(genedata_chr3rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr4rev$relbin_ORF <- findInterval(genedata_chr4rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr5rev$relbin_ORF <- findInterval(genedata_chr5rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr6rev$relbin_ORF <- findInterval(genedata_chr6rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr7rev$relbin_ORF <- findInterval(genedata_chr7rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr8rev$relbin_ORF <- findInterval(genedata_chr8rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr9rev$relbin_ORF <- findInterval(genedata_chr9rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr10rev$relbin_ORF <- findInterval(genedata_chr10rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr11rev$relbin_ORF <- findInterval(genedata_chr11rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr12rev$relbin_ORF <- findInterval(genedata_chr12rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr13rev$relbin_ORF <- findInterval(genedata_chr13rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr14rev$relbin_ORF <- findInterval(genedata_chr14rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr15rev$relbin_ORF <- findInterval(genedata_chr15rev$relpos_ORF, seq(0.05, 1, by=0.05))
genedata_chr16rev$relbin_ORF <- findInterval(genedata_chr16rev$relpos_ORF, seq(0.05, 1, by=0.05))

#adding the end positions to bin 19
genedata_chr1fw$relbin_ORF[genedata_chr1fw$relbin_ORF==20]<-19
genedata_chr2fw$relbin_ORF[genedata_chr2fw$relbin_ORF==20]<-19
genedata_chr3fw$relbin_ORF[genedata_chr3fw$relbin_ORF==20]<-19
genedata_chr4fw$relbin_ORF[genedata_chr4fw$relbin_ORF==20]<-19
genedata_chr5fw$relbin_ORF[genedata_chr5fw$relbin_ORF==20]<-19
genedata_chr6fw$relbin_ORF[genedata_chr6fw$relbin_ORF==20]<-19
genedata_chr7fw$relbin_ORF[genedata_chr7fw$relbin_ORF==20]<-19
genedata_chr8fw$relbin_ORF[genedata_chr8fw$relbin_ORF==20]<-19
genedata_chr9fw$relbin_ORF[genedata_chr9fw$relbin_ORF==20]<-19
genedata_chr10fw$relbin_ORF[genedata_chr10fw$relbin_ORF==20]<-19
genedata_chr11fw$relbin_ORF[genedata_chr11fw$relbin_ORF==20]<-19
genedata_chr12fw$relbin_ORF[genedata_chr12fw$relbin_ORF==20]<-19
genedata_chr13fw$relbin_ORF[genedata_chr13fw$relbin_ORF==20]<-19
genedata_chr14fw$relbin_ORF[genedata_chr14fw$relbin_ORF==20]<-19
genedata_chr15fw$relbin_ORF[genedata_chr15fw$relbin_ORF==20]<-19
genedata_chr16fw$relbin_ORF[genedata_chr16fw$relbin_ORF==20]<-19

genedata_chr1rev$relbin_ORF[genedata_chr1rev$relbin_ORF==20]<-19
genedata_chr2rev$relbin_ORF[genedata_chr2rev$relbin_ORF==20]<-19
genedata_chr3rev$relbin_ORF[genedata_chr3rev$relbin_ORF==20]<-19
genedata_chr4rev$relbin_ORF[genedata_chr4rev$relbin_ORF==20]<-19
genedata_chr5rev$relbin_ORF[genedata_chr5rev$relbin_ORF==20]<-19
genedata_chr6rev$relbin_ORF[genedata_chr6rev$relbin_ORF==20]<-19
genedata_chr7rev$relbin_ORF[genedata_chr7rev$relbin_ORF==20]<-19
genedata_chr8rev$relbin_ORF[genedata_chr8rev$relbin_ORF==20]<-19
genedata_chr9rev$relbin_ORF[genedata_chr9rev$relbin_ORF==20]<-19
genedata_chr10rev$relbin_ORF[genedata_chr10rev$relbin_ORF==20]<-19
genedata_chr11rev$relbin_ORF[genedata_chr11rev$relbin_ORF==20]<-19
genedata_chr12rev$relbin_ORF[genedata_chr12rev$relbin_ORF==20]<-19
genedata_chr13rev$relbin_ORF[genedata_chr13rev$relbin_ORF==20]<-19
genedata_chr14rev$relbin_ORF[genedata_chr14rev$relbin_ORF==20]<-19
genedata_chr15rev$relbin_ORF[genedata_chr15rev$relbin_ORF==20]<-19
genedata_chr16rev$relbin_ORF[genedata_chr16rev$relbin_ORF==20]<-19

genedata_chr1fw[,31][is.na(genedata_chr1fw[,31])]<-0
genedata_chr2fw[,31][is.na(genedata_chr2fw[,31])]<-0
genedata_chr3fw[,31][is.na(genedata_chr3fw[,31])]<-0
genedata_chr4fw[,31][is.na(genedata_chr4fw[,31])]<-0
genedata_chr5fw[,31][is.na(genedata_chr5fw[,31])]<-0
genedata_chr6fw[,31][is.na(genedata_chr6fw[,31])]<-0
genedata_chr7fw[,31][is.na(genedata_chr7fw[,31])]<-0
genedata_chr8fw[,31][is.na(genedata_chr8fw[,31])]<-0
genedata_chr9fw[,31][is.na(genedata_chr9fw[,31])]<-0
genedata_chr10fw[,31][is.na(genedata_chr10fw[,31])]<-0
genedata_chr11fw[,31][is.na(genedata_chr11fw[,31])]<-0
genedata_chr12fw[,31][is.na(genedata_chr12fw[,31])]<-0
genedata_chr13fw[,31][is.na(genedata_chr13fw[,31])]<-0
genedata_chr14fw[,31][is.na(genedata_chr14fw[,31])]<-0
genedata_chr15fw[,31][is.na(genedata_chr15fw[,31])]<-0
genedata_chr16fw[,31][is.na(genedata_chr16fw[,31])]<-0

genedata_chr1rev[,31][is.na(genedata_chr1rev[,31])]<-0
genedata_chr2rev[,31][is.na(genedata_chr2rev[,31])]<-0
genedata_chr3rev[,31][is.na(genedata_chr3rev[,31])]<-0
genedata_chr4rev[,31][is.na(genedata_chr4rev[,31])]<-0
genedata_chr5rev[,31][is.na(genedata_chr5rev[,31])]<-0
genedata_chr6rev[,31][is.na(genedata_chr6rev[,31])]<-0
genedata_chr7rev[,31][is.na(genedata_chr7rev[,31])]<-0
genedata_chr8rev[,31][is.na(genedata_chr8rev[,31])]<-0
genedata_chr9rev[,31][is.na(genedata_chr9rev[,31])]<-0
genedata_chr10rev[,31][is.na(genedata_chr10rev[,31])]<-0
genedata_chr11rev[,31][is.na(genedata_chr11rev[,31])]<-0
genedata_chr12rev[,31][is.na(genedata_chr12rev[,31])]<-0
genedata_chr13rev[,31][is.na(genedata_chr13rev[,31])]<-0
genedata_chr14rev[,31][is.na(genedata_chr14rev[,31])]<-0
genedata_chr15rev[,31][is.na(genedata_chr15rev[,31])]<-0
genedata_chr16rev[,31][is.na(genedata_chr16rev[,31])]<-0

l<- c(58,50)
MetageneNorm_chr1fw <- genedata_chr1fw[,l]
MetageneNorm_chr2fw <- genedata_chr2fw[,l]
MetageneNorm_chr3fw <- genedata_chr3fw[,l]
MetageneNorm_chr4fw <- genedata_chr4fw[,l]
MetageneNorm_chr5fw <- genedata_chr5fw[,l]
MetageneNorm_chr6fw <- genedata_chr6fw[,l]
MetageneNorm_chr7fw <- genedata_chr7fw[,l]
MetageneNorm_chr8fw <- genedata_chr8fw[,l]
MetageneNorm_chr9fw <- genedata_chr9fw[,l]
MetageneNorm_chr10fw <- genedata_chr10fw[,l]
MetageneNorm_chr11fw <- genedata_chr11fw[,l]
MetageneNorm_chr12fw <- genedata_chr12fw[,l]
MetageneNorm_chr13fw <- genedata_chr13fw[,l]
MetageneNorm_chr14fw <- genedata_chr14fw[,l]
MetageneNorm_chr15fw <- genedata_chr15fw[,l]
MetageneNorm_chr16fw <- genedata_chr16fw[,l]

MetageneNorm_chr1rev <- genedata_chr1rev[,l]
MetageneNorm_chr2rev <- genedata_chr2rev[,l]
MetageneNorm_chr3rev <- genedata_chr3rev[,l]
MetageneNorm_chr4rev <- genedata_chr4rev[,l]
MetageneNorm_chr5rev <- genedata_chr5rev[,l]
MetageneNorm_chr6rev <- genedata_chr6rev[,l]
MetageneNorm_chr7rev <- genedata_chr7rev[,l]
MetageneNorm_chr8rev <- genedata_chr8rev[,l]
MetageneNorm_chr9rev <- genedata_chr9rev[,l]
MetageneNorm_chr10rev <- genedata_chr10rev[,l]
MetageneNorm_chr11rev <- genedata_chr11rev[,l]
MetageneNorm_chr12rev <- genedata_chr12rev[,l]
MetageneNorm_chr13rev <- genedata_chr13rev[,l]
MetageneNorm_chr14rev <- genedata_chr14rev[,l]
MetageneNorm_chr15rev <- genedata_chr15rev[,l]
MetageneNorm_chr16rev <- genedata_chr16rev[,l]

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

Metagene_ORF_mean<-aggregate(Saccer3_MetageneNorm[,2], list(Saccer3_MetageneNorm$relbin_ORF), FUN=mean, na.rm=T)
View(Metagene_ORF_mean)

colnames(Metagene_ORF_mean) <- c("bin","Sen1_clipnorm")

xrange <- c(0.025 , 0.075 , 0.125 , 0.175 , 0.225 , 0.275 , 0.325 , 0.375 , 0.425 , 0.475 , 0.525 , 0.575 , 0.625 , 0.675 , 0.725 , 0.775 , 0.825 , 0.875 , 0.925 , 0.975)
z <- c(1.025 , 1.075 , 1.125 , 1.175 , 1.225 , 1.275 , 1.325 , 1.375 , 1.425 , 1.475 , 1.525 , 1.575 , 1.625 , 1.675 , 1.725 , 1.775 , 1.825 , 1.875 , 1.925 , 1.975)
q <- c(2.025 , 2.075 , 2.125 , 2.175 , 2.225 , 2.275 , 2.325 , 2.375 , 2.425 , 2.475 , 2.525 , 2.575 , 2.625 , 2.675 , 2.725 , 2.775 , 2.825 , 2.875 , 2.925 , 2.975)

yrange <- c(Metagene_ORF_mean$Sen1_clipnorm)

# set up the plot
plot(xrange, yrange, type="n", xlim=c(0,1), ylim=c(0,.045), xlab="feature length",
     ylab="Sen1 binding density (norm)" )

# add lines

lines(xrange, Metagene_ORF_mean$Sen1_clipnorm, type="b", lwd=1.5,
      pch=19,col="black")


# add a title and subtitle
title("Metagene profile of Dbp2 binding to mRNAs")

legend("topleft", c("C/D Box", "H/ACA Box"), lty=c(1,1), lwd=c(1,1), col=c("green", "black"), xjust=1.2, bty= "n", text.font=1, pch=19, pt.cex = 1, cex=0.6)

-----------------------------------------------
  l<- c(1:8,10,12:33)
genedata_chr1fw <- genedata_chr1fw[,l]
genedata_chr2fw <- genedata_chr2fw[,l]
genedata_chr3fw <- genedata_chr3fw[,l]
genedata_chr4fw <- genedata_chr4fw[,l]
genedata_chr5fw <- genedata_chr5fw[,l]
genedata_chr6fw <- genedata_chr6fw[,l]
genedata_chr7fw <- genedata_chr7fw[,l]
genedata_chr8fw <- genedata_chr8fw[,l]
genedata_chr9fw <- genedata_chr9fw[,l]
genedata_chr10fw <- genedata_chr10fw[,l]
genedata_chr11fw <- genedata_chr11fw[,l]
genedata_chr12fw <- genedata_chr12fw[,l]
genedata_chr13fw <- genedata_chr13fw[,l]
genedata_chr14fw <- genedata_chr14fw[,l]
genedata_chr15fw <- genedata_chr15fw[,l]
genedata_chr16fw <- genedata_chr16fw[,l]

genedata_chr1rev <- genedata_chr1rev[,l]
genedata_chr2rev <- genedata_chr2rev[,l]
genedata_chr3rev <- genedata_chr3rev[,l]
genedata_chr4rev <- genedata_chr4rev[,l]
genedata_chr5rev <- genedata_chr5rev[,l]
genedata_chr6rev <- genedata_chr6rev[,l]
genedata_chr7rev <- genedata_chr7rev[,l]
genedata_chr8rev <- genedata_chr8rev[,l]
genedata_chr9rev <- genedata_chr9rev[,l]
genedata_chr10rev <- genedata_chr10rev[,l]
genedata_chr11rev <- genedata_chr11rev[,l]
genedata_chr12rev <- genedata_chr12rev[,l]
genedata_chr13rev <- genedata_chr13rev[,l]
genedata_chr14rev <- genedata_chr14rev[,l]
genedata_chr15rev <- genedata_chr15rev[,l]
genedata_chr16rev <- genedata_chr16rev[,l]
