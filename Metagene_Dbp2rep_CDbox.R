## Metagene for Dbp2 replicate C/D box snoRNA


#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R")
dir()

#make tables for length of snRNA
setwd("C:/Users/fated/OneDrive/R/snRNAcoordinate")
#reading in all data files
chr1cd<-read.delim("chr1snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr2cd<-read.delim("chr2snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr3cd<-read.delim("chr3snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr4cd<-read.delim("chr4snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr5cd<-read.delim("chr5snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr6cd<-read.delim("chr6snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr7cd<-read.delim("chr7snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr8cd<-read.delim("chr8snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr9cd<-read.delim("chr9snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr10cd<-read.delim("chr10snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr11cd<-read.delim("chr11snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr12cd<-read.delim("chr12snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr13cd<-read.delim("chr13snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr14cd<-read.delim("chr14snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr15cd<-read.delim("chr15snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)
chr16cd<-read.delim("chr16snRNA_CD.txt",sep="\t",header = F, quote="\"", stringsAsFactors=F)


#split by chromosome
chr1fwcd <-chr1cd[which(chr1cd[,5] ==1),]
chr2fwcd <-chr2cd[which(chr2cd[,5] ==1),]
chr3fwcd <-chr3cd[which(chr3cd[,5] ==1),]
chr4fwcd <-chr4cd[which(chr4cd[,5] ==1),]
chr5fwcd <-chr5cd[which(chr5cd[,5] ==1),]
chr6fwcd <-chr6cd[which(chr6cd[,5] ==1),]
chr7fwcd <-chr7cd[which(chr7cd[,5] ==1),]
chr8fwcd <-chr8cd[which(chr8cd[,5] ==1),]
chr9fwcd <-chr9cd[which(chr9cd[,5] ==1),]
chr10fwcd <-chr10cd[which(chr10cd[,5] ==1),]
chr11fwcd <-chr11cd[which(chr11cd[,5] ==1),]
chr12fwcd <-chr12cd[which(chr12cd[,5] ==1),]
chr13fwcd <-chr13cd[which(chr13cd[,5] ==1),]
chr14fwcd <-chr14cd[which(chr14cd[,5] ==1),]
chr15fwcd <-chr15cd[which(chr15cd[,5] ==1),]
chr16fwcd <-chr16cd[which(chr16cd[,5] ==1),]

chr1revcd <-chr1cd[which(chr1cd[,5] ==-1),]
chr2revcd <-chr2cd[which(chr2cd[,5] ==-1),]
chr3revcd <-chr3cd[which(chr3cd[,5] ==-1),]
chr4revcd <-chr4cd[which(chr4cd[,5] ==-1),]
chr5revcd <-chr5cd[which(chr5cd[,5] ==-1),]
chr6revcd <-chr6cd[which(chr6cd[,5] ==-1),]
chr7revcd <-chr7cd[which(chr7cd[,5] ==-1),]
chr8revcd <-chr8cd[which(chr8cd[,5] ==-1),]
chr9revcd <-chr9cd[which(chr9cd[,5] ==-1),]
chr10revcd <-chr10cd[which(chr10cd[,5] ==-1),]
chr11revcd <-chr11cd[which(chr11cd[,5] ==-1),]
chr12revcd <-chr12cd[which(chr12cd[,5] ==-1),]
chr13revcd <-chr13cd[which(chr13cd[,5] ==-1),]
chr14revcd <-chr14cd[which(chr14cd[,5] ==-1),]
chr15revcd <-chr15cd[which(chr15cd[,5] ==-1),]
chr16revcd <-chr16cd[which(chr16cd[,5] ==-1),]





#assign col names
colnames(chr1fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr2fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr3fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr4fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr5fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr6fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr7fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr8fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr9fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr10fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr11fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr12fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr13fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr14fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr15fwcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr16fwcd) <- c("gene","chr", "start", "stop","strand")

colnames(chr1revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr2revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr3revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr4revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr5revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr6revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr7revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr8revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr9revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr10revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr11revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr12revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr13revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr14revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr15revcd) <- c("gene","chr", "start", "stop","strand")
colnames(chr16revcd) <- c("gene","chr", "start", "stop","strand")

#snRNA HACA box

chr1fwcd$length <- chr1fwcd$stop-chr1fwcd$start+1
chr2fwcd$length <- chr2fwcd$stop-chr2fwcd$start+1
chr3fwcd$length <- chr3fwcd$stop-chr3fwcd$start+1
chr4fwcd$length <- chr4fwcd$stop-chr4fwcd$start+1
chr5fwcd$length <- chr5fwcd$stop-chr5fwcd$start+1
chr6fwcd$length <- chr6fwcd$stop-chr6fwcd$start+1
chr7fwcd$length <- chr7fwcd$stop-chr7fwcd$start+1
chr8fwcd$length <- chr8fwcd$stop-chr8fwcd$start+1
chr9fwcd$length <- chr9fwcd$stop-chr9fwcd$start+1
chr10fwcd$length <- chr10fwcd$stop-chr10fwcd$start+1
chr11fwcd$length <- chr11fwcd$stop-chr11fwcd$start+1
chr12fwcd$length <- chr12fwcd$stop-chr12fwcd$start+1
chr13fwcd$length <- chr13fwcd$stop-chr13fwcd$start+1
chr14fwcd$length <- chr14fwcd$stop-chr14fwcd$start+1
chr15fwcd$length <- chr15fwcd$stop-chr15fwcd$start+1
chr16fwcd$length <- chr16fwcd$stop-chr16fwcd$start+1

chr1revcd$length <- chr1revcd$stop-chr1revcd$start+1
chr2revcd$length <- chr2revcd$stop-chr2revcd$start+1
chr3revcd$length <- chr3revcd$stop-chr3revcd$start+1
chr4revcd$length <- chr4revcd$stop-chr4revcd$start+1
chr5revcd$length <- chr5revcd$stop-chr5revcd$start+1
chr6revcd$length <- chr6revcd$stop-chr6revcd$start+1
chr7revcd$length <- chr7revcd$stop-chr7revcd$start+1
chr8revcd$length <- chr8revcd$stop-chr8revcd$start+1
chr9revcd$length <- chr9revcd$stop-chr9revcd$start+1
chr10revcd$length <- chr10revcd$stop-chr10revcd$start+1
chr11revcd$length <- chr11revcd$stop-chr11revcd$start+1
chr12revcd$length <- chr12revcd$stop-chr12revcd$start+1
chr13revcd$length <- chr13revcd$stop-chr13revcd$start+1
chr14revcd$length <- chr14revcd$stop-chr14revcd$start+1
chr15revcd$length <- chr15revcd$stop-chr15revcd$start+1
chr16revcd$length <- chr16revcd$stop-chr16revcd$start+1


#make genedata table with snRNA
setwd("C:/Users/fated/OneDrive/R")

genedata_chr1fw<-read.delim("genedata_chr1fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("genedata_chr2fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("genedata_chr3fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("genedata_chr4fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("genedata_chr5fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("genedata_chr6fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("genedata_chr7fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("genedata_chr8fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("genedata_chr9fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("genedata_chr10fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("genedata_chr11fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("genedata_chr12fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("genedata_chr13fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("genedata_chr14fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("genedata_chr15fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("genedata_chr16fwDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1rev<-read.delim("genedata_chr1revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("genedata_chr2revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("genedata_chr3revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("genedata_chr4revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("genedata_chr5revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("genedata_chr6revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("genedata_chr7revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("genedata_chr8revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("genedata_chr9revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("genedata_chr10revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("genedata_chr11revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("genedata_chr12revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("genedata_chr13revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("genedata_chr14revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("genedata_chr15revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("genedata_chr16revDbp2rep_Norm.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

colnames(genedata_chr1fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr2fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr3fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr4fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr5fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr6fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr7fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr8fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr9fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr10fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr11fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr12fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr13fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr14fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr15fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr16fw) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")

colnames(genedata_chr1rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr2rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr3rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr4rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr5rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr6rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr7rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr8rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr9rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr10rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr11rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr12rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr13rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr14rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr15rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")
colnames(genedata_chr16rev) <- c("chr","pos","strand","seq","gene","conservation","chrom","Dbp2rep_iCLIP","strand","Total_iCLIPhit","Dbp2rep_iCLIPnorm")

##important snRNA 1hit annotation
snRNA_annotation <- read.delim("allyeast_snRNA_CD_1hit_out1.txt", sep="\t",header = T, quote="\"", stringsAsFactors=F)

chr1_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr1"),]
chr2_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr2"),]
chr3_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr3"),]
chr4_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr4"),]
chr5_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr5"),]
chr6_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr6"),]
chr7_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr7"),]
chr8_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr8"),]
chr9_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr9"),]
chr10_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr10"),]
chr11_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr11"),]
chr12_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr12"),]
chr13_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr13"),]
chr14_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr14"),]
chr15_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr15"),]
chr16_snRNA_CD <-snRNA_annotation[which(snRNA_annotation[,1] =="chr16"),]

#split by forward and reverse strand
chr1_snRNA_CDf <-chr1_snRNA_CD[which(chr1_snRNA_CD[,3] =="F"),]
chr2_snRNA_CDf <-chr2_snRNA_CD[which(chr2_snRNA_CD[,3] =="F"),]
chr3_snRNA_CDf <-chr3_snRNA_CD[which(chr3_snRNA_CD[,3] =="F"),]
chr4_snRNA_CDf <-chr4_snRNA_CD[which(chr4_snRNA_CD[,3] =="F"),]
chr5_snRNA_CDf <-chr5_snRNA_CD[which(chr5_snRNA_CD[,3] =="F"),]
chr6_snRNA_CDf <-chr6_snRNA_CD[which(chr6_snRNA_CD[,3] =="F"),]
chr7_snRNA_CDf <-chr7_snRNA_CD[which(chr7_snRNA_CD[,3] =="F"),]
chr8_snRNA_CDf <-chr8_snRNA_CD[which(chr8_snRNA_CD[,3] =="F"),]
chr9_snRNA_CDf <-chr9_snRNA_CD[which(chr9_snRNA_CD[,3] =="F"),]
chr10_snRNA_CDf <-chr10_snRNA_CD[which(chr10_snRNA_CD[,3] =="F"),]
chr11_snRNA_CDf <-chr11_snRNA_CD[which(chr11_snRNA_CD[,3] =="F"),]
chr12_snRNA_CDf <-chr12_snRNA_CD[which(chr12_snRNA_CD[,3] =="F"),]
chr13_snRNA_CDf <-chr13_snRNA_CD[which(chr13_snRNA_CD[,3] =="F"),]
chr14_snRNA_CDf <-chr14_snRNA_CD[which(chr14_snRNA_CD[,3] =="F"),]
chr15_snRNA_CDf <-chr15_snRNA_CD[which(chr15_snRNA_CD[,3] =="F"),]
chr16_snRNA_CDf <-chr16_snRNA_CD[which(chr16_snRNA_CD[,3] =="F"),]

chr1_snRNA_CDr <-chr1_snRNA_CD[which(chr1_snRNA_CD[,3] =="R"),]
chr2_snRNA_CDr <-chr2_snRNA_CD[which(chr2_snRNA_CD[,3] =="R"),]
chr3_snRNA_CDr <-chr3_snRNA_CD[which(chr3_snRNA_CD[,3] =="R"),]
chr4_snRNA_CDr <-chr4_snRNA_CD[which(chr4_snRNA_CD[,3] =="R"),]
chr5_snRNA_CDr <-chr5_snRNA_CD[which(chr5_snRNA_CD[,3] =="R"),]
chr6_snRNA_CDr <-chr6_snRNA_CD[which(chr6_snRNA_CD[,3] =="R"),]
chr7_snRNA_CDr <-chr7_snRNA_CD[which(chr7_snRNA_CD[,3] =="R"),]
chr8_snRNA_CDr <-chr8_snRNA_CD[which(chr8_snRNA_CD[,3] =="R"),]
chr9_snRNA_CDr <-chr9_snRNA_CD[which(chr9_snRNA_CD[,3] =="R"),]
chr10_snRNA_CDr <-chr10_snRNA_CD[which(chr10_snRNA_CD[,3] =="R"),]
chr11_snRNA_CDr <-chr11_snRNA_CD[which(chr11_snRNA_CD[,3] =="R"),]
chr12_snRNA_CDr <-chr12_snRNA_CD[which(chr12_snRNA_CD[,3] =="R"),]
chr13_snRNA_CDr <-chr13_snRNA_CD[which(chr13_snRNA_CD[,3] =="R"),]
chr14_snRNA_CDr <-chr14_snRNA_CD[which(chr14_snRNA_CD[,3] =="R"),]
chr15_snRNA_CDr <-chr15_snRNA_CD[which(chr15_snRNA_CD[,3] =="R"),]
chr16_snRNA_CDr <-chr16_snRNA_CD[which(chr16_snRNA_CD[,3] =="R"),]

#split by forward and reverse strand


#Name each column 
colnames(chr1_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr2_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr3_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr4_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr5_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr6_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr7_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr8_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr9_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr10_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr11_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr12_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr13_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr14_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr15_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")
colnames(chr16_snRNA_CDf) <- c("chrom","pos","strand","feature","gene")

colnames(chr1_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr2_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr3_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr4_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr5_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr6_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr7_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr8_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr9_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr10_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr11_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr12_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr13_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr14_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr15_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")
colnames(chr16_snRNA_CDr) <- c("chrom","pos","strand","feature","gene")


#combine the genedata with norm icLIP reads with genedata that includes the snRNA locations

genedata_chr1fw_snRNA_CD <- join(genedata_chr1fw,chr1_snRNA_CDf,by="pos")
genedata_chr2fw_snRNA_CD <- join(genedata_chr2fw,chr2_snRNA_CDf,by="pos")
genedata_chr3fw_snRNA_CD <- join(genedata_chr3fw,chr3_snRNA_CDf,by="pos")
genedata_chr4fw_snRNA_CD <- join(genedata_chr4fw,chr4_snRNA_CDf,by="pos")
genedata_chr5fw_snRNA_CD <- join(genedata_chr5fw,chr5_snRNA_CDf,by="pos")
genedata_chr6fw_snRNA_CD <- join(genedata_chr6fw,chr6_snRNA_CDf,by="pos")
genedata_chr7fw_snRNA_CD <- join(genedata_chr7fw,chr7_snRNA_CDf,by="pos")
genedata_chr8fw_snRNA_CD <- join(genedata_chr8fw,chr8_snRNA_CDf,by="pos")
genedata_chr9fw_snRNA_CD <- join(genedata_chr9fw,chr9_snRNA_CDf,by="pos")
genedata_chr10fw_snRNA_CD <- join(genedata_chr10fw,chr10_snRNA_CDf,by="pos")
genedata_chr11fw_snRNA_CD <- join(genedata_chr11fw,chr11_snRNA_CDf,by="pos")
genedata_chr12fw_snRNA_CD <- join(genedata_chr12fw,chr12_snRNA_CDf,by="pos")
genedata_chr13fw_snRNA_CD <- join(genedata_chr13fw,chr13_snRNA_CDf,by="pos")
genedata_chr14fw_snRNA_CD <- join(genedata_chr14fw,chr14_snRNA_CDf,by="pos")
genedata_chr15fw_snRNA_CD <- join(genedata_chr15fw,chr15_snRNA_CDf,by="pos")
genedata_chr16fw_snRNA_CD <- join(genedata_chr16fw,chr16_snRNA_CDf,by="pos")

genedata_chr1rev_snRNA_CD <- join(genedata_chr1rev,chr1_snRNA_CDr,by="pos")
genedata_chr2rev_snRNA_CD <- join(genedata_chr2rev,chr2_snRNA_CDr,by="pos")
genedata_chr3rev_snRNA_CD <- join(genedata_chr3rev,chr3_snRNA_CDr,by="pos")
genedata_chr4rev_snRNA_CD <- join(genedata_chr4rev,chr4_snRNA_CDr,by="pos")
genedata_chr5rev_snRNA_CD <- join(genedata_chr5rev,chr5_snRNA_CDr,by="pos")
genedata_chr6rev_snRNA_CD <- join(genedata_chr6rev,chr6_snRNA_CDr,by="pos")
genedata_chr7rev_snRNA_CD <- join(genedata_chr7rev,chr7_snRNA_CDr,by="pos")
genedata_chr8rev_snRNA_CD <- join(genedata_chr8rev,chr8_snRNA_CDr,by="pos")
genedata_chr9rev_snRNA_CD <- join(genedata_chr9rev,chr9_snRNA_CDr,by="pos")
genedata_chr10rev_snRNA_CD <- join(genedata_chr10rev,chr10_snRNA_CDr,by="pos")
genedata_chr11rev_snRNA_CD <- join(genedata_chr11rev,chr11_snRNA_CDr,by="pos")
genedata_chr12rev_snRNA_CD <- join(genedata_chr12rev,chr12_snRNA_CDr,by="pos")
genedata_chr13rev_snRNA_CD <- join(genedata_chr13rev,chr13_snRNA_CDr,by="pos")
genedata_chr14rev_snRNA_CD <- join(genedata_chr14rev,chr14_snRNA_CDr,by="pos")
genedata_chr15rev_snRNA_CD <- join(genedata_chr15rev,chr15_snRNA_CDr,by="pos")
genedata_chr16rev_snRNA_CD <- join(genedata_chr16rev,chr16_snRNA_CDr,by="pos")

e<-c(1:3,8:15)
SMgenedata_chr1fw_snRNA_CD <-genedata_chr1fw_snRNA_CD[,e]
SMgenedata_chr2fw_snRNA_CD <-genedata_chr2fw_snRNA_CD[,e]
SMgenedata_chr3fw_snRNA_CD <-genedata_chr3fw_snRNA_CD[,e]
SMgenedata_chr4fw_snRNA_CD <-genedata_chr4fw_snRNA_CD[,e]
SMgenedata_chr5fw_snRNA_CD <-genedata_chr5fw_snRNA_CD[,e]
SMgenedata_chr6fw_snRNA_CD <-genedata_chr6fw_snRNA_CD[,e]
SMgenedata_chr7fw_snRNA_CD <-genedata_chr7fw_snRNA_CD[,e]
SMgenedata_chr8fw_snRNA_CD <-genedata_chr8fw_snRNA_CD[,e]
SMgenedata_chr9fw_snRNA_CD <-genedata_chr9fw_snRNA_CD[,e]
SMgenedata_chr10fw_snRNA_CD <-genedata_chr10fw_snRNA_CD[,e]
SMgenedata_chr11fw_snRNA_CD <-genedata_chr11fw_snRNA_CD[,e]
SMgenedata_chr12fw_snRNA_CD <-genedata_chr12fw_snRNA_CD[,e]
SMgenedata_chr13fw_snRNA_CD <-genedata_chr13fw_snRNA_CD[,e]
SMgenedata_chr14fw_snRNA_CD <-genedata_chr14fw_snRNA_CD[,e]
SMgenedata_chr15fw_snRNA_CD <-genedata_chr15fw_snRNA_CD[,e]
SMgenedata_chr16fw_snRNA_CD <-genedata_chr16fw_snRNA_CD[,e]

SMgenedata_chr1rev_snRNA_CD <-genedata_chr1rev_snRNA_CD[,e]
SMgenedata_chr2rev_snRNA_CD <-genedata_chr2rev_snRNA_CD[,e]
SMgenedata_chr3rev_snRNA_CD <-genedata_chr3rev_snRNA_CD[,e]
SMgenedata_chr4rev_snRNA_CD <-genedata_chr4rev_snRNA_CD[,e]
SMgenedata_chr5rev_snRNA_CD <-genedata_chr5rev_snRNA_CD[,e]
SMgenedata_chr6rev_snRNA_CD <-genedata_chr6rev_snRNA_CD[,e]
SMgenedata_chr7rev_snRNA_CD <-genedata_chr7rev_snRNA_CD[,e]
SMgenedata_chr8rev_snRNA_CD <-genedata_chr8rev_snRNA_CD[,e]
SMgenedata_chr9rev_snRNA_CD <-genedata_chr9rev_snRNA_CD[,e]
SMgenedata_chr10rev_snRNA_CD <-genedata_chr10rev_snRNA_CD[,e]
SMgenedata_chr11rev_snRNA_CD <-genedata_chr11rev_snRNA_CD[,e]
SMgenedata_chr12rev_snRNA_CD <-genedata_chr12rev_snRNA_CD[,e]
SMgenedata_chr13rev_snRNA_CD <-genedata_chr13rev_snRNA_CD[,e]
SMgenedata_chr14rev_snRNA_CD <-genedata_chr14rev_snRNA_CD[,e]
SMgenedata_chr15rev_snRNA_CD <-genedata_chr15rev_snRNA_CD[,e]
SMgenedata_chr16rev_snRNA_CD <-genedata_chr16rev_snRNA_CD[,e]

##get rid of unassigned rows
Annotatedgenedata_chr1fw <- SMgenedata_chr1fw_snRNA_CD[ which(genedata_chr1fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr2fw <- SMgenedata_chr2fw_snRNA_CD[ which(genedata_chr2fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr3fw <- SMgenedata_chr3fw_snRNA_CD[ which(genedata_chr3fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr4fw <- SMgenedata_chr4fw_snRNA_CD[ which(genedata_chr4fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr5fw <- SMgenedata_chr5fw_snRNA_CD[ which(genedata_chr5fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr6fw <- SMgenedata_chr6fw_snRNA_CD[ which(genedata_chr6fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr7fw <- SMgenedata_chr7fw_snRNA_CD[ which(genedata_chr7fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr8fw <- SMgenedata_chr8fw_snRNA_CD[ which(genedata_chr8fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr9fw <- SMgenedata_chr9fw_snRNA_CD[ which(genedata_chr9fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr10fw <- SMgenedata_chr10fw_snRNA_CD[ which(genedata_chr10fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr11fw <- SMgenedata_chr11fw_snRNA_CD[ which(genedata_chr11fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr12fw <- SMgenedata_chr12fw_snRNA_CD[ which(genedata_chr12fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr13fw <- SMgenedata_chr13fw_snRNA_CD[ which(genedata_chr13fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr14fw <- SMgenedata_chr14fw_snRNA_CD[ which(genedata_chr14fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr15fw <- SMgenedata_chr15fw_snRNA_CD[ which(genedata_chr15fw_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr16fw <- SMgenedata_chr16fw_snRNA_CD[ which(genedata_chr16fw_snRNA_CD$feature!="unassigned"),]

Annotatedgenedata_chr1rev <- SMgenedata_chr1rev_snRNA_CD[ which(genedata_chr1rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr2rev <- SMgenedata_chr2rev_snRNA_CD[ which(genedata_chr2rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr3rev <- SMgenedata_chr3rev_snRNA_CD[ which(genedata_chr3rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr4rev <- SMgenedata_chr4rev_snRNA_CD[ which(genedata_chr4rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr5rev <- SMgenedata_chr5rev_snRNA_CD[ which(genedata_chr5rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr6rev <- SMgenedata_chr6rev_snRNA_CD[ which(genedata_chr6rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr7rev <- SMgenedata_chr7rev_snRNA_CD[ which(genedata_chr7rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr8rev <- SMgenedata_chr8rev_snRNA_CD[ which(genedata_chr8rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr9rev <- SMgenedata_chr9rev_snRNA_CD[ which(genedata_chr9rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr10rev <- SMgenedata_chr10rev_snRNA_CD[ which(genedata_chr10rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr11rev <- SMgenedata_chr11rev_snRNA_CD[ which(genedata_chr11rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr12rev <- SMgenedata_chr12rev_snRNA_CD[ which(genedata_chr12rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr13rev <- SMgenedata_chr13rev_snRNA_CD[ which(genedata_chr13rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr14rev <- SMgenedata_chr14rev_snRNA_CD[ which(genedata_chr14rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr15rev <- SMgenedata_chr15rev_snRNA_CD[ which(genedata_chr15rev_snRNA_CD$feature!="unassigned"),]
Annotatedgenedata_chr16rev <- SMgenedata_chr16rev_snRNA_CD[ which(genedata_chr16rev_snRNA_CD$feature!="unassigned"),]

Annotatedgenedata_chr1fw <- join(Annotatedgenedata_chr1fw,chr1fwcd, by = "gene")
Annotatedgenedata_chr2fw <- join(Annotatedgenedata_chr2fw,chr2fwcd, by = "gene")
Annotatedgenedata_chr3fw <- join(Annotatedgenedata_chr3fw,chr3fwcd, by = "gene")
Annotatedgenedata_chr4fw <- join(Annotatedgenedata_chr4fw,chr4fwcd, by = "gene")
Annotatedgenedata_chr5fw <- join(Annotatedgenedata_chr5fw,chr5fwcd, by = "gene")
Annotatedgenedata_chr6fw <- join(Annotatedgenedata_chr6fw,chr6fwcd, by = "gene")
Annotatedgenedata_chr7fw <- join(Annotatedgenedata_chr7fw,chr7fwcd, by = "gene")
Annotatedgenedata_chr8fw <- join(Annotatedgenedata_chr8fw,chr8fwcd, by = "gene")
Annotatedgenedata_chr9fw <- join(Annotatedgenedata_chr9fw,chr9fwcd, by = "gene")
Annotatedgenedata_chr10fw <- join(Annotatedgenedata_chr10fw,chr10fwcd, by = "gene")
Annotatedgenedata_chr11fw <- join(Annotatedgenedata_chr11fw,chr11fwcd, by = "gene")
Annotatedgenedata_chr12fw <- join(Annotatedgenedata_chr12fw,chr12fwcd, by = "gene")
Annotatedgenedata_chr13fw <- join(Annotatedgenedata_chr13fw,chr13fwcd, by = "gene")
Annotatedgenedata_chr14fw <- join(Annotatedgenedata_chr14fw,chr14fwcd, by = "gene")
Annotatedgenedata_chr15fw <- join(Annotatedgenedata_chr15fw,chr15fwcd, by = "gene")
Annotatedgenedata_chr16fw <- join(Annotatedgenedata_chr16fw,chr16fwcd, by = "gene")

Annotatedgenedata_chr1rev <- join(Annotatedgenedata_chr1rev,chr1revcd, by = "gene")
Annotatedgenedata_chr2rev <- join(Annotatedgenedata_chr2rev,chr2revcd, by = "gene")
Annotatedgenedata_chr3rev <- join(Annotatedgenedata_chr3rev,chr3revcd, by = "gene")
Annotatedgenedata_chr4rev <- join(Annotatedgenedata_chr4rev,chr4revcd, by = "gene")
Annotatedgenedata_chr5rev <- join(Annotatedgenedata_chr5rev,chr5revcd, by = "gene")
Annotatedgenedata_chr6rev <- join(Annotatedgenedata_chr6rev,chr6revcd, by = "gene")
Annotatedgenedata_chr7rev <- join(Annotatedgenedata_chr7rev,chr7revcd, by = "gene")
Annotatedgenedata_chr8rev <- join(Annotatedgenedata_chr8rev,chr8revcd, by = "gene")
Annotatedgenedata_chr9rev <- join(Annotatedgenedata_chr9rev,chr9revcd, by = "gene")
Annotatedgenedata_chr10rev <- join(Annotatedgenedata_chr10rev,chr10revcd, by = "gene")
Annotatedgenedata_chr11rev <- join(Annotatedgenedata_chr11rev,chr11revcd, by = "gene")
Annotatedgenedata_chr12rev <- join(Annotatedgenedata_chr12rev,chr12revcd, by = "gene")
Annotatedgenedata_chr13rev <- join(Annotatedgenedata_chr13rev,chr13revcd, by = "gene")
Annotatedgenedata_chr14rev <- join(Annotatedgenedata_chr14rev,chr14revcd, by = "gene")
Annotatedgenedata_chr15rev <- join(Annotatedgenedata_chr15rev,chr15revcd, by = "gene")
Annotatedgenedata_chr16rev <- join(Annotatedgenedata_chr16rev,chr16revcd, by = "gene")

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

l<- c(4,18)
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
write.table(Saccer3_MetageneNorm,file="Saccer3_MetageneNorm_snRNA_CD_Dbp2rep.txt",sep="\t",row.names = F,col.names = T, quote=F)

Saccer3_MetageneNorm<- read.delim("Saccer3_MetageneNorm_snRNA_CD_Dbp2rep.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
rm(Saccer3_MetageneNorm)

#calculating the binned mean+sd on the 5'UTRs
Metagene_UTR5_mean<-NULL
Metagene_ORF_mean<-NULL
Metagene_UTR3_mean<-NULL
Metagene_ORF_mean<-aggregate(Saccer3_MetageneNorm[,1], list(Saccer3_MetageneNorm$relbin_ORF), FUN=mean, na.rm=T)
colnames(Metagene_ORF_mean) <- c("bin","Dbp2rep_iCLIPnorm")

xrange <- c(0.025 , 0.075 , 0.125 , 0.175 , 0.225 , 0.275 , 0.325 , 0.375 , 0.425 , 0.475 , 0.525 , 0.575 , 0.625 , 0.675 , 0.725 , 0.775 , 0.825 , 0.875 , 0.925 , 0.975)

yrange <- c(Metagene_ORF_mean$Dbp2rep_iCLIPnorm)

# set up the plot
plot(xrange, yrange, type="n", xlim=c(0,1), ylim=c(0,2), xlab="feature length",
     ylab="Dbp2 binding density (norm)" )

# add lines

lines(xrange, Metagene_ORF_mean$Dbp2rep_iCLIPnorm, type="b", lwd=1.5,
      pch=19,col="black")

# add a title and subtitle
title("Metagene profile of Dbp2 binding to mRNAs")



