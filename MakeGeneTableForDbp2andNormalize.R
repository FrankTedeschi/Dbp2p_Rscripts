#doing the usual stuff
rm (list =ls())
getwd()
setwd("C:/Users/fated/OneDrive/R")
dir()

#import gene data table with all of Ulfs values
genedata_chr1rev<-read.delim("chr1rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<-read.delim("chr2rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<-read.delim("chr3rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<-read.delim("chr4rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<-read.delim("chr5rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<-read.delim("chr6rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<-read.delim("chr7rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<-read.delim("chr8rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<-read.delim("chr9rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<-read.delim("chr10rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<-read.delim("chr11rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<-read.delim("chr12rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<-read.delim("chr13rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<-read.delim("chr14rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<-read.delim("chr15rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<-read.delim("chr16rev_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw<-read.delim("chr1fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<-read.delim("chr2fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<-read.delim("chr3fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<-read.delim("chr4fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<-read.delim("chr5fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<-read.delim("chr6fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<-read.delim("chr7fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<-read.delim("chr8fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<-read.delim("chr9fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<-read.delim("chr10fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<-read.delim("chr11fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<-read.delim("chr12fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<-read.delim("chr13fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<-read.delim("chr14fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<-read.delim("chr15fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<-read.delim("chr16fw_genedata.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)



#Keep only columns that I want
g <- c(1:6,49)
genedata_chr1revBase<-genedata_chr1rev[,g]
genedata_chr2revBase<-genedata_chr2rev[,g]
genedata_chr3revBase<-genedata_chr3rev[,g]
genedata_chr4revBase<-genedata_chr4rev[,g]
genedata_chr5revBase<-genedata_chr5rev[,g]
genedata_chr6revBase<-genedata_chr6rev[,g]
genedata_chr7revBase<-genedata_chr7rev[,g]
genedata_chr8revBase<-genedata_chr8rev[,g]
genedata_chr9revBase<-genedata_chr9rev[,g]
genedata_chr10revBase<-genedata_chr10rev[,g]
genedata_chr11revBase<-genedata_chr11rev[,g]
genedata_chr12revBase<-genedata_chr12rev[,g]
genedata_chr13revBase<-genedata_chr13rev[,g]
genedata_chr14revBase<-genedata_chr14rev[,g]
genedata_chr15revBase<-genedata_chr15rev[,g]
genedata_chr16revBase<-genedata_chr16rev[,g]

genedata_chr1fwBase<-genedata_chr1fw[,g]
genedata_chr2fwBase<-genedata_chr2fw[,g]
genedata_chr3fwBase<-genedata_chr3fw[,g]
genedata_chr4fwBase<-genedata_chr4fw[,g]
genedata_chr5fwBase<-genedata_chr5fw[,g]
genedata_chr6fwBase<-genedata_chr6fw[,g]
genedata_chr7fwBase<-genedata_chr7fw[,g]
genedata_chr8fwBase<-genedata_chr8fw[,g]
genedata_chr9fwBase<-genedata_chr9fw[,g]
genedata_chr10fwBase<-genedata_chr10fw[,g]
genedata_chr11fwBase<-genedata_chr11fw[,g]
genedata_chr12fwBase<-genedata_chr12fw[,g]
genedata_chr13fwBase<-genedata_chr13fw[,g]
genedata_chr14fwBase<-genedata_chr14fw[,g]
genedata_chr15fwBase<-genedata_chr15fw[,g]
genedata_chr16fwBase<-genedata_chr16fw[,g]


#Read in Dbp2 coverage file (chromosome, pos, value, strand)
setwd("C:/Users/fated/OneDrive/R")        #set where the next file will be
dir()                                     # look in folder directory to make sure file is there and file name is correct
chr1_Dbp2DTrev <- read.delim("ChrI_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr2_Dbp2DTrev <- read.delim("ChrII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr3_Dbp2DTrev <- read.delim("ChrIII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr4_Dbp2DTrev <- read.delim("ChrIV_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr5_Dbp2DTrev <- read.delim("ChrV_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr6_Dbp2DTrev <- read.delim("ChrVI_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr7_Dbp2DTrev <- read.delim("ChrVII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr8_Dbp2DTrev <- read.delim("ChrVIII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr9_Dbp2DTrev <- read.delim("ChrIX_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr10_Dbp2DTrev <- read.delim("ChrX_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr11_Dbp2DTrev <- read.delim("ChrXI_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr12_Dbp2DTrev <- read.delim("ChrXII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr13_Dbp2DTrev <- read.delim("ChrXIII_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr14_Dbp2DTrev <- read.delim("ChrXIV_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr15_Dbp2DTrev <- read.delim("ChrXV_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr16_Dbp2DTrev <- read.delim("ChrXVI_Dbp2_Crick_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

chr1_Dbp2DTfw <- read.delim("ChrII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr2_Dbp2DTfw <- read.delim("ChrII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr3_Dbp2DTfw <- read.delim("ChrIII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr4_Dbp2DTfw <- read.delim("ChrIV_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr5_Dbp2DTfw <- read.delim("ChrV_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr6_Dbp2DTfw <- read.delim("ChrVI_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr7_Dbp2DTfw <- read.delim("ChrVII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr8_Dbp2DTfw <- read.delim("ChrVIII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr9_Dbp2DTfw <- read.delim("ChrIX_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr10_Dbp2DTfw <- read.delim("ChrX_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr11_Dbp2DTfw <- read.delim("ChrXI_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr12_Dbp2DTfw <- read.delim("ChrXII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr13_Dbp2DTfw <- read.delim("ChrXIII_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr14_Dbp2DTfw <- read.delim("ChrXIV_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr15_Dbp2DTfw <- read.delim("ChrXV_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
chr16_Dbp2DTfw <- read.delim("ChrXVI_Dbp2_Watson_Coverage.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


#assign column names
names(chr1_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr2_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr3_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr4_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr5_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr6_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr7_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr8_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr9_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr10_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr11_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr12_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr13_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr14_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr15_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr16_Dbp2DTrev) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")

names(chr1_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr2_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr3_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr4_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr5_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr6_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr7_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr8_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr9_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr10_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr11_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr12_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr13_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr14_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr15_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")
names(chr16_Dbp2DTfw) <- c("chrom", "pos", "Dbp2_iCLIP", "strand")

#join two data sets on position. 
genedata_chr1rev_Dbp2excess <- join(genedata_chr1revBase,chr1_Dbp2DTrev,by="pos")
genedata_chr2rev_Dbp2excess <- join(genedata_chr2revBase,chr2_Dbp2DTrev,by="pos")
genedata_chr3rev_Dbp2excess <- join(genedata_chr3revBase,chr3_Dbp2DTrev,by="pos")
genedata_chr4rev_Dbp2excess <- join(genedata_chr4revBase,chr4_Dbp2DTrev,by="pos")
genedata_chr5rev_Dbp2excess <- join(genedata_chr5revBase,chr5_Dbp2DTrev,by="pos")
genedata_chr6rev_Dbp2excess <- join(genedata_chr6revBase,chr6_Dbp2DTrev,by="pos")
genedata_chr7rev_Dbp2excess <- join(genedata_chr7revBase,chr7_Dbp2DTrev,by="pos")
genedata_chr8rev_Dbp2excess <- join(genedata_chr8revBase,chr8_Dbp2DTrev,by="pos")
genedata_chr9rev_Dbp2excess <- join(genedata_chr9revBase,chr9_Dbp2DTrev,by="pos")
genedata_chr10rev_Dbp2excess <- join(genedata_chr10revBase,chr10_Dbp2DTrev,by="pos")
genedata_chr11rev_Dbp2excess <- join(genedata_chr11revBase,chr11_Dbp2DTrev,by="pos")
genedata_chr12rev_Dbp2excess <- join(genedata_chr12revBase,chr12_Dbp2DTrev,by="pos")
genedata_chr13rev_Dbp2excess <- join(genedata_chr13revBase,chr13_Dbp2DTrev,by="pos")
genedata_chr14rev_Dbp2excess <- join(genedata_chr14revBase,chr14_Dbp2DTrev,by="pos")
genedata_chr15rev_Dbp2excess <- join(genedata_chr15revBase,chr15_Dbp2DTrev,by="pos")
genedata_chr16rev_Dbp2excess <- join(genedata_chr16revBase,chr16_Dbp2DTrev,by="pos")

genedata_chr1fw_Dbp2excess <- join(genedata_chr1fwBase,chr1_Dbp2DTfw,by="pos")
genedata_chr2fw_Dbp2excess <- join(genedata_chr2fwBase,chr2_Dbp2DTfw,by="pos")
genedata_chr3fw_Dbp2excess <- join(genedata_chr3fwBase,chr3_Dbp2DTfw,by="pos")
genedata_chr4fw_Dbp2excess <- join(genedata_chr4fwBase,chr4_Dbp2DTfw,by="pos")
genedata_chr5fw_Dbp2excess <- join(genedata_chr5fwBase,chr5_Dbp2DTfw,by="pos")
genedata_chr6fw_Dbp2excess <- join(genedata_chr6fwBase,chr6_Dbp2DTfw,by="pos")
genedata_chr7fw_Dbp2excess <- join(genedata_chr7fwBase,chr7_Dbp2DTfw,by="pos")
genedata_chr8fw_Dbp2excess <- join(genedata_chr8fwBase,chr8_Dbp2DTfw,by="pos")
genedata_chr9fw_Dbp2excess <- join(genedata_chr9fwBase,chr9_Dbp2DTfw,by="pos")
genedata_chr10fw_Dbp2excess <- join(genedata_chr10fwBase,chr10_Dbp2DTfw,by="pos")
genedata_chr11fw_Dbp2excess <- join(genedata_chr11fwBase,chr11_Dbp2DTfw,by="pos")
genedata_chr12fw_Dbp2excess <- join(genedata_chr12fwBase,chr12_Dbp2DTfw,by="pos")
genedata_chr13fw_Dbp2excess <- join(genedata_chr13fwBase,chr13_Dbp2DTfw,by="pos")
genedata_chr14fw_Dbp2excess <- join(genedata_chr14fwBase,chr14_Dbp2DTfw,by="pos")
genedata_chr15fw_Dbp2excess <- join(genedata_chr15fwBase,chr15_Dbp2DTfw,by="pos")
genedata_chr16fw_Dbp2excess <- join(genedata_chr16fwBase,chr16_Dbp2DTfw,by="pos")


#Keep only the iCLIP data and gene col
g <- c(5,9)
genedata_chr1revDbp2<-genedata_chr1rev_Dbp2excess[,g]
genedata_chr2revDbp2<-genedata_chr2rev_Dbp2excess[,g]
genedata_chr3revDbp2<-genedata_chr3rev_Dbp2excess[,g]
genedata_chr4revDbp2<-genedata_chr4rev_Dbp2excess[,g]
genedata_chr5revDbp2<-genedata_chr5rev_Dbp2excess[,g]
genedata_chr6revDbp2<-genedata_chr6rev_Dbp2excess[,g]
genedata_chr7revDbp2<-genedata_chr7rev_Dbp2excess[,g]
genedata_chr8revDbp2<-genedata_chr8rev_Dbp2excess[,g]
genedata_chr9revDbp2<-genedata_chr9rev_Dbp2excess[,g]
genedata_chr10revDbp2<-genedata_chr10rev_Dbp2excess[,g]
genedata_chr11revDbp2<-genedata_chr11rev_Dbp2excess[,g]
genedata_chr12revDbp2<-genedata_chr12rev_Dbp2excess[,g]
genedata_chr13revDbp2<-genedata_chr13rev_Dbp2excess[,g]
genedata_chr14revDbp2<-genedata_chr14rev_Dbp2excess[,g]
genedata_chr15revDbp2<-genedata_chr15rev_Dbp2excess[,g]
genedata_chr16revDbp2<-genedata_chr16rev_Dbp2excess[,g]

genedata_chr1fwDbp2<-genedata_chr1fw_Dbp2excess[,g]
genedata_chr2fwDbp2<-genedata_chr2fw_Dbp2excess[,g]
genedata_chr3fwDbp2<-genedata_chr3fw_Dbp2excess[,g]
genedata_chr4fwDbp2<-genedata_chr4fw_Dbp2excess[,g]
genedata_chr5fwDbp2<-genedata_chr5fw_Dbp2excess[,g]
genedata_chr6fwDbp2<-genedata_chr6fw_Dbp2excess[,g]
genedata_chr7fwDbp2<-genedata_chr7fw_Dbp2excess[,g]
genedata_chr8fwDbp2<-genedata_chr8fw_Dbp2excess[,g]
genedata_chr9fwDbp2<-genedata_chr9fw_Dbp2excess[,g]
genedata_chr10fwDbp2<-genedata_chr10fw_Dbp2excess[,g]
genedata_chr11fwDbp2<-genedata_chr11fw_Dbp2excess[,g]
genedata_chr12fwDbp2<-genedata_chr12fw_Dbp2excess[,g]
genedata_chr13fwDbp2<-genedata_chr13fw_Dbp2excess[,g]
genedata_chr14fwDbp2<-genedata_chr14fw_Dbp2excess[,g]
genedata_chr15fwDbp2<-genedata_chr15fw_Dbp2excess[,g]
genedata_chr16fwDbp2<-genedata_chr16fw_Dbp2excess[,g]

#make sure the iCLIP values are numeric
genedata_chr1revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr1revDbp2$Dbp2_iCLIP))
genedata_chr2revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr2revDbp2$Dbp2_iCLIP))
genedata_chr3revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr3revDbp2$Dbp2_iCLIP))
genedata_chr4revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr4revDbp2$Dbp2_iCLIP))
genedata_chr5revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr5revDbp2$Dbp2_iCLIP))
genedata_chr6revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr6revDbp2$Dbp2_iCLIP))
genedata_chr7revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr7revDbp2$Dbp2_iCLIP))
genedata_chr8revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr8revDbp2$Dbp2_iCLIP))
genedata_chr9revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr9revDbp2$Dbp2_iCLIP))
genedata_chr10revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr10revDbp2$Dbp2_iCLIP))
genedata_chr11revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr11revDbp2$Dbp2_iCLIP))
genedata_chr12revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr12revDbp2$Dbp2_iCLIP))
genedata_chr13revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr13revDbp2$Dbp2_iCLIP))
genedata_chr14revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr14revDbp2$Dbp2_iCLIP))
genedata_chr15revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr15revDbp2$Dbp2_iCLIP))
genedata_chr16revDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr16revDbp2$Dbp2_iCLIP))

genedata_chr1fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr1fwDbp2$Dbp2_iCLIP))
genedata_chr2fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr2fwDbp2$Dbp2_iCLIP))
genedata_chr3fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr3fwDbp2$Dbp2_iCLIP))
genedata_chr4fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr4fwDbp2$Dbp2_iCLIP))
genedata_chr5fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr5fwDbp2$Dbp2_iCLIP))
genedata_chr6fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr6fwDbp2$Dbp2_iCLIP))
genedata_chr7fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr7fwDbp2$Dbp2_iCLIP))
genedata_chr8fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr8fwDbp2$Dbp2_iCLIP))
genedata_chr9fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr9fwDbp2$Dbp2_iCLIP))
genedata_chr10fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr10fwDbp2$Dbp2_iCLIP))
genedata_chr11fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr11fwDbp2$Dbp2_iCLIP))
genedata_chr12fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr12fwDbp2$Dbp2_iCLIP))
genedata_chr13fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr13fwDbp2$Dbp2_iCLIP))
genedata_chr14fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr14fwDbp2$Dbp2_iCLIP))
genedata_chr15fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr15fwDbp2$Dbp2_iCLIP))
genedata_chr16fwDbp2$Dbp2_iCLIP<-as.numeric(as.character(genedata_chr16fwDbp2$Dbp2_iCLIP))

totalhitspergene_chr1rev_Dbp2<-totalhitspergene_chr1rev_Dbp2[totalhitspergene_chr1rev_Dbp2$gene="INTRON",]


##calculated avg for each gene ---have to have just gene and the read value

test <-aggregate(.~gene, data=genedata_chr1rev, FUN=mean)

#calculating the sum for each gene
totalhitspergene_chr1rev_Dbp2<-aggregate(.~gene, data=genedata_chr1revDbp2, FUN=sum)
totalhitspergene_chr2rev_Dbp2<-aggregate(.~gene, data=genedata_chr2revDbp2, FUN=sum)
totalhitspergene_chr3rev_Dbp2<-aggregate(.~gene, data=genedata_chr3revDbp2, FUN=sum)
totalhitspergene_chr4rev_Dbp2<-aggregate(.~gene, data=genedata_chr4revDbp2, FUN=sum)
totalhitspergene_chr5rev_Dbp2<-aggregate(.~gene, data=genedata_chr5revDbp2, FUN=sum)
totalhitspergene_chr6rev_Dbp2<-aggregate(.~gene, data=genedata_chr6revDbp2, FUN=sum)
totalhitspergene_chr7rev_Dbp2<-aggregate(.~gene, data=genedata_chr7revDbp2, FUN=sum)
totalhitspergene_chr8rev_Dbp2<-aggregate(.~gene, data=genedata_chr8revDbp2, FUN=sum)
totalhitspergene_chr9rev_Dbp2<-aggregate(.~gene, data=genedata_chr9revDbp2, FUN=sum)
totalhitspergene_chr10rev_Dbp2<-aggregate(.~gene, data=genedata_chr10revDbp2, FUN=sum)
totalhitspergene_chr11rev_Dbp2<-aggregate(.~gene, data=genedata_chr11revDbp2, FUN=sum)
totalhitspergene_chr12rev_Dbp2<-aggregate(.~gene, data=genedata_chr12revDbp2, FUN=sum)
totalhitspergene_chr13rev_Dbp2<-aggregate(.~gene, data=genedata_chr13revDbp2, FUN=sum)
totalhitspergene_chr14rev_Dbp2<-aggregate(.~gene, data=genedata_chr14revDbp2, FUN=sum)
totalhitspergene_chr15rev_Dbp2<-aggregate(.~gene, data=genedata_chr15revDbp2, FUN=sum)
totalhitspergene_chr16rev_Dbp2<-aggregate(.~gene, data=genedata_chr16revDbp2, FUN=sum)

totalhitspergene_chr1fw_Dbp2<-aggregate(.~gene, data=genedata_chr1fwDbp2, FUN=sum)
totalhitspergene_chr2fw_Dbp2<-aggregate(.~gene, data=genedata_chr2fwDbp2, FUN=sum)
totalhitspergene_chr3fw_Dbp2<-aggregate(.~gene, data=genedata_chr3fwDbp2, FUN=sum)
totalhitspergene_chr4fw_Dbp2<-aggregate(.~gene, data=genedata_chr4fwDbp2, FUN=sum)
totalhitspergene_chr5fw_Dbp2<-aggregate(.~gene, data=genedata_chr5fwDbp2, FUN=sum)
totalhitspergene_chr6fw_Dbp2<-aggregate(.~gene, data=genedata_chr6fwDbp2, FUN=sum)
totalhitspergene_chr7fw_Dbp2<-aggregate(.~gene, data=genedata_chr7fwDbp2, FUN=sum)
totalhitspergene_chr8fw_Dbp2<-aggregate(.~gene, data=genedata_chr8fwDbp2, FUN=sum)
totalhitspergene_chr9fw_Dbp2<-aggregate(.~gene, data=genedata_chr9fwDbp2, FUN=sum)
totalhitspergene_chr10fw_Dbp2<-aggregate(.~gene, data=genedata_chr10fwDbp2, FUN=sum)
totalhitspergene_chr11fw_Dbp2<-aggregate(.~gene, data=genedata_chr11fwDbp2, FUN=sum)
totalhitspergene_chr12fw_Dbp2<-aggregate(.~gene, data=genedata_chr12fwDbp2, FUN=sum)
totalhitspergene_chr13fw_Dbp2<-aggregate(.~gene, data=genedata_chr13fwDbp2, FUN=sum)
totalhitspergene_chr14fw_Dbp2<-aggregate(.~gene, data=genedata_chr14fwDbp2, FUN=sum)
totalhitspergene_chr15fw_Dbp2<-aggregate(.~gene, data=genedata_chr15fwDbp2, FUN=sum)
totalhitspergene_chr16fw_Dbp2<-aggregate(.~gene, data=genedata_chr16fwDbp2, FUN=sum)

#remove unassigned row
totalhitspergene_chr1rev_Dbp2<-totalhitspergene_chr1rev_Dbp2[totalhitspergene_chr1rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr2rev_Dbp2<-totalhitspergene_chr2rev_Dbp2[totalhitspergene_chr2rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr3rev_Dbp2<-totalhitspergene_chr3rev_Dbp2[totalhitspergene_chr3rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr4rev_Dbp2<-totalhitspergene_chr4rev_Dbp2[totalhitspergene_chr4rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr5rev_Dbp2<-totalhitspergene_chr5rev_Dbp2[totalhitspergene_chr5rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr6rev_Dbp2<-totalhitspergene_chr6rev_Dbp2[totalhitspergene_chr6rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr7rev_Dbp2<-totalhitspergene_chr7rev_Dbp2[totalhitspergene_chr7rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr8rev_Dbp2<-totalhitspergene_chr8rev_Dbp2[totalhitspergene_chr8rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr9rev_Dbp2<-totalhitspergene_chr9rev_Dbp2[totalhitspergene_chr9rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr10rev_Dbp2<-totalhitspergene_chr10rev_Dbp2[totalhitspergene_chr10rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr11rev_Dbp2<-totalhitspergene_chr11rev_Dbp2[totalhitspergene_chr11rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr12rev_Dbp2<-totalhitspergene_chr12rev_Dbp2[totalhitspergene_chr12rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr13rev_Dbp2<-totalhitspergene_chr13rev_Dbp2[totalhitspergene_chr13rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr14rev_Dbp2<-totalhitspergene_chr14rev_Dbp2[totalhitspergene_chr14rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr15rev_Dbp2<-totalhitspergene_chr15rev_Dbp2[totalhitspergene_chr15rev_Dbp2$gene!="unassigned",]
totalhitspergene_chr16rev_Dbp2<-totalhitspergene_chr16rev_Dbp2[totalhitspergene_chr16rev_Dbp2$gene!="unassigned",]

totalhitspergene_chr1fw_Dbp2<-totalhitspergene_chr1fw_Dbp2[totalhitspergene_chr1fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr2fw_Dbp2<-totalhitspergene_chr2fw_Dbp2[totalhitspergene_chr2fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr3fw_Dbp2<-totalhitspergene_chr3fw_Dbp2[totalhitspergene_chr3fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr4fw_Dbp2<-totalhitspergene_chr4fw_Dbp2[totalhitspergene_chr4fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr5fw_Dbp2<-totalhitspergene_chr5fw_Dbp2[totalhitspergene_chr5fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr6fw_Dbp2<-totalhitspergene_chr6fw_Dbp2[totalhitspergene_chr6fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr7fw_Dbp2<-totalhitspergene_chr7fw_Dbp2[totalhitspergene_chr7fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr8fw_Dbp2<-totalhitspergene_chr8fw_Dbp2[totalhitspergene_chr8fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr9fw_Dbp2<-totalhitspergene_chr9fw_Dbp2[totalhitspergene_chr9fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr10fw_Dbp2<-totalhitspergene_chr10fw_Dbp2[totalhitspergene_chr10fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr11fw_Dbp2<-totalhitspergene_chr11fw_Dbp2[totalhitspergene_chr11fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr12fw_Dbp2<-totalhitspergene_chr12fw_Dbp2[totalhitspergene_chr12fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr13fw_Dbp2<-totalhitspergene_chr13fw_Dbp2[totalhitspergene_chr13fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr14fw_Dbp2<-totalhitspergene_chr14fw_Dbp2[totalhitspergene_chr14fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr15fw_Dbp2<-totalhitspergene_chr15fw_Dbp2[totalhitspergene_chr15fw_Dbp2$gene!="unassigned",]
totalhitspergene_chr16fw_Dbp2<-totalhitspergene_chr16fw_Dbp2[totalhitspergene_chr16fw_Dbp2$gene!="unassigned",]

#new col name
colnames(totalhitspergene_chr1rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr2rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr3rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr4rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr5rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr6rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr7rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr8rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr9rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr10rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr11rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr12rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr13rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr14rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr15rev_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr16rev_Dbp2)<- c("gene","Total_iCLIPhit")

colnames(totalhitspergene_chr1fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr2fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr3fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr4fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr5fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr6fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr7fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr8fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr9fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr10fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr11fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr12fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr13fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr14fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr15fw_Dbp2)<- c("gene","Total_iCLIPhit")
colnames(totalhitspergene_chr16fw_Dbp2)<- c("gene","Total_iCLIPhit")

#join genedata_excess table with total hits table by gene col
genedata_chr1revDbp2_Norm <- join(genedata_chr1rev_Dbp2excess, totalhitspergene_chr1rev_Dbp2, by = "gene")
genedata_chr2revDbp2_Norm <- join(genedata_chr2rev_Dbp2excess, totalhitspergene_chr2rev_Dbp2, by = "gene")
genedata_chr3revDbp2_Norm <- join(genedata_chr3rev_Dbp2excess, totalhitspergene_chr3rev_Dbp2, by = "gene")
genedata_chr4revDbp2_Norm <- join(genedata_chr4rev_Dbp2excess, totalhitspergene_chr4rev_Dbp2, by = "gene")
genedata_chr5revDbp2_Norm <- join(genedata_chr5rev_Dbp2excess, totalhitspergene_chr5rev_Dbp2, by = "gene")
genedata_chr6revDbp2_Norm <- join(genedata_chr6rev_Dbp2excess, totalhitspergene_chr6rev_Dbp2, by = "gene")
genedata_chr7revDbp2_Norm <- join(genedata_chr7rev_Dbp2excess, totalhitspergene_chr7rev_Dbp2, by = "gene")
genedata_chr8revDbp2_Norm <- join(genedata_chr8rev_Dbp2excess, totalhitspergene_chr8rev_Dbp2, by = "gene")
genedata_chr9revDbp2_Norm <- join(genedata_chr9rev_Dbp2excess, totalhitspergene_chr9rev_Dbp2, by = "gene")
genedata_chr10revDbp2_Norm <- join(genedata_chr10rev_Dbp2excess, totalhitspergene_chr10rev_Dbp2, by = "gene")
genedata_chr11revDbp2_Norm <- join(genedata_chr11rev_Dbp2excess, totalhitspergene_chr11rev_Dbp2, by = "gene")
genedata_chr12revDbp2_Norm <- join(genedata_chr12rev_Dbp2excess, totalhitspergene_chr12rev_Dbp2, by = "gene")
genedata_chr13revDbp2_Norm <- join(genedata_chr13rev_Dbp2excess, totalhitspergene_chr13rev_Dbp2, by = "gene")
genedata_chr14revDbp2_Norm <- join(genedata_chr14rev_Dbp2excess, totalhitspergene_chr14rev_Dbp2, by = "gene")
genedata_chr15revDbp2_Norm <- join(genedata_chr15rev_Dbp2excess, totalhitspergene_chr15rev_Dbp2, by = "gene")
genedata_chr16revDbp2_Norm <- join(genedata_chr16rev_Dbp2excess, totalhitspergene_chr16rev_Dbp2, by = "gene")

genedata_chr1fwDbp2_Norm <- join(genedata_chr1fw_Dbp2excess, totalhitspergene_chr1fw_Dbp2, by = "gene")
genedata_chr2fwDbp2_Norm <- join(genedata_chr2fw_Dbp2excess, totalhitspergene_chr2fw_Dbp2, by = "gene")
genedata_chr3fwDbp2_Norm <- join(genedata_chr3fw_Dbp2excess, totalhitspergene_chr3fw_Dbp2, by = "gene")
genedata_chr4fwDbp2_Norm <- join(genedata_chr4fw_Dbp2excess, totalhitspergene_chr4fw_Dbp2, by = "gene")
genedata_chr5fwDbp2_Norm <- join(genedata_chr5fw_Dbp2excess, totalhitspergene_chr5fw_Dbp2, by = "gene")
genedata_chr6fwDbp2_Norm <- join(genedata_chr6fw_Dbp2excess, totalhitspergene_chr6fw_Dbp2, by = "gene")
genedata_chr7fwDbp2_Norm <- join(genedata_chr7fw_Dbp2excess, totalhitspergene_chr7fw_Dbp2, by = "gene")
genedata_chr8fwDbp2_Norm <- join(genedata_chr8fw_Dbp2excess, totalhitspergene_chr8fw_Dbp2, by = "gene")
genedata_chr9fwDbp2_Norm <- join(genedata_chr9fw_Dbp2excess, totalhitspergene_chr9fw_Dbp2, by = "gene")
genedata_chr10fwDbp2_Norm <- join(genedata_chr10fw_Dbp2excess, totalhitspergene_chr10fw_Dbp2, by = "gene")
genedata_chr11fwDbp2_Norm <- join(genedata_chr11fw_Dbp2excess, totalhitspergene_chr11fw_Dbp2, by = "gene")
genedata_chr12fwDbp2_Norm <- join(genedata_chr12fw_Dbp2excess, totalhitspergene_chr12fw_Dbp2, by = "gene")
genedata_chr13fwDbp2_Norm <- join(genedata_chr13fw_Dbp2excess, totalhitspergene_chr13fw_Dbp2, by = "gene")
genedata_chr14fwDbp2_Norm <- join(genedata_chr14fw_Dbp2excess, totalhitspergene_chr14fw_Dbp2, by = "gene")
genedata_chr15fwDbp2_Norm <- join(genedata_chr15fw_Dbp2excess, totalhitspergene_chr15fw_Dbp2, by = "gene")
genedata_chr16fwDbp2_Norm <- join(genedata_chr16fw_Dbp2excess, totalhitspergene_chr16fw_Dbp2, by = "gene")

#calculating the normalized values
genedata_chr1revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr1revDbp2_Norm$Dbp2_iCLIP / genedata_chr1revDbp2_Norm$Total_iCLIPhit
genedata_chr2revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr2revDbp2_Norm$Dbp2_iCLIP / genedata_chr2revDbp2_Norm$Total_iCLIPhit
genedata_chr3revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr3revDbp2_Norm$Dbp2_iCLIP / genedata_chr3revDbp2_Norm$Total_iCLIPhit
genedata_chr4revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr4revDbp2_Norm$Dbp2_iCLIP / genedata_chr4revDbp2_Norm$Total_iCLIPhit
genedata_chr5revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr5revDbp2_Norm$Dbp2_iCLIP / genedata_chr5revDbp2_Norm$Total_iCLIPhit
genedata_chr6revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr6revDbp2_Norm$Dbp2_iCLIP / genedata_chr6revDbp2_Norm$Total_iCLIPhit
genedata_chr7revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr7revDbp2_Norm$Dbp2_iCLIP / genedata_chr7revDbp2_Norm$Total_iCLIPhit
genedata_chr8revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr8revDbp2_Norm$Dbp2_iCLIP / genedata_chr8revDbp2_Norm$Total_iCLIPhit
genedata_chr9revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr9revDbp2_Norm$Dbp2_iCLIP / genedata_chr9revDbp2_Norm$Total_iCLIPhit
genedata_chr10revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr10revDbp2_Norm$Dbp2_iCLIP / genedata_chr10revDbp2_Norm$Total_iCLIPhit
genedata_chr11revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr11revDbp2_Norm$Dbp2_iCLIP / genedata_chr11revDbp2_Norm$Total_iCLIPhit
genedata_chr12revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr12revDbp2_Norm$Dbp2_iCLIP / genedata_chr12revDbp2_Norm$Total_iCLIPhit
genedata_chr13revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr13revDbp2_Norm$Dbp2_iCLIP / genedata_chr13revDbp2_Norm$Total_iCLIPhit
genedata_chr14revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr14revDbp2_Norm$Dbp2_iCLIP / genedata_chr14revDbp2_Norm$Total_iCLIPhit
genedata_chr15revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr15revDbp2_Norm$Dbp2_iCLIP / genedata_chr15revDbp2_Norm$Total_iCLIPhit
genedata_chr16revDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr16revDbp2_Norm$Dbp2_iCLIP / genedata_chr16revDbp2_Norm$Total_iCLIPhit

genedata_chr1fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr1fwDbp2_Norm$Dbp2_iCLIP / genedata_chr1fwDbp2_Norm$Total_iCLIPhit
genedata_chr2fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr2fwDbp2_Norm$Dbp2_iCLIP / genedata_chr2fwDbp2_Norm$Total_iCLIPhit
genedata_chr3fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr3fwDbp2_Norm$Dbp2_iCLIP / genedata_chr3fwDbp2_Norm$Total_iCLIPhit
genedata_chr4fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr4fwDbp2_Norm$Dbp2_iCLIP / genedata_chr4fwDbp2_Norm$Total_iCLIPhit
genedata_chr5fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr5fwDbp2_Norm$Dbp2_iCLIP / genedata_chr5fwDbp2_Norm$Total_iCLIPhit
genedata_chr6fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr6fwDbp2_Norm$Dbp2_iCLIP / genedata_chr6fwDbp2_Norm$Total_iCLIPhit
genedata_chr7fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr7fwDbp2_Norm$Dbp2_iCLIP / genedata_chr7fwDbp2_Norm$Total_iCLIPhit
genedata_chr8fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr8fwDbp2_Norm$Dbp2_iCLIP / genedata_chr8fwDbp2_Norm$Total_iCLIPhit
genedata_chr9fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr9fwDbp2_Norm$Dbp2_iCLIP / genedata_chr9fwDbp2_Norm$Total_iCLIPhit
genedata_chr10fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr10fwDbp2_Norm$Dbp2_iCLIP / genedata_chr10fwDbp2_Norm$Total_iCLIPhit
genedata_chr11fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr11fwDbp2_Norm$Dbp2_iCLIP / genedata_chr11fwDbp2_Norm$Total_iCLIPhit
genedata_chr12fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr12fwDbp2_Norm$Dbp2_iCLIP / genedata_chr12fwDbp2_Norm$Total_iCLIPhit
genedata_chr13fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr13fwDbp2_Norm$Dbp2_iCLIP / genedata_chr13fwDbp2_Norm$Total_iCLIPhit
genedata_chr14fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr14fwDbp2_Norm$Dbp2_iCLIP / genedata_chr14fwDbp2_Norm$Total_iCLIPhit
genedata_chr15fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr15fwDbp2_Norm$Dbp2_iCLIP / genedata_chr15fwDbp2_Norm$Total_iCLIPhit
genedata_chr16fwDbp2_Norm$Dbp2_iCLIPnorm <- genedata_chr16fwDbp2_Norm$Dbp2_iCLIP / genedata_chr16fwDbp2_Norm$Total_iCLIPhit

#Making Bedgraph. Add Position plus column 
genedata_chr1revDbp2_Norm$PosPlus <- genedata_chr1revDbp2_Norm[,2] + 1
genedata_chr2revDbp2_Norm$PosPlus <- genedata_chr2revDbp2_Norm[,2] + 1
genedata_chr3revDbp2_Norm$PosPlus <- genedata_chr3revDbp2_Norm[,2] + 1
genedata_chr4revDbp2_Norm$PosPlus <- genedata_chr4revDbp2_Norm[,2] + 1
genedata_chr5revDbp2_Norm$PosPlus <- genedata_chr5revDbp2_Norm[,2] + 1
genedata_chr6revDbp2_Norm$PosPlus <- genedata_chr6revDbp2_Norm[,2] + 1
genedata_chr7revDbp2_Norm$PosPlus <- genedata_chr7revDbp2_Norm[,2] + 1
genedata_chr8revDbp2_Norm$PosPlus <- genedata_chr8revDbp2_Norm[,2] + 1
genedata_chr9revDbp2_Norm$PosPlus <- genedata_chr9revDbp2_Norm[,2] + 1
genedata_chr10revDbp2_Norm$PosPlus <- genedata_chr10revDbp2_Norm[,2] + 1
genedata_chr11revDbp2_Norm$PosPlus <- genedata_chr11revDbp2_Norm[,2] + 1
genedata_chr12revDbp2_Norm$PosPlus <- genedata_chr12revDbp2_Norm[,2] + 1
genedata_chr13revDbp2_Norm$PosPlus <- genedata_chr13revDbp2_Norm[,2] + 1
genedata_chr14revDbp2_Norm$PosPlus <- genedata_chr14revDbp2_Norm[,2] + 1
genedata_chr15revDbp2_Norm$PosPlus <- genedata_chr15revDbp2_Norm[,2] + 1
genedata_chr16revDbp2_Norm$PosPlus <- genedata_chr16revDbp2_Norm[,2] + 1

genedata_chr1fwDbp2_Norm$PosPlus <- genedata_chr1fwDbp2_Norm[,2] + 1
genedata_chr2fwDbp2_Norm$PosPlus <- genedata_chr2fwDbp2_Norm[,2] + 1
genedata_chr3fwDbp2_Norm$PosPlus <- genedata_chr3fwDbp2_Norm[,2] + 1
genedata_chr4fwDbp2_Norm$PosPlus <- genedata_chr4fwDbp2_Norm[,2] + 1
genedata_chr5fwDbp2_Norm$PosPlus <- genedata_chr5fwDbp2_Norm[,2] + 1
genedata_chr6fwDbp2_Norm$PosPlus <- genedata_chr6fwDbp2_Norm[,2] + 1
genedata_chr7fwDbp2_Norm$PosPlus <- genedata_chr7fwDbp2_Norm[,2] + 1
genedata_chr8fwDbp2_Norm$PosPlus <- genedata_chr8fwDbp2_Norm[,2] + 1
genedata_chr9fwDbp2_Norm$PosPlus <- genedata_chr9fwDbp2_Norm[,2] + 1
genedata_chr10fwDbp2_Norm$PosPlus <- genedata_chr10fwDbp2_Norm[,2] + 1
genedata_chr11fwDbp2_Norm$PosPlus <- genedata_chr11fwDbp2_Norm[,2] + 1
genedata_chr12fwDbp2_Norm$PosPlus <- genedata_chr12fwDbp2_Norm[,2] + 1
genedata_chr13fwDbp2_Norm$PosPlus <- genedata_chr13fwDbp2_Norm[,2] + 1
genedata_chr14fwDbp2_Norm$PosPlus <- genedata_chr14fwDbp2_Norm[,2] + 1
genedata_chr15fwDbp2_Norm$PosPlus <- genedata_chr15fwDbp2_Norm[,2] + 1
genedata_chr16fwDbp2_Norm$PosPlus <- genedata_chr16fwDbp2_Norm[,2] + 1

#Keep only columns that I want
g <- c(1,2,12,8)
genedata_chr1revDbp2_Norm_Bedgraph<-genedata_chr1revDbp2_Norm[,g]
genedata_chr2revDbp2_Norm_Bedgraph<-genedata_chr2revDbp2_Norm[,g]
genedata_chr3revDbp2_Norm_Bedgraph<-genedata_chr3revDbp2_Norm[,g]
genedata_chr4revDbp2_Norm_Bedgraph<-genedata_chr4revDbp2_Norm[,g]
genedata_chr5revDbp2_Norm_Bedgraph<-genedata_chr5revDbp2_Norm[,g]
genedata_chr6revDbp2_Norm_Bedgraph<-genedata_chr6revDbp2_Norm[,g]
genedata_chr7revDbp2_Norm_Bedgraph<-genedata_chr7revDbp2_Norm[,g]
genedata_chr8revDbp2_Norm_Bedgraph<-genedata_chr8revDbp2_Norm[,g]
genedata_chr9revDbp2_Norm_Bedgraph<-genedata_chr9revDbp2_Norm[,g]
genedata_chr10revDbp2_Norm_Bedgraph<-genedata_chr10revDbp2_Norm[,g]
genedata_chr11revDbp2_Norm_Bedgraph<-genedata_chr11revDbp2_Norm[,g]
genedata_chr12revDbp2_Norm_Bedgraph<-genedata_chr12revDbp2_Norm[,g]
genedata_chr13revDbp2_Norm_Bedgraph<-genedata_chr13revDbp2_Norm[,g]
genedata_chr14revDbp2_Norm_Bedgraph<-genedata_chr14revDbp2_Norm[,g]
genedata_chr15revDbp2_Norm_Bedgraph<-genedata_chr15revDbp2_Norm[,g]
genedata_chr16revDbp2_Norm_Bedgraph<-genedata_chr16revDbp2_Norm[,g]

genedata_chr1fwDbp2_Norm_Bedgraph<-genedata_chr1fwDbp2_Norm[,g]
genedata_chr2fwDbp2_Norm_Bedgraph<-genedata_chr2fwDbp2_Norm[,g]
genedata_chr3fwDbp2_Norm_Bedgraph<-genedata_chr3fwDbp2_Norm[,g]
genedata_chr4fwDbp2_Norm_Bedgraph<-genedata_chr4fwDbp2_Norm[,g]
genedata_chr5fwDbp2_Norm_Bedgraph<-genedata_chr5fwDbp2_Norm[,g]
genedata_chr6fwDbp2_Norm_Bedgraph<-genedata_chr6fwDbp2_Norm[,g]
genedata_chr7fwDbp2_Norm_Bedgraph<-genedata_chr7fwDbp2_Norm[,g]
genedata_chr8fwDbp2_Norm_Bedgraph<-genedata_chr8fwDbp2_Norm[,g]
genedata_chr9fwDbp2_Norm_Bedgraph<-genedata_chr9fwDbp2_Norm[,g]
genedata_chr10fwDbp2_Norm_Bedgraph<-genedata_chr10fwDbp2_Norm[,g]
genedata_chr11fwDbp2_Norm_Bedgraph<-genedata_chr11fwDbp2_Norm[,g]
genedata_chr12fwDbp2_Norm_Bedgraph<-genedata_chr12fwDbp2_Norm[,g]
genedata_chr13fwDbp2_Norm_Bedgraph<-genedata_chr13fwDbp2_Norm[,g]
genedata_chr14fwDbp2_Norm_Bedgraph<-genedata_chr14fwDbp2_Norm[,g]
genedata_chr15fwDbp2_Norm_Bedgraph<-genedata_chr15fwDbp2_Norm[,g]
genedata_chr16fwDbp2_Norm_Bedgraph<-genedata_chr16fwDbp2_Norm[,g]

#print Bedgraphs
#binding the bedgraph files took up too much memory. So I printed them all so I can erase my workspace 
#Then read in the files and run the rBind. This worked. 
write.table(genedata_chr1revDbp2_Norm_Bedgraph, file = "genedata_chr1revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr2revDbp2_Norm_Bedgraph, file = "genedata_chr2revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr3revDbp2_Norm_Bedgraph, file = "genedata_chr3revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr4revDbp2_Norm_Bedgraph, file = "genedata_chr4revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr5revDbp2_Norm_Bedgraph, file = "genedata_chr5revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr6revDbp2_Norm_Bedgraph, file = "genedata_chr6revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr7revDbp2_Norm_Bedgraph, file = "genedata_chr7revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr8revDbp2_Norm_Bedgraph, file = "genedata_chr8revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr9revDbp2_Norm_Bedgraph, file = "genedata_chr9revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr10revDbp2_Norm_Bedgraph, file = "genedata_chr10revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr11revDbp2_Norm_Bedgraph, file = "genedata_chr11revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr12revDbp2_Norm_Bedgraph, file = "genedata_chr12revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr13revDbp2_Norm_Bedgraph, file = "genedata_chr13revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr14revDbp2_Norm_Bedgraph, file = "genedata_chr14revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr15revDbp2_Norm_Bedgraph, file = "genedata_chr15revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr16revDbp2_Norm_Bedgraph, file = "genedata_chr16revDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)

write.table(genedata_chr1fwDbp2_Norm_Bedgraph, file = "genedata_chr1fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr2fwDbp2_Norm_Bedgraph, file = "genedata_chr2fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr3fwDbp2_Norm_Bedgraph, file = "genedata_chr3fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr4fwDbp2_Norm_Bedgraph, file = "genedata_chr4fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr5fwDbp2_Norm_Bedgraph, file = "genedata_chr5fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr6fwDbp2_Norm_Bedgraph, file = "genedata_chr6fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr7fwDbp2_Norm_Bedgraph, file = "genedata_chr7fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr8fwDbp2_Norm_Bedgraph, file = "genedata_chr8fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr9fwDbp2_Norm_Bedgraph, file = "genedata_chr9fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr10fwDbp2_Norm_Bedgraph, file = "genedata_chr10fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr11fwDbp2_Norm_Bedgraph, file = "genedata_chr11fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr12fwDbp2_Norm_Bedgraph, file = "genedata_chr12fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr13fwDbp2_Norm_Bedgraph, file = "genedata_chr13fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr14fwDbp2_Norm_Bedgraph, file = "genedata_chr14fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr15fwDbp2_Norm_Bedgraph, file = "genedata_chr15fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)
write.table(genedata_chr16fwDbp2_Norm_Bedgraph, file = "genedata_chr16fwDbp2_Norm_Bedgraph.txt", sep = "\t",row.names = F,col.names = F, quote=T)

setwd("C:/Users/fated/OneDrive/R")
genedata_chr1revDbp2_Norm_Bedgraph<-read.delim("genedata_chr1revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2revDbp2_Norm_Bedgraph<-read.delim("genedata_chr2revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3revDbp2_Norm_Bedgraph<-read.delim("genedata_chr3revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4revDbp2_Norm_Bedgraph<-read.delim("genedata_chr4revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5revDbp2_Norm_Bedgraph<-read.delim("genedata_chr5revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6revDbp2_Norm_Bedgraph<-read.delim("genedata_chr6revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7revDbp2_Norm_Bedgraph<-read.delim("genedata_chr7revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8revDbp2_Norm_Bedgraph<-read.delim("genedata_chr8revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9revDbp2_Norm_Bedgraph<-read.delim("genedata_chr9revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10revDbp2_Norm_Bedgraph<-read.delim("genedata_chr10revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11revDbp2_Norm_Bedgraph<-read.delim("genedata_chr11revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12revDbp2_Norm_Bedgraph<-read.delim("genedata_chr12revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13revDbp2_Norm_Bedgraph<-read.delim("genedata_chr13revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14revDbp2_Norm_Bedgraph<-read.delim("genedata_chr14revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15revDbp2_Norm_Bedgraph<-read.delim("genedata_chr15revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16revDbp2_Norm_Bedgraph<-read.delim("genedata_chr16revDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr1fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr2fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr3fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr4fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr5fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr6fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr7fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr8fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr9fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr10fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr11fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr12fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr13fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr14fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr15fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fwDbp2_Norm_Bedgraph<-read.delim("genedata_chr16fwDbp2_Norm_Bedgraph.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)


#Had to re-set the column names to make sure they match.
colnames(genedata_chr1revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr2revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr3revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr4revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr5revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr6revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr7revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr8revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr9revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr10revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr11revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr12revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr13revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr14revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr15revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr16revDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")

colnames(genedata_chr1fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr2fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr3fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr4fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr5fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr6fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr7fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr8fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr9fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr10fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr11fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr12fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr13fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr14fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr15fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")
colnames(genedata_chr16fwDbp2_Norm_Bedgraph)<- c("chr","Pos Start","Pos Stop","Norm_iCLIP")

#Bind bedgraph data end to end into two files Fw and Rev strand
allgenedataNorm_Bedgraphs_fw <- rbind.data.frame(genedata_chr1fwDbp2_Norm_Bedgraph,
                                      genedata_chr2fwDbp2_Norm_Bedgraph,
                                      genedata_chr3fwDbp2_Norm_Bedgraph,
                                      genedata_chr4fwDbp2_Norm_Bedgraph,
                                   genedata_chr5fwDbp2_Norm_Bedgraph,
                                   genedata_chr6fwDbp2_Norm_Bedgraph,
                                   genedata_chr7fwDbp2_Norm_Bedgraph,
                                   genedata_chr8fwDbp2_Norm_Bedgraph,
                                   genedata_chr9fwDbp2_Norm_Bedgraph,
                                   genedata_chr10fwDbp2_Norm_Bedgraph,
                                   genedata_chr11fwDbp2_Norm_Bedgraph,
                                   genedata_chr12fwDbp2_Norm_Bedgraph,
                                   genedata_chr13fwDbp2_Norm_Bedgraph,
                                   genedata_chr14fwDbp2_Norm_Bedgraph,
                                   genedata_chr15fwDbp2_Norm_Bedgraph,
                                   genedata_chr16fwDbp2_Norm_Bedgraph)

allgenedataNorm_Bedgraphs_rev <- rbind(genedata_chr1revDbp2_Norm_Bedgraph,genedata_chr2revDbp2_Norm_Bedgraph,genedata_chr3revDbp2_Norm_Bedgraph,
                                       genedata_chr4revDbp2_Norm_Bedgraph,genedata_chr5revDbp2_Norm_Bedgraph,genedata_chr6revDbp2_Norm_Bedgraph,
                                       genedata_chr7revDbp2_Norm_Bedgraph,genedata_chr8revDbp2_Norm_Bedgraph,genedata_chr9revDbp2_Norm_Bedgraph
                                       ,genedata_chr10revDbp2_Norm_Bedgraph,genedata_chr11revDbp2_Norm_Bedgraph,genedata_chr12revDbp2_Norm_Bedgraph,
                                       genedata_chr13revDbp2_Norm_Bedgraph,genedata_chr14revDbp2_Norm_Bedgraph,genedata_chr15revDbp2_Norm_Bedgraph,genedata_chr16revDbp2_Norm_Bedgraph)

#print final Bedgraph files                                       
write.table(allgenedataNorm_Bedgraphs_rev, file = "allgenedataNorm_Bedgraphs_rev.txt", sep = "\t",row.names = F,col.names = F, quote=F)
write.table(allgenedataNorm_Bedgraphs_fw, file = "allgenedataNorm_Bedgraphs_fw.txt", sep = "\t",row.names = F,col.names = F, quote=F)

#Print the genedata table with Norm values
write.table(genedata_chr1revDbp2_Norm, file = "genedata_chr1revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2revDbp2_Norm, file = "genedata_chr2revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3revDbp2_Norm, file = "genedata_chr3revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4revDbp2_Norm, file = "genedata_chr4revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5revDbp2_Norm, file = "genedata_chr5revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6revDbp2_Norm, file = "genedata_chr6revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7revDbp2_Norm, file = "genedata_chr7revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8revDbp2_Norm, file = "genedata_chr8revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9revDbp2_Norm, file = "genedata_chr9revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10revDbp2_Norm, file = "genedata_chr10revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11revDbp2_Norm, file = "genedata_chr11revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12revDbp2_Norm, file = "genedata_chr12revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13revDbp2_Norm, file = "genedata_chr13revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14revDbp2_Norm, file = "genedata_chr14revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15revDbp2_Norm, file = "genedata_chr15revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16revDbp2_Norm, file = "genedata_chr16revDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1fwDbp2_Norm, file = "genedata_chr1fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fwDbp2_Norm, file = "genedata_chr2fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fwDbp2_Norm, file = "genedata_chr3fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fwDbp2_Norm, file = "genedata_chr4fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fwDbp2_Norm, file = "genedata_chr5fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fwDbp2_Norm, file = "genedata_chr6fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fwDbp2_Norm, file = "genedata_chr7fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fwDbp2_Norm, file = "genedata_chr8fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fwDbp2_Norm, file = "genedata_chr9fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fwDbp2_Norm, file = "genedata_chr10fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fwDbp2_Norm, file = "genedata_chr11fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fwDbp2_Norm, file = "genedata_chr12fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fwDbp2_Norm, file = "genedata_chr13fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fwDbp2_Norm, file = "genedata_chr14fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fwDbp2_Norm, file = "genedata_chr15fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fwDbp2_Norm, file = "genedata_chr16fwDbp2_Norm.txt", sep = "\t",row.names = F,col.names = T, quote=T)

#norm data with unassigned genes still in. 
write.table(genedata_chr1revDbp2_Norm, file = "genedata_chr1revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2revDbp2_Norm, file = "genedata_chr2revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3revDbp2_Norm, file = "genedata_chr3revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4revDbp2_Norm, file = "genedata_chr4revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5revDbp2_Norm, file = "genedata_chr5revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6revDbp2_Norm, file = "genedata_chr6revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7revDbp2_Norm, file = "genedata_chr7revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8revDbp2_Norm, file = "genedata_chr8revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9revDbp2_Norm, file = "genedata_chr9revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10revDbp2_Norm, file = "genedata_chr10revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11revDbp2_Norm, file = "genedata_chr11revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12revDbp2_Norm, file = "genedata_chr12revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13revDbp2_Norm, file = "genedata_chr13revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14revDbp2_Norm, file = "genedata_chr14revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15revDbp2_Norm, file = "genedata_chr15revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16revDbp2_Norm, file = "genedata_chr16revDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)

write.table(genedata_chr1fwDbp2_Norm, file = "genedata_chr1fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr2fwDbp2_Norm, file = "genedata_chr2fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr3fwDbp2_Norm, file = "genedata_chr3fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr4fwDbp2_Norm, file = "genedata_chr4fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr5fwDbp2_Norm, file = "genedata_chr5fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr6fwDbp2_Norm, file = "genedata_chr6fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr7fwDbp2_Norm, file = "genedata_chr7fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr8fwDbp2_Norm, file = "genedata_chr8fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr9fwDbp2_Norm, file = "genedata_chr9fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr10fwDbp2_Norm, file = "genedata_chr10fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr11fwDbp2_Norm, file = "genedata_chr11fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr12fwDbp2_Norm, file = "genedata_chr12fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr13fwDbp2_Norm, file = "genedata_chr13fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr14fwDbp2_Norm, file = "genedata_chr14fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr15fwDbp2_Norm, file = "genedata_chr15fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
write.table(genedata_chr16fwDbp2_Norm, file = "genedata_chr16fwDbp2_NormUN.txt", sep = "\t",row.names = F,col.names = T, quote=T)
