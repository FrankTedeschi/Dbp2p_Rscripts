#3' end binding with full reads to look at binding to mature transcripts

setwd("C:/Users/fated/OneDrive/R")

library(gdata)
library(reshape2)
library(reshape)
library(plyr)


#read in Dbp2p full read files
Dbp2_Watson_fullread <-read.delim("Dbp2p_FullRead_Watson_Output.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
Dbp2_Crick_fullread <-read.delim("Dbp2p_FullRead_Crick_Output.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

D2rep_Watson_fullread <-read.delim("D2rep_Watson_FullRead_Output.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
D2rep_Crick_fullread <-read.delim("D2rep_Crick_FullRead_Output.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

colnames(Dbp2_Watson_fullread)<- c("chromosome","pos","Dbp2_hits_FR")
colnames(Dbp2_Crick_fullread)<- c("chromosome","pos","Dbp2_hits_FR")

colnames(D2rep_Watson_fullread)<- c("chromosome","pos","D2rep_hits_FR")
colnames(D2rep_Crick_fullread)<- c("chromosome","pos","D2rep_hits_FR")




chr1rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrI"),]
chr2rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrII"),]
chr3rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrIII"),]
chr4rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrIV"),]
chr5rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrV"),]
chr6rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrVI"),]
chr7rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrVII"),]
chr8rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrVIII"),]
chr9rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrIX"),]
chr10rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrX"),]
chr11rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrXI"),]
chr12rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrXII"),]
chr13rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrXIII"),]
chr14rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrXIV"),]
chr15rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrXV"),]
chr16rev_Dbp2_FR<- Dbp2_Crick_fullread[which(Dbp2_Crick_fullread$chromosome=="chrVXI"),]

chr1fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrI"),]
chr2fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrII"),]
chr3fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrIII"),]
chr4fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrIV"),]
chr5fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrV"),]
chr6fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrVI"),]
chr7fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrVII"),]
chr8fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrVIII"),]
chr9fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrIX"),]
chr10fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrX"),]
chr11fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXI"),]
chr12fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXII"),]
chr13fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXIII"),]
chr14fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXIV"),]
chr15fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXV"),]
chr16fw_Dbp2_FR<- Dbp2_Watson_fullread[which(Dbp2_Watson_fullread$chromosome=="chrXVI"),]

chr1rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrI"),]
chr2rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrII"),]
chr3rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrIII"),]
chr4rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrIV"),]
chr5rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrV"),]
chr6rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrVI"),]
chr7rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrVII"),]
chr8rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrVIII"),]
chr9rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrIX"),]
chr10rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrX"),]
chr11rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXI"),]
chr12rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXII"),]
chr13rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXIII"),]
chr14rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXIV"),]
chr15rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXV"),]
chr16rev_D2rep_FR<- D2rep_Crick_fullread[which(D2rep_Crick_fullread$chromosome=="chrXVI"),]

chr1fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrI"),]
chr2fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrII"),]
chr3fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrIII"),]
chr4fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrIV"),]
chr5fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrV"),]
chr6fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrVI"),]
chr7fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrVII"),]
chr8fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrVIII"),]
chr9fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrIX"),]
chr10fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrX"),]
chr11fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXI"),]
chr12fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXII"),]
chr13fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXIII"),]
chr14fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXIV"),]
chr15fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXV"),]
chr16fw_D2rep_FR<- D2rep_Watson_fullread[which(D2rep_Watson_fullread$chromosome=="chrXVI"),]

#D2 add
genedata_chr1fw_D2FR<- join(genedata_chr1fw_sm,chr1fw_Dbp2_FR, by="pos")
genedata_chr2fw_D2FR<- join(genedata_chr2fw_sm,chr2fw_Dbp2_FR, by="pos")
genedata_chr3fw_D2FR<- join(genedata_chr3fw_sm,chr3fw_Dbp2_FR, by="pos")
genedata_chr4fw_D2FR<- join(genedata_chr4fw_sm,chr4fw_Dbp2_FR, by="pos")
genedata_chr5fw_D2FR<- join(genedata_chr5fw_sm,chr5fw_Dbp2_FR, by="pos")
genedata_chr6fw_D2FR<- join(genedata_chr6fw_sm,chr6fw_Dbp2_FR, by="pos")
genedata_chr7fw_D2FR<- join(genedata_chr7fw_sm,chr7fw_Dbp2_FR, by="pos")
genedata_chr8fw_D2FR<- join(genedata_chr8fw_sm,chr8fw_Dbp2_FR, by="pos")
genedata_chr9fw_D2FR<- join(genedata_chr9fw_sm,chr9fw_Dbp2_FR, by="pos")
genedata_chr10fw_D2FR<- join(genedata_chr10fw_sm,chr10fw_Dbp2_FR, by="pos")
genedata_chr11fw_D2FR<- join(genedata_chr11fw_sm,chr11fw_Dbp2_FR, by="pos")
genedata_chr12fw_D2FR<- join(genedata_chr12fw_sm,chr12fw_Dbp2_FR, by="pos")
genedata_chr13fw_D2FR<- join(genedata_chr13fw_sm,chr13fw_Dbp2_FR, by="pos")
genedata_chr14fw_D2FR<- join(genedata_chr14fw_sm,chr14fw_Dbp2_FR, by="pos")
genedata_chr15fw_D2FR<- join(genedata_chr15fw_sm,chr15fw_Dbp2_FR, by="pos")
genedata_chr16fw_D2FR<- join(genedata_chr16fw_sm,chr16fw_Dbp2_FR, by="pos")

genedata_chr1rev_D2FR<- join(genedata_chr1rev_sm,chr1rev_Dbp2_FR, by="pos")
genedata_chr2rev_D2FR<- join(genedata_chr2rev_sm,chr2rev_Dbp2_FR, by="pos")
genedata_chr3rev_D2FR<- join(genedata_chr3rev_sm,chr3rev_Dbp2_FR, by="pos")
genedata_chr4rev_D2FR<- join(genedata_chr4rev_sm,chr4rev_Dbp2_FR, by="pos")
genedata_chr5rev_D2FR<- join(genedata_chr5rev_sm,chr5rev_Dbp2_FR, by="pos")
genedata_chr6rev_D2FR<- join(genedata_chr6rev_sm,chr6rev_Dbp2_FR, by="pos")
genedata_chr7rev_D2FR<- join(genedata_chr7rev_sm,chr7rev_Dbp2_FR, by="pos")
genedata_chr8rev_D2FR<- join(genedata_chr8rev_sm,chr8rev_Dbp2_FR, by="pos")
genedata_chr9rev_D2FR<- join(genedata_chr9rev_sm,chr9rev_Dbp2_FR, by="pos")
genedata_chr10rev_D2FR<- join(genedata_chr10rev_sm,chr10rev_Dbp2_FR, by="pos")
genedata_chr11rev_D2FR<- join(genedata_chr11rev_sm,chr11rev_Dbp2_FR, by="pos")
genedata_chr12rev_D2FR<- join(genedata_chr12rev_sm,chr12rev_Dbp2_FR, by="pos")
genedata_chr13rev_D2FR<- join(genedata_chr13rev_sm,chr13rev_Dbp2_FR, by="pos")
genedata_chr14rev_D2FR<- join(genedata_chr14rev_sm,chr14rev_Dbp2_FR, by="pos")
genedata_chr15rev_D2FR<- join(genedata_chr15rev_sm,chr15rev_Dbp2_FR, by="pos")
genedata_chr16rev_D2FR<- join(genedata_chr16rev_sm,chr16rev_Dbp2_FR, by="pos")

#D2rep add
genedata_chr1fw_D2FR<- join(genedata_chr1fw_D2FR,chr1fw_D2rep_FR, by="pos")
genedata_chr2fw_D2FR<- join(genedata_chr2fw_D2FR,chr2fw_D2rep_FR, by="pos")
genedata_chr3fw_D2FR<- join(genedata_chr3fw_D2FR,chr3fw_D2rep_FR, by="pos")
genedata_chr4fw_D2FR<- join(genedata_chr4fw_D2FR,chr4fw_D2rep_FR, by="pos")
genedata_chr5fw_D2FR<- join(genedata_chr5fw_D2FR,chr5fw_D2rep_FR, by="pos")
genedata_chr6fw_D2FR<- join(genedata_chr6fw_D2FR,chr6fw_D2rep_FR, by="pos")
genedata_chr7fw_D2FR<- join(genedata_chr7fw_D2FR,chr7fw_D2rep_FR, by="pos")
genedata_chr8fw_D2FR<- join(genedata_chr8fw_D2FR,chr8fw_D2rep_FR, by="pos")
genedata_chr9fw_D2FR<- join(genedata_chr9fw_D2FR,chr9fw_D2rep_FR, by="pos")
genedata_chr10fw_D2FR<- join(genedata_chr10fw_D2FR,chr10fw_D2rep_FR, by="pos")
genedata_chr11fw_D2FR<- join(genedata_chr11fw_D2FR,chr11fw_D2rep_FR, by="pos")
genedata_chr12fw_D2FR<- join(genedata_chr12fw_D2FR,chr12fw_D2rep_FR, by="pos")
genedata_chr13fw_D2FR<- join(genedata_chr13fw_D2FR,chr13fw_D2rep_FR, by="pos")
genedata_chr14fw_D2FR<- join(genedata_chr14fw_D2FR,chr14fw_D2rep_FR, by="pos")
genedata_chr15fw_D2FR<- join(genedata_chr15fw_D2FR,chr15fw_D2rep_FR, by="pos")
genedata_chr16fw_D2FR<- join(genedata_chr16fw_D2FR,chr16fw_D2rep_FR, by="pos")

genedata_chr1rev_D2FR<- join(genedata_chr1rev_D2FR,chr1rev_D2rep_FR, by="pos")
genedata_chr2rev_D2FR<- join(genedata_chr2rev_D2FR,chr2rev_D2rep_FR, by="pos")
genedata_chr3rev_D2FR<- join(genedata_chr3rev_D2FR,chr3rev_D2rep_FR, by="pos")
genedata_chr4rev_D2FR<- join(genedata_chr4rev_D2FR,chr4rev_D2rep_FR, by="pos")
genedata_chr5rev_D2FR<- join(genedata_chr5rev_D2FR,chr5rev_D2rep_FR, by="pos")
genedata_chr6rev_D2FR<- join(genedata_chr6rev_D2FR,chr6rev_D2rep_FR, by="pos")
genedata_chr7rev_D2FR<- join(genedata_chr7rev_D2FR,chr7rev_D2rep_FR, by="pos")
genedata_chr8rev_D2FR<- join(genedata_chr8rev_D2FR,chr8rev_D2rep_FR, by="pos")
genedata_chr9rev_D2FR<- join(genedata_chr9rev_D2FR,chr9rev_D2rep_FR, by="pos")
genedata_chr10rev_D2FR<- join(genedata_chr10rev_D2FR,chr10rev_D2rep_FR, by="pos")
genedata_chr11rev_D2FR<- join(genedata_chr11rev_D2FR,chr11rev_D2rep_FR, by="pos")
genedata_chr12rev_D2FR<- join(genedata_chr12rev_D2FR,chr12rev_D2rep_FR, by="pos")
genedata_chr13rev_D2FR<- join(genedata_chr13rev_D2FR,chr13rev_D2rep_FR, by="pos")
genedata_chr14rev_D2FR<- join(genedata_chr14rev_D2FR,chr14rev_D2rep_FR, by="pos")
genedata_chr15rev_D2FR<- join(genedata_chr15rev_D2FR,chr15rev_D2rep_FR, by="pos")
genedata_chr16rev_D2FR<- join(genedata_chr16rev_D2FR,chr16rev_D2rep_FR, by="pos")


e<-c(1:5)
genedata_chr1fw_sm <-genedata_chr1fw[,e]
genedata_chr2fw_sm <-genedata_chr2fw[,e]
genedata_chr3fw_sm <-genedata_chr3fw[,e]
genedata_chr4fw_sm <-genedata_chr4fw[,e]
genedata_chr5fw_sm <-genedata_chr5fw[,e]
genedata_chr6fw_sm <-genedata_chr6fw[,e]
genedata_chr7fw_sm <-genedata_chr7fw[,e]
genedata_chr8fw_sm <-genedata_chr8fw[,e]
genedata_chr9fw_sm <-genedata_chr9fw[,e]
genedata_chr10fw_sm <-genedata_chr10fw[,e]
genedata_chr11fw_sm <-genedata_chr11fw[,e]
genedata_chr12fw_sm <-genedata_chr12fw[,e]
genedata_chr13fw_sm <-genedata_chr13fw[,e]
genedata_chr14fw_sm <-genedata_chr14fw[,e]
genedata_chr15fw_sm <-genedata_chr15fw[,e]
genedata_chr16fw_sm <-genedata_chr16fw[,e]

genedata_chr1rev_sm <-genedata_chr1rev[,e]
genedata_chr2rev_sm <-genedata_chr2rev[,e]
genedata_chr3rev_sm <-genedata_chr3rev[,e]
genedata_chr4rev_sm <-genedata_chr4rev[,e]
genedata_chr5rev_sm <-genedata_chr5rev[,e]
genedata_chr6rev_sm <-genedata_chr6rev[,e]
genedata_chr7rev_sm <-genedata_chr7rev[,e]
genedata_chr8rev_sm <-genedata_chr8rev[,e]
genedata_chr9rev_sm <-genedata_chr9rev[,e]
genedata_chr10rev_sm <-genedata_chr10rev[,e]
genedata_chr11rev_sm <-genedata_chr11rev[,e]
genedata_chr12rev_sm <-genedata_chr12rev[,e]
genedata_chr13rev_sm <-genedata_chr13rev[,e]
genedata_chr14rev_sm <-genedata_chr14rev[,e]
genedata_chr15rev_sm <-genedata_chr15rev[,e]
genedata_chr16rev_sm <-genedata_chr16rev[,e]

#read in genedata table but reduce it with the code above.
genedata_chr1rev<- read.delim("New3_Mastergenedata_chr1rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2rev<- read.delim("New3_Mastergenedata_chr2rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3rev<- read.delim("New3_Mastergenedata_chr3rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4rev<- read.delim("New3_Mastergenedata_chr4rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5rev<- read.delim("New3_Mastergenedata_chr5rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6rev<- read.delim("New3_Mastergenedata_chr6rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7rev<- read.delim("New3_Mastergenedata_chr7rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8rev<- read.delim("New3_Mastergenedata_chr8rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9rev<- read.delim("New3_Mastergenedata_chr9rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10rev<- read.delim("New3_Mastergenedata_chr10rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11rev<- read.delim("New3_Mastergenedata_chr11rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12rev<- read.delim("New3_Mastergenedata_chr12rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13rev<- read.delim("New3_Mastergenedata_chr13rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14rev<- read.delim("New3_Mastergenedata_chr14rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15rev<- read.delim("New3_Mastergenedata_chr15rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16rev<- read.delim("New3_Mastergenedata_chr16rev.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

genedata_chr1fw<- read.delim("New3_Mastergenedata_chr1fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr2fw<- read.delim("New3_Mastergenedata_chr2fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr3fw<- read.delim("New3_Mastergenedata_chr3fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr4fw<- read.delim("New3_Mastergenedata_chr4fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr5fw<- read.delim("New3_Mastergenedata_chr5fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr6fw<- read.delim("New3_Mastergenedata_chr6fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr7fw<- read.delim("New3_Mastergenedata_chr7fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr8fw<- read.delim("New3_Mastergenedata_chr8fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr9fw<- read.delim("New3_Mastergenedata_chr9fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr10fw<- read.delim("New3_Mastergenedata_chr10fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr11fw<- read.delim("New3_Mastergenedata_chr11fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr12fw<- read.delim("New3_Mastergenedata_chr12fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr13fw<- read.delim("New3_Mastergenedata_chr13fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr14fw<- read.delim("New3_Mastergenedata_chr14fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr15fw<- read.delim("New3_Mastergenedata_chr15fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
genedata_chr16fw<- read.delim("New3_Mastergenedata_chr16fw.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)




#######################################End binding Script###
SnoRNA_3end <-read.delim("snoRNA_ALL_ends.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)

colnames(SnoRNA_3end)<- c("gene","chromosome","pos","strand")

#split by strand
snoRNA_3end_crick<- SnoRNA_3end[which(SnoRNA_3end$strand=="-1"),]
snoRNA_3end_watson<- SnoRNA_3end[which(SnoRNA_3end$strand=="1"),]

#two columns- chrom and pos
q<- c(2,3)
snoRNA_3end_crick<-snoRNA_3end_crick[,q]
snoRNA_3end_watson<-snoRNA_3end_watson[,q]

chr1rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr1"),]
chr2rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr2"),]
chr3rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr3"),]
chr4rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr4"),]
chr5rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr5"),]
chr6rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr6"),]
chr7rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr7"),]
chr8rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr8"),]
chr9rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr9"),]
chr10rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr10"),]
chr11rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr11"),]
chr12rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr12"),]
chr13rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr13"),]
chr14rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr14"),]
chr15rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr15"),]
chr16rev_snoRNA_CDend<- snoRNA_3end_crick[which(snoRNA_3end_crick$chromosome=="chr16"),]

chr1fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr1"),]
chr2fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr2"),]
chr3fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr3"),]
chr4fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr4"),]
chr5fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr5"),]
chr6fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr6"),]
chr7fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr7"),]
chr8fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr8"),]
chr9fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr9"),]
chr10fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr10"),]
chr11fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr11"),]
chr12fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr12"),]
chr13fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr13"),]
chr14fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr14"),]
chr15fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr15"),]
chr16fw_snoRNA_CDend<- snoRNA_3end_watson[which(snoRNA_3end_watson$chromosome=="chr16"),]








a<-c(-50:25)
b<-c(chr1fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat
rownames(mat)=UTR5_TISonly_chr1fw$uniqueID
colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr1fw_D2FR$pos, genedata_chr1fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr1fw<- join(md, D2clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1fw$pos, genedata_chr1fw$ratioDMSNorm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1fw<- join(UTR5_TISonlySur_chr1fw, DMSratio, by = "pos")

#chr2fw
b<- NULL 
b<-c(chr2fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr2fw_D2FR$pos, genedata_chr2fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr2fw<- join(md, D2clip, by = "pos")

#chr3fw
b<- NULL 
b<-c(chr3fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr3fw_D2FR$pos, genedata_chr3fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr3fw<- join(md, D2clip, by = "pos")

#chr4fw
b<- NULL 
b<-c(chr4fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr4fw_D2FR$pos, genedata_chr4fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr4fw<- join(md, D2clip, by = "pos")

#chr5fw
b<- NULL 
b<-c(chr5fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr5fw_D2FR$pos, genedata_chr5fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr5fw<- join(md, D2clip, by = "pos")

#chr6fw
b<- NULL 
b<-c(chr6fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr6fw_D2FR$pos, genedata_chr6fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr6fw<- join(md, D2clip, by = "pos")

#chr7fw
b<- NULL 
b<-c(chr7fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr7fw_D2FR$pos, genedata_chr7fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr7fw<- join(md, D2clip, by = "pos")

#chr8fw
b<- NULL 
b<-c(chr8fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr8fw_D2FR$pos, genedata_chr8fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr8fw<- join(md, D2clip, by = "pos")

#chr9fw
b<- NULL 
b<-c(chr9fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr9fw_D2FR$pos, genedata_chr9fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr9fw<- join(md, D2clip, by = "pos")


#chr10fw
b<- NULL 
b<-c(chr10fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr10fw_D2FR$pos, genedata_chr10fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr10fw<- join(md, D2clip, by = "pos")

#chr11fw
b<- NULL 
b<-c(chr11fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr11fw_D2FR$pos, genedata_chr11fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr11fw<- join(md, D2clip, by = "pos")

#chr12fw
b<- NULL 
b<-c(chr12fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr12fw_D2FR$pos, genedata_chr12fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr12fw<- join(md, D2clip, by = "pos")

#chr13fw
b<- NULL 
b<-c(chr13fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr13fw_D2FR$pos, genedata_chr13fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr13fw<- join(md, D2clip, by = "pos")

#chr14fw
b<- NULL 
b<-c(chr14fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr14fw_D2FR$pos, genedata_chr14fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr14fw<- join(md, D2clip, by = "pos")

#chr15fw
b<- NULL 
b<-c(chr15fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr15fw_D2FR$pos, genedata_chr15fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr15fw<- join(md, D2clip, by = "pos")

#chr16fw
b<- NULL 
b<-c(chr16fw_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat

colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]+a[j]
  } 
}
#mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr16fw_D2FR$pos, genedata_chr16fw_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr16fw<- join(md, D2clip, by = "pos")

#ReverseStrand
b<-c(chr1rev_snoRNA_CDend$pos)
mat<-matrix(0,nrow<-length(b),ncol<-length(a))
#check dimensions of mat
rownames(mat)=UTR5_TISonly_chr1rev$uniqueID
colnames(mat)=a
#run the for loop to calculate the nt positions surrounding the TIS sites
for (i in (1:length(b))){
  for (j in (1:length(a))){
    mat[i,j]<-b[i]-a[j]
  } 
}
mat
#reshaping the table from wide to long format
md<-NULL
md <- melt(mat, id=rownames)
colnames(md)<-c("uniqueID", "Distance", "pos")

#Ded1 Data vector
D2clip<-NULL
D2clip<-as.data.frame(cbind(genedata_chr1rev_D2FR$pos, genedata_chr1rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr1rev<- join(md, D2clip, by = "pos")

#made all this into comment because I don't think I need it for my analysis at this point.
#
#DMSratio<-NULL
#DMSratio<-as.data.frame(cbind(genedata_chr1rev$pos, genedata_chr1rev$ratioDMSNorm))
#colnames(DMSratio)=c("pos","DMSratio")
#UTR5_TISonlySur_chr1rev<- join(UTR5_TISonlySur_chr1rev, DMSratio, by = "pos")

#chr2rev
b<- NULL 
b<-c(chr2rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr2rev_D2FR$pos, genedata_chr2rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr2rev<- join(md, D2clip, by = "pos")

#chr3rev
b<- NULL 
b<-c(chr3rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr3rev_D2FR$pos, genedata_chr3rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr3rev<- join(md, D2clip, by = "pos")

#chr4rev
b<- NULL 
b<-c(chr4rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr4rev_D2FR$pos, genedata_chr4rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr4rev<- join(md, D2clip, by = "pos")

#chr5rev
b<- NULL 
b<-c(chr5rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr5rev_D2FR$pos, genedata_chr5rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr5rev<- join(md, D2clip, by = "pos")

#chr6rev
b<- NULL 
b<-c(chr6rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr6rev_D2FR$pos, genedata_chr6rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr6rev<- join(md, D2clip, by = "pos")

#chr7rev
b<- NULL 
b<-c(chr7rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr7rev_D2FR$pos, genedata_chr7rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr7rev<- join(md, D2clip, by = "pos")

#chr8rev
b<- NULL 
b<-c(chr8rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr8rev_D2FR$pos, genedata_chr8rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr8rev<- join(md, D2clip, by = "pos")

#chr9rev
b<- NULL 
b<-c(chr9rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr9rev_D2FR$pos, genedata_chr9rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr9rev<- join(md, D2clip, by = "pos")


#chr10rev
b<- NULL 
b<-c(chr10rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr10rev_D2FR$pos, genedata_chr10rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr10rev<- join(md, D2clip, by = "pos")

#chr11rev
b<- NULL 
b<-c(chr11rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr11rev_D2FR$pos, genedata_chr11rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr11rev<- join(md, D2clip, by = "pos")

#chr12rev
b<- NULL 
b<-c(chr12rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr12rev_D2FR$pos, genedata_chr12rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr12rev<- join(md, D2clip, by = "pos")

#chr13rev
b<- NULL 
b<-c(chr13rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr13rev_D2FR$pos, genedata_chr13rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr13rev<- join(md, D2clip, by = "pos")

#chr14rev
b<- NULL 
b<-c(chr14rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr14rev_D2FR$pos, genedata_chr14rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr14rev<- join(md, D2clip, by = "pos")

#chr15rev
b<- NULL 
b<-c(chr15rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr15rev_D2FR$pos, genedata_chr15rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr15rev<- join(md, D2clip, by = "pos")

#chr16rev
b<- NULL 
b<-c(chr16rev_snoRNA_CDend$pos)
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
D2clip<-as.data.frame(cbind(genedata_chr16rev_D2FR$pos, genedata_chr16rev_D2FR$Dbp2_hits_FR))
colnames(D2clip)=c("pos","Dbp2_FR")

D2BindingPeaks_chr16rev<- join(md, D2clip, by = "pos")

D2BindingPeaks_Sen1normsurround_all<- rbind(D2BindingPeaks_chr1fw,
                                            D2BindingPeaks_chr2fw,
                                            D2BindingPeaks_chr3fw,
                                            D2BindingPeaks_chr4fw,
                                            D2BindingPeaks_chr5fw,
                                            
                                            D2BindingPeaks_chr7fw,
                                            D2BindingPeaks_chr8fw,
                                            D2BindingPeaks_chr9fw,
                                            D2BindingPeaks_chr10fw,
                                            D2BindingPeaks_chr11fw,
                                            D2BindingPeaks_chr12fw,
                                            D2BindingPeaks_chr13fw,
                                            D2BindingPeaks_chr14fw,
                                            D2BindingPeaks_chr15fw,
                                            D2BindingPeaks_chr16fw,
                                            
                                            
                                            D2BindingPeaks_chr3rev,
                                            D2BindingPeaks_chr4rev,
                                            D2BindingPeaks_chr5rev,
                                           
                                            D2BindingPeaks_chr7rev,
                                            
                                            
                                            D2BindingPeaks_chr10rev,
                                            D2BindingPeaks_chr11rev,
                                            D2BindingPeaks_chr12rev,
                                            D2BindingPeaks_chr13rev,
                                            D2BindingPeaks_chr14rev,
                                            D2BindingPeaks_chr15rev,
                                            D2BindingPeaks_chr16rev
)

### write out the above in order to randomize the nucleotide binding locations. ###
write.table(D2BindingPeaks_Sen1normsurround_all, file = "Y1_3'endlocationsBeforeAverage_HACA.txt", sep = "\t",row.names = F,col.names = F, quote=F)
###put into excel and make a column that generates a random number 1 through -50 and put it next to the values and load it back in, shown below###
D2BindingPeaks_Sen1normsurround_all<-read.delim("Yra1_Haca_rand_done2.txt",sep="\t",header = T, quote="\"", stringsAsFactors=F)
colnames(D2BindingPeaks_Sen1normsurround_all)<- c("UniqueID","Distance","pos","Dbp2rep_clip")



### make all NA into zeros ###
D2BindingPeaks_Sen1normsurround_all[is.na(D2BindingPeaks_Sen1normsurround_all)] <- 0


D2BindingPeaks_Sen1normsurround_all$Distance <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Distance)
D2BindingPeaks_Sen1normsurround_all$pos <- as.numeric(D2BindingPeaks_Sen1normsurround_all$pos)
D2BindingPeaks_Sen1normsurround_all$Dbp2rep_clip <- as.numeric(D2BindingPeaks_Sen1normsurround_all$Dbp2rep_clip)

m<-tapply(D2BindingPeaks_Sen1normsurround_all$Dbp2_FR,list(D2BindingPeaks_Sen1normsurround_all$Distance), mean,na.rm=T)
View(m)
